/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions. */

#include "SuiManager.h"

#include "server/zone/ZoneProcessServer.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/player/sui/SuiWindowType.h"
#include "server/zone/objects/player/sui/banktransferbox/SuiBankTransferBox.h"
#include "server/zone/objects/player/sui/characterbuilderbox/SuiCharacterBuilderBox.h"
#include "server/zone/objects/player/sui/transferbox/SuiTransferBox.h"
#include "server/zone/objects/creature/commands/UnconsentCommand.h"
#include "server/zone/managers/skill/SkillManager.h"
#include "server/zone/objects/player/sui/listbox/SuiListBox.h"
#include "server/zone/objects/player/sui/inputbox/SuiInputBox.h"
#include "server/zone/objects/player/sui/messagebox/SuiMessageBox.h"
#include "server/zone/ZoneServer.h"
#include "server/zone/managers/minigames/FishingManager.h"
#include "server/zone/objects/player/sui/keypadbox/SuiKeypadBox.h"
#include "server/zone/objects/player/sui/callbacks/LuaSuiCallback.h"
#include "server/zone/objects/tangible/terminal/characterbuilder/CharacterBuilderTerminal.h"
#include "templates/params/creature/CreatureAttribute.h"
#include "templates/params/creature/CreatureState.h"
#include "server/zone/objects/tangible/deed/eventperk/EventPerkDeed.h"
#include "server/zone/objects/tangible/eventperk/Jukebox.h"
#include "server/zone/objects/tangible/eventperk/ShuttleBeacon.h"
#include "server/zone/objects/player/sui/SuiBoxPage.h"
#include "server/zone/managers/loot/LootManager.h"

SuiManager::SuiManager() : Logger("SuiManager") {
	server = NULL;
	setGlobalLogging(true);
	setLogging(false);
}

void SuiManager::handleSuiEventNotification(uint32 boxID, CreatureObject* player, uint32 eventIndex, Vector<UnicodeString>* args) {
	uint16 windowType = (uint16) boxID;

	Locker _lock(player);

	ManagedReference<PlayerObject*> ghost = player->getPlayerObject();

	if (ghost == NULL)
		return;

	ManagedReference<SuiBox*> suiBox = ghost->getSuiBox(boxID);


	if (suiBox == NULL)
		return;

	//Remove the box from the player, callback can readd it to the player if needed.
	ghost->removeSuiBox(boxID);
	suiBox->clearOptions(); //TODO: Eventually SuiBox needs to be cleaned up to not need this.

	Reference<SuiCallback*> callback = suiBox->getCallback();

	if (callback != NULL) {
		Reference<LuaSuiCallback*> luaCallback = cast<LuaSuiCallback*>(callback.get());

		if (luaCallback != NULL && suiBox->isSuiBoxPage()) {
			Reference<SuiBoxPage*> boxPage = cast<SuiBoxPage*>(suiBox.get());

			if (boxPage != NULL) {
				Reference<SuiPageData*> pageData = boxPage->getSuiPageData();

				if (pageData != NULL) {
					try {
						Reference<SuiCommand*> suiCommand = pageData->getCommand(eventIndex);

						if (suiCommand != NULL && suiCommand->getCommandType() == SuiCommand::SCT_subscribeToEvent) {
							StringTokenizer callbackString(suiCommand->getNarrowParameter(2));
							callbackString.setDelimeter(":");

							String luaPlay = "";
							String luaCall = "";

							callbackString.getStringToken(luaPlay);
							callbackString.getStringToken(luaCall);

							callback = new LuaSuiCallback(player->getZoneServer(), luaPlay, luaCall);
						}
					} catch(Exception& e) {
						error(e.getMessage());
					}
				}
			}
		}
		callback->run(player, suiBox, eventIndex, args);
		return;
	}

	StringBuffer msg;
	msg << "Unknown message callback with SuiWindowType: " << hex << windowType << ". Falling back on old handler system.";
	//info(msg, true);

	switch (windowType) {
	case SuiWindowType::MEDIC_CONSENT:
		handleConsentBox(player, suiBox, eventIndex, args);
		break;
	case SuiWindowType::DANCING_START:
		handleStartDancing(player, suiBox, eventIndex, args);
		break;
	case SuiWindowType::DANCING_CHANGE:
		handleStartDancing(player, suiBox, eventIndex, args);
		break;
	case SuiWindowType::MUSIC_START:
		handleStartMusic(player, suiBox, eventIndex, args);
		break;
	case SuiWindowType::MUSIC_CHANGE:
		handleStartMusic(player, suiBox, eventIndex, args);
		break;
	case SuiWindowType::BAND_START:
		handleStartMusic(player, suiBox, eventIndex, args);
		break;
	case SuiWindowType::BAND_CHANGE:
		handleStartMusic(player, suiBox, eventIndex, args);
		break;
	case SuiWindowType::BANK_TRANSFER:
		handleBankTransfer(player, suiBox, eventIndex, args);
		break;
	case SuiWindowType::FISHING:
		handleFishingAction(player, suiBox, eventIndex, args);
		break;
	case SuiWindowType::CHARACTER_BUILDER_LIST:
		handleCharacterBuilderSelectItem(player, suiBox, eventIndex, args);
		break;
	case SuiWindowType::OBJECT_NAME:
		handleSetObjectName(player, suiBox, eventIndex, args);
		break;
	}
}

void SuiManager::handleSetObjectName(CreatureObject* player, SuiBox* suiBox, uint32 cancel, Vector<UnicodeString>* args) {
	if (!suiBox->isInputBox() || cancel != 0)
		return;

	ManagedReference<SceneObject*> object = suiBox->getUsingObject();

	if (object == NULL)
		return;

	if (args->size() < 1)
		return;

	UnicodeString objectName = args->get(0);

	object->setCustomObjectName(objectName, true);

	if (object->isSignObject()) {
		StringIdChatParameter params("@player_structure:prose_sign_name_updated"); //Sign name successfully updated to '%TO'.
		params.setTO(objectName);

		player->sendSystemMessage(params);
	}
}

void SuiManager::handleStartDancing(CreatureObject* player, SuiBox* suiBox, uint32 cancel, Vector<UnicodeString>* args) {
	if (!suiBox->isListBox() || cancel != 0)
		return;

	if (args->size() < 2)
		return;

	int index = Integer::valueOf(args->get(0).toString());

	uint32 id = suiBox->getBoxID();

	bool change = (uint16)id == SuiWindowType::DANCING_CHANGE;


	SuiListBox* listBox = cast<SuiListBox*>( suiBox);

	if (index == -1)
		return;

	String dance = listBox->getMenuItemName(index);

	if (!change)
		player->executeObjectControllerAction(STRING_HASHCODE("startdance"), 0, dance);
	else
		player->executeObjectControllerAction(STRING_HASHCODE("changedance"), 0, dance);
}

void SuiManager::handleStartMusic(CreatureObject* player, SuiBox* suiBox, uint32 cancel, Vector<UnicodeString>* args) {
	if (!suiBox->isListBox() || cancel != 0)
		return;

	if (args->size() < 2)
		return;

	int index = Integer::valueOf(args->get(0).toString());

	uint32 id = suiBox->getBoxID();

	SuiListBox* listBox = cast<SuiListBox*>( suiBox);

	if (index == -1)
		return;

	String dance = listBox->getMenuItemName(index);

	switch ((uint16)id) {
	case SuiWindowType::MUSIC_START:
		player->executeObjectControllerAction(STRING_HASHCODE("startmusic"), player->getTargetID(), dance);
		break;
	case SuiWindowType::MUSIC_CHANGE:
		player->executeObjectControllerAction(STRING_HASHCODE("changemusic"), player->getTargetID(), dance);
		break;
	case SuiWindowType::BAND_CHANGE:
		player->executeObjectControllerAction(STRING_HASHCODE("changebandmusic"), player->getTargetID(), dance);
		break;
	case SuiWindowType::BAND_START:
		player->executeObjectControllerAction(STRING_HASHCODE("startband"), player->getTargetID(), dance);
		break;
	}
}

void SuiManager::handleBankTransfer(CreatureObject* player, SuiBox* suiBox, uint32 cancel, Vector<UnicodeString>* args) {
	if (!suiBox->isBankTransferBox() || cancel != 0)
		return;

	if (args->size() < 2)
		return;

	int cash = Integer::valueOf(args->get(0).toString());
	int bank = Integer::valueOf(args->get(1).toString());

	SuiBankTransferBox* suiBank = cast<SuiBankTransferBox*>( suiBox);

	ManagedReference<SceneObject*> bankObject = suiBank->getBank();

	if (bankObject == NULL)
		return;

	if (!player->isInRange(bankObject, 5))
		return;

	uint32 currentCash = player->getCashCredits();
	uint32 currentBank = player->getBankCredits();

	if ((currentCash + currentBank) == ((uint32) cash + (uint32) bank)) {
		player->setCashCredits(cash);
		player->setBankCredits(bank);
	}

}

void SuiManager::handleFishingAction(CreatureObject* player, SuiBox* suiBox, uint32 cancel, Vector<UnicodeString>* args) {
	if (cancel != 0)
		return;

	if (args->size() < 1)
		return;

	int index = Integer::valueOf(args->get(0).toString());

	FishingManager* manager = server->getFishingManager();

	manager->setNextAction(player, index + 1);

	uint32 newBoxID = 0;

	switch (index + 1) {
	case FishingManager::TUGUP:
		newBoxID = manager->createWindow(player, suiBox->getBoxID());
		break;
	case FishingManager::TUGRIGHT:
		newBoxID = manager->createWindow(player, suiBox->getBoxID());
		break;
	case FishingManager::TUGLEFT:
		newBoxID = manager->createWindow(player, suiBox->getBoxID());
		break;
	case FishingManager::REEL:
		newBoxID = manager->createWindow(player, suiBox->getBoxID());
		break;
	case FishingManager::STOPFISHING:
		player->sendSystemMessage("@fishing:stop_fishing"); //You reel-in your line and stop fishing...
		manager->stopFishing(player, suiBox->getBoxID(), true);
		return;
		break;
	default:
		newBoxID = manager->createWindow(player, suiBox->getBoxID());
		break;
	}

	manager->setFishBoxID(player, suiBox->getBoxID());
}

void SuiManager::handleCharacterBuilderSelectItem(CreatureObject* player, SuiBox* suiBox, uint32 cancel, Vector<UnicodeString>* args) {
	ZoneServer* zserv = player->getZoneServer();

	if (args->size() < 1)
		return;

	bool otherPressed = false;
	int index = 0;

	if(args->size() > 1) {
		otherPressed = Bool::valueOf(args->get(0).toString());
		index = Integer::valueOf(args->get(1).toString());
	} else {
		index = Integer::valueOf(args->get(0).toString());
	}

	if (!suiBox->isCharacterBuilderBox())
		return;

	ManagedReference<SuiCharacterBuilderBox*> cbSui = cast<SuiCharacterBuilderBox*>( suiBox);

	CharacterBuilderMenuNode* currentNode = cbSui->getCurrentNode();

	PlayerObject* ghost = player->getPlayerObject();

	//If cancel was pressed then we kill the box/menu.
	if (cancel != 0 || ghost == NULL)
		return;

	//Back was pressed. Send the node above it.
	if (otherPressed) {
		CharacterBuilderMenuNode* parentNode = currentNode->getParentNode();

		if(parentNode == NULL)
			return;

		cbSui->setCurrentNode(parentNode);

		ghost->addSuiBox(cbSui);
		player->sendMessage(cbSui->generateMessage());
		return;
	}

	CharacterBuilderMenuNode* node = currentNode->getChildNodeAt(index);

	//Node doesn't exist or the index was out of bounds. Should probably resend the menu here.
	if (node == NULL) {
		ghost->addSuiBox(cbSui);
		player->sendMessage(cbSui->generateMessage());
		return;
	}

	if (node->hasChildNodes()) {
		//If it has child nodes, display them.
		cbSui->setCurrentNode(node);
		ghost->addSuiBox(cbSui);
		player->sendMessage(cbSui->generateMessage());
	} else {
		ManagedReference<SceneObject*> scob = cbSui->getUsingObject();

		if (scob == NULL)
			return;

		CharacterBuilderTerminal* bluefrog = scob.castTo<CharacterBuilderTerminal*>();

		if (bluefrog == NULL)
			return;

		String templatePath = node->getTemplatePath();
		
		int galaxyid = zserv->getGalaxyID();

		if (templatePath.indexOf(".iff") < 0) { // Non-item selections

			if (templatePath == "unlearn_all_skills") {

				SkillManager::instance()->surrenderAllSkills(player);
				player->sendSystemMessage("All skills unlearned.");

			} else if (templatePath == "cleanse_character") {
				if (!player->isInCombat()) {
					player->sendSystemMessage("You have been cleansed from the signs of previous battles.");

					for (int i = 0; i < 9; ++i) {
						player->setWounds(i, 0);
					}

					player->setShockWounds(0);
				} else {
					player->sendSystemMessage("Not within combat.");
				}

			} else if (templatePath == "reset_buffs") {
				if (!player->isInCombat()) {
					player->sendSystemMessage("Your buffs have been reset.");

					player->clearBuffs(true);

					ghost->setFoodFilling(0);
					ghost->setDrinkFilling(0);
				} else {
					player->sendSystemMessage("Not within combat.");
				}

			} else if (templatePath.beginsWith("crafting_apron_")) {
				//"object/tangible/wearables/apron/apron_chef_s01.iff"
				//"object/tangible/wearables/ithorian/apron_chef_jacket_s01_ith.iff"

				ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
				if (inventory == NULL) {
					return;
				}

				uint32 itemCrc = ( player->getSpecies() != CreatureObject::ITHORIAN ) ? 0x5DDC4E5D : 0x6C191FBB;

				ManagedReference<WearableObject*> apron = zserv->createObject(itemCrc, 2).castTo<WearableObject*>();

				if (apron == NULL) {
					player->sendSystemMessage("There was an error creating the requested item. Please report this issue.");
					ghost->addSuiBox(cbSui);
					player->sendMessage(cbSui->generateMessage());

					error("could not create frog crafting apron");
					return;
				}

				Locker locker(apron);

				apron->createChildObjects();

				if (apron->isWearableObject()) {
					apron->addMagicBit(false);

					UnicodeString modName = "(General)";
					apron->addSkillMod(SkillModManager::WEARABLE, "general_assembly", 25);
					apron->addSkillMod(SkillModManager::WEARABLE, "general_experimentation", 25);

					if(templatePath == "crafting_apron_armorsmith") {
						modName = "(Armorsmith)";
						apron->addSkillMod(SkillModManager::WEARABLE, "armor_assembly", 25);
						apron->addSkillMod(SkillModManager::WEARABLE, "armor_experimentation", 25);
						apron->addSkillMod(SkillModManager::WEARABLE, "armor_repair", 25);
					} else if(templatePath == "crafting_apron_weaponsmith") {
						modName = "(Weaponsmith)";
						apron->addSkillMod(SkillModManager::WEARABLE, "weapon_assembly", 25);
						apron->addSkillMod(SkillModManager::WEARABLE, "weapon_experimentation", 25);
						apron->addSkillMod(SkillModManager::WEARABLE, "weapon_repair", 25);
						apron->addSkillMod(SkillModManager::WEARABLE, "grenade_assembly", 25);
						apron->addSkillMod(SkillModManager::WEARABLE, "grenade_experimentation", 25);
					} else if(templatePath == "crafting_apron_tailor") {
						modName = "(Tailor)";
						apron->addSkillMod(SkillModManager::WEARABLE, "clothing_assembly", 25);
						apron->addSkillMod(SkillModManager::WEARABLE, "clothing_experimentation", 25);
						apron->addSkillMod(SkillModManager::WEARABLE, "clothing_repair", 25);
					} else if(templatePath == "crafting_apron_chef") {
						modName = "(Chef)";
						apron->addSkillMod(SkillModManager::WEARABLE, "food_assembly", 25);
						apron->addSkillMod(SkillModManager::WEARABLE, "food_experimentation", 25);
					} else if(templatePath == "crafting_apron_architect") {
						modName = "(Architect)";
						apron->addSkillMod(SkillModManager::WEARABLE, "structure_assembly", 25);
						apron->addSkillMod(SkillModManager::WEARABLE, "structure_experimentation", 25);
						apron->addSkillMod(SkillModManager::WEARABLE, "structure_complexity", 25);
					} else if(templatePath == "crafting_apron_droid_engineer") {
						modName = "(Droid Engineer)";
						apron->addSkillMod(SkillModManager::WEARABLE, "droid_assembly", 25);
						apron->addSkillMod(SkillModManager::WEARABLE, "droid_experimentation", 25);
						apron->addSkillMod(SkillModManager::WEARABLE, "droid_complexity", 25);
					} else if(templatePath == "crafting_apron_doctor") {
						modName = "(Doctor)";
						apron->addSkillMod(SkillModManager::WEARABLE, "medicine_assembly", 25);
						apron->addSkillMod(SkillModManager::WEARABLE, "medicine_experimentation", 25);
					} else if(templatePath == "crafting_apron_combat_medic") {
						modName = "(Combat Medic)";
						apron->addSkillMod(SkillModManager::WEARABLE, "combat_medicine_assembly", 25);
						apron->addSkillMod(SkillModManager::WEARABLE, "combat_medicine_experimentation", 25);
					}

					UnicodeString apronName = "Crafting Apron " + modName;
					apron->setCustomObjectName(apronName, false);
				}

				if (inventory->transferObject(apron, -1, true)) {
					apron->sendTo(player, true);
				} else {
					apron->destroyObjectFromDatabase(true);
					return;
				}

				StringIdChatParameter stringId;
				stringId.setStringId("@faction_perk:bonus_base_name"); //You received a: %TO.
				stringId.setTO(apron->getObjectID());
				player->sendSystemMessage(stringId);

			} else if (templatePath == "enhance_character") {
				bluefrog->enhanceCharacter(player);

			} else if (templatePath == "credits") {
				player->addCashCredits(50000, true);
				player->sendSystemMessage("You have received 50.000 Credits");

			} else if (templatePath == "faction_rebel") {
				ghost->increaseFactionStanding("rebel", 100000);

			} else if (templatePath == "faction_imperial") {
				ghost->increaseFactionStanding("imperial", 100000);

			} else if (templatePath == "language") {
				bluefrog->giveLanguages(player);

			} else if (templatePath == "apply_dots") {
				player->addDotState(player, CreatureState::POISONED, scob->getObjectID(), 100, CreatureAttribute::UNKNOWN, 60, -1, 0);
				player->addDotState(player, CreatureState::BLEEDING, scob->getObjectID(), 100, CreatureAttribute::UNKNOWN, 60, -1, 0);
				player->addDotState(player, CreatureState::DISEASED, scob->getObjectID(), 100, CreatureAttribute::UNKNOWN, 60, -1, 0);
				player->addDotState(player, CreatureState::ONFIRE, scob->getObjectID(), 100, CreatureAttribute::UNKNOWN, 60, -1, 0, 20);

			} else if (templatePath == "apply_poison_dot") {
				player->addDotState(player, CreatureState::POISONED, scob->getObjectID(), 100, CreatureAttribute::UNKNOWN, 60, -1, 0);

			} else if (templatePath == "apply_bleed_dot") {
				player->addDotState(player, CreatureState::BLEEDING, scob->getObjectID(), 100, CreatureAttribute::UNKNOWN, 60, -1, 0);

			} else if (templatePath == "apply_disease_dot") {
				player->addDotState(player, CreatureState::DISEASED, scob->getObjectID(), 100, CreatureAttribute::UNKNOWN, 60, -1, 0);

			} else if (templatePath == "apply_fire_dot") {
				player->addDotState(player, CreatureState::ONFIRE, scob->getObjectID(), 100, CreatureAttribute::UNKNOWN, 60, -1, 0, 20);

			} else if (templatePath == "clear_dots") {
				player->clearDots();

			} else if (templatePath == "max_xp") {
				ghost->maximizeExperience();
				player->sendSystemMessage("You have maximized all xp types.");
				
			} else if (templatePath == "saberhand1") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "saberhand1", playerName, 300);//, playerName);

			} else if (templatePath == "saberhand2") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "saberhand2", playerName, 300);//, playerName);

			} else if (templatePath == "saberhand3") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "saberhand3", playerName, 300);//, playerName);

			} else if (templatePath == "saberhand4") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "saberhand4", playerName, 300);//, playerName);

			} else if (templatePath == "saberhand5") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "saberhand5", playerName, 300);//, playerName);

			} else if (templatePath == "saberhand6") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "saberhand6", playerName, 300);//, playerName);

			} else if (templatePath == "saberhand7") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "saberhand7", playerName, 300);//, playerName);

			} else if (templatePath == "saberhand8") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "saberhand8", playerName, 300);//, playerName);

			} else if (templatePath == "saberhand9") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "saberhand9", playerName, 300);//, playerName);

			} else if (templatePath == "saberhand10") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "saberhand10", playerName, 300);//, playerName);

			} else if (templatePath == "saberhand11") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "saberhand11", playerName, 300);//, playerName);

			} else if (templatePath == "saberhand12") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "saberhand12", playerName, 300);//, playerName);

			} else if (templatePath == "saberhand13") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "saberhand13", playerName, 300);//, playerName);

			} else if (templatePath == "saberhand14") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "saberhand14", playerName, 300);//, playerName);

			} else if (templatePath == "saberhand15") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "saberhand15", playerName, 300);//, playerName);

			} else if (templatePath == "saberhand16") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "saberhand16", playerName, 300);//, playerName);

			} else if (templatePath == "saberhand17") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "saberhand17", playerName, 300);//, playerName);

			} else if (templatePath == "saberhand18") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "saberhand18", playerName, 300);//, playerName);

			} else if (templatePath == "saberhand19") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "saberhand19", playerName, 300);//, playerName);

			} else if (templatePath == "saberhand20") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "saberhand20", playerName, 300);//, playerName);

			} else if (templatePath == "saberhand21") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "saberhand21", playerName, 300);//, playerName);

			} else if (templatePath == "saberhand22") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "saberhand22", playerName, 300);//, playerName);

			} else if (templatePath == "saberhand23") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "saberhand23", playerName, 300);//, playerName);

			} else if (templatePath == "saberhand24") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "saberhand24", playerName, 300);//, playerName);
				
			} else if (templatePath == "armor_attachments") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "armor_attachments", playerName, 300);//, playerName);
				
			} else if (templatePath == "clothing_attachments") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "clothing_attachments", playerName, 300);//, playerName);
				
			} else if (templatePath == "jedi_rings") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "jedi_rings", playerName, 300);//, playerName);
				
			} else if (templatePath == "jedi_neck") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "jedi_neck", playerName, 300);//, playerName);
				
			} else if (templatePath == "jedi_earings") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "jedi_earings", playerName, 300);//, playerName);
				
			} else if (templatePath == "jedi_bracelets") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "jedi_bracelets", playerName, 300);//, playerName);

			} else if (templatePath == "color_crystals") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "color_crystals", playerName, 300);//, playerName);

			} else if (templatePath == "g_named_crystals") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "g_named_crystals", playerName, 300);//, playerName);
				
			} else if (templatePath == "pearls_flawless") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "pearls_flawless", playerName, 300);//, playerName);

			} else if (templatePath == "nightsister_rare") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "nightsister_rare", playerName, 300);//, playerName);

			} else if (templatePath == "krayt_tissue_rare") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "krayt_tissue_rare", playerName, 300);//, playerName);

			} else if (templatePath == "gorax_rare") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "gorax_rare", playerName, 300);//, playerName);
				
			} else if (templatePath == "armor_attachments") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "armor_attachments", playerName, 300);//, playerName);
				
			} else if (templatePath == "clothing_attachments") {
                                String playerName = player->getFirstName();
	                        ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
	                        ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
				lootManager->createNamedLoot(inventory, "clothing_attachments", playerName, 300);//, playerName);
				
			} else if (templatePath == "set_jedi_state") {
				ghost->setJediState(2);

			} else if (templatePath == "corellia_bela_vistal_a_shuttleport_travel") {
				if (player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Bela Vistal Shuttleport A");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", 6648, 330, -5926);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "corellia_bela_vistal_b_shuttleport_travel") {
				if (player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Bela Vistal Shuttleport B");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", 6929, 330, -5529);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "corellia_coronet_starport_travel") {
				if (player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Coronet Starport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", -67, 28, -4714);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "corellia_coronet_a_shuttle_travel") {
				if (player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Coronet Shuttle A");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", -67, 28, -4714);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "corellia_coronet_b_shuttle_travel") {
				if (player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Coronet Shuttle B");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", -67, 28, -4714);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "doaba_guerfel_shuttleport_travel") {
				if (player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Doaba Guerfel Shuttleport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", -67, 28, -4714);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "doaba_guerfel_starport_travel") {
				if (player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Doaba Guerfel Starport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", -67, 28, -4714);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "kor_vella_shuttleport_travel") {
				if (player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Kor Vella Shuttleport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", -67, 28, -4714);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "kor_vella_starport_travel") {
				if (player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Kor Vella Stareport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", -67, 28, -4714);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "tyrena_a_shuttle_travel") {
				if (player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Tyrena Shuttle A");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", -67, 28, -4714);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "tyrena_b_shuttle_travel") {
				if (player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Tyrena Shuttle B");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", -67, 28, -4714);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "tyrena_starport_travel") {
				if (player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Tyrena Starport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", -67, 28, -4714);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "vreni_island_shuttle_travel") {
				if (player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Vreni Island Shuttle");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", -67, 28, -4714);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "argilat_swamp_badge") {
				if (player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("POI Argilat Swamp Badge");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", 1387, 30, 3749);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "bela_vistal_fountain_badge") {
				if (player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("POI Bela Vistal Fountain Badge");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", 6767, 30, -5617);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "rebel_hideout_badge") {
				if (player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("POI Rebel Hideout");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", -6530, 30, 5967);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "rogue_corsec_base_badge") {
				if (player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("POI Rogue Corsec Base Badge");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", 5291, 30, 1494);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "tyrena_theater_badge") {
				if (player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("POI Tyrena Theater Badge");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", -5418, 30, -6248);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "dantooine_agro_outpost_starport_travel") {
				if (player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Dantooine Agro Outpost Stareport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("dantooine", 0, 0, 0);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "dantooine_imperial_outpost_starport_travel") {
				if (player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Dantooine Imperial Outpost Stareport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("dantooine", 0, 0, 0);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "dantooine_mining_outpost_startport_travel") {
				if (player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Dantooine Mining Outpost Stareport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("dantooine", 0, 0, 0);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "dathomir_trade_outpost_starport_travel") {
				if (player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Dathomir Trade Outpost Stareport ");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("dathomir", 0, 0, 0);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "dathomir_science_outpost_starport_travel") {
				if (player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Dathomir Science Outpost Stareport ");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("dathomir", 0, 0, 0);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "dathomir_village_shuttleport_travel") {
				if (player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Dathomir Village Shuttleport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("dathomir", 0, 0, 0);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "nyms_stronghold_starport_travel") {
				if (player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Nym's Stronghold Stareport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("lok", 0, 0, 0);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "scavenger_starport_travel") {
				if (player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Scavenger Stareport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("hoth", 0, 0, 0);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "become_glowy") {
				bluefrog->grantGlowyBadges(player);

			} else {
				if (templatePath.length() > 0) {
					SkillManager::instance()->awardSkill(templatePath, player, true, true, true);

					if (player->hasSkill(templatePath))
						player->sendSystemMessage("You have learned a skill.");

				} else {
					player->sendSystemMessage("Unknown selection.");
				}
			}

			ghost->addSuiBox(cbSui);
			player->sendMessage(cbSui->generateMessage());

		} else { // Items
			ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");

			if (inventory == NULL) {
				return;
			}

			if (templatePath.contains("event_perk")) {
				if (!ghost->hasGodMode() && ghost->getEventPerkCount() >= 5) {
					player->sendSystemMessage("@event_perk:pro_too_many_perks"); // You cannot rent any more items right now.
					ghost->addSuiBox(cbSui);
					player->sendMessage(cbSui->generateMessage());
					return;
				}
			}

			ManagedReference<SceneObject*> item = zserv->createObject(node->getTemplateCRC(), 1);

			if (item == NULL) {
				player->sendSystemMessage("There was an error creating the requested item. Please report this issue.");
				ghost->addSuiBox(cbSui);
				player->sendMessage(cbSui->generateMessage());

				error("could not create frog item: " + node->getDisplayName());
				return;
			}

			Locker locker(item);

			item->createChildObjects();

			if (item->isEventPerkDeed()) {
				EventPerkDeed* deed = item.castTo<EventPerkDeed*>();
				deed->setOwner(player);
				ghost->addEventPerk(deed);
			}

			if (item->isEventPerkItem()) {
				if (item->getServerObjectCRC() == 0x46BD798B) { // Jukebox
					Jukebox* jbox = item.castTo<Jukebox*>();

					if (jbox != NULL)
						jbox->setOwner(player);
				} else if (item->getServerObjectCRC() == 0x255F612C) { // Shuttle Beacon
					ShuttleBeacon* beacon = item.castTo<ShuttleBeacon*>();

					if (beacon != NULL)
						beacon->setOwner(player);
				}
				ghost->addEventPerk(item);
			}

			if (inventory->transferObject(item, -1, true)) {
				item->sendTo(player, true);

				StringIdChatParameter stringId;
				stringId.setStringId("@faction_perk:bonus_base_name"); //You received a: %TO.
				stringId.setTO(item->getObjectID());
				player->sendSystemMessage(stringId);

			} else {
				item->destroyObjectFromDatabase(true);
				player->sendSystemMessage("Error putting item in inventory.");
				return;
			}

			ghost->addSuiBox(cbSui);
			player->sendMessage(cbSui->generateMessage());
		}
	}
}

void SuiManager::handleConsentBox(CreatureObject* player, SuiBox* suiBox, uint32 cancel, Vector<UnicodeString>* args) {
	if (!suiBox->isListBox() || cancel != 0)
		return;

	if (args->size() < 1)
		return;

	int index = Integer::valueOf(args->get(0).toString());

	if (index == -1)
		return;

	SuiListBox* suiList = cast<SuiListBox*>(suiBox);

	String name = suiList->getMenuItemName(index);
	UnconsentCommand::unconscent(player, name);
}

void SuiManager::sendKeypadSui(SceneObject* keypad, SceneObject* creatureSceneObject, const String& play, const String& callback) {

	if (keypad == NULL)
		return;

	if (creatureSceneObject == NULL || !creatureSceneObject->isCreatureObject())
		return;

	CreatureObject* creature = cast<CreatureObject*>(creatureSceneObject);

	PlayerObject* playerObject = creature->getPlayerObject();

	if (playerObject != NULL) {
		ManagedReference<SuiKeypadBox*> keypadSui = new SuiKeypadBox(creature, 0x00);
		keypadSui->setCallback(new LuaSuiCallback(creature->getZoneServer(), play, callback));
		keypadSui->setUsingObject(keypad);
		keypadSui->setForceCloseDisabled();
		creature->sendMessage(keypadSui->generateMessage());
		playerObject->addSuiBox(keypadSui);
	}

}

void SuiManager::sendConfirmSui(SceneObject* terminal, SceneObject* player, const String& play, const String& callback, const String& prompt, const String& button) {

	if (terminal == NULL)
		return;

	if (player == NULL || !player->isCreatureObject())
		return;

	CreatureObject* creature = cast<CreatureObject*>(player);

	PlayerObject* playerObject = creature->getPlayerObject();

	if (playerObject != NULL) {
		ManagedReference<SuiMessageBox*> confirmSui = new SuiMessageBox(creature, 0x00);
		confirmSui->setCallback(new LuaSuiCallback(creature->getZoneServer(), play, callback));
		confirmSui->setUsingObject(terminal);
		confirmSui->setPromptText(prompt);
		confirmSui->setOkButton(true, button);
		confirmSui->setOtherButton(false, "");
		confirmSui->setCancelButton(false, "");
		confirmSui->setForceCloseDistance(32);
		creature->sendMessage(confirmSui->generateMessage());
		playerObject->addSuiBox(confirmSui);
	}

}

void SuiManager::sendInputBox(SceneObject* terminal, SceneObject* player, const String& play, const String& callback, const String& prompt, const String& button) {
	if (terminal == NULL)
		return;

	if (player == NULL || !player->isCreatureObject())
		return;

	CreatureObject* creature = cast<CreatureObject*>(player);

	PlayerObject* playerObject = creature->getPlayerObject();

	if (playerObject != NULL) {
		ManagedReference<SuiInputBox*> confirmSui = new SuiInputBox(creature, 0x00);
		confirmSui->setCallback(new LuaSuiCallback(creature->getZoneServer(), play, callback));
		confirmSui->setUsingObject(terminal);
		confirmSui->setPromptText(prompt);
		confirmSui->setOkButton(true, button);
		confirmSui->setOtherButton(false, "");
		confirmSui->setCancelButton(false, "");
		confirmSui->setForceCloseDistance(32);
		creature->sendMessage(confirmSui->generateMessage());
		playerObject->addSuiBox(confirmSui);
	}

}

void SuiManager::sendMessageBox(SceneObject* usingObject, SceneObject* player, const String& title, const String& text, const String& okButton, const String& screenplay, const String& callback, unsigned int windowType ) {
	if (usingObject == NULL)
		return;

	if (player == NULL || !player->isCreatureObject())
		return;

	CreatureObject* creature = cast<CreatureObject*>(player);

	PlayerObject* playerObject = creature->getPlayerObject();

	if (playerObject != NULL) {
		ManagedReference<SuiMessageBox*> messageBox = new SuiMessageBox(creature, windowType);
		messageBox->setCallback(new LuaSuiCallback(creature->getZoneServer(), screenplay, callback));
		messageBox->setPromptTitle(title);
		messageBox->setPromptText(text);
		messageBox->setUsingObject(usingObject);
		messageBox->setOkButton(true, okButton);
		messageBox->setCancelButton(true, "@cancel");
		messageBox->setForceCloseDistance(32.f);

		creature->sendMessage(messageBox->generateMessage());
		playerObject->addSuiBox(messageBox);
	}
}

void SuiManager::sendListBox(SceneObject* usingObject, SceneObject* player, const String& title, const String& text, const uint8& numOfButtons, const String& cancelButton, const String& otherButton, const String& okButton, LuaObject& options, const String& screenplay, const String& callback, const float& forceCloseDist) {
	if (usingObject == NULL)
		return;

	if (player == NULL || !player->isCreatureObject())
		return;

	CreatureObject* creature = cast<CreatureObject*>(player);

	PlayerObject* playerObject = creature->getPlayerObject();

	if (playerObject != NULL) {

		ManagedReference<SuiListBox*> box = NULL;

		switch (numOfButtons) {
		case 1:
			box = new SuiListBox(creature, 0x00, SuiListBox::HANDLESINGLEBUTTON);
			box->setCancelButton(false, "");
			box->setOtherButton(false, "");
			box->setOkButton(true, okButton);
			break;
		case 2:
			box = new SuiListBox(creature, 0x00, SuiListBox::HANDLETWOBUTTON);
			box->setCancelButton(true, cancelButton);
			box->setOtherButton(false, "");
			box->setOkButton(true, okButton);
			break;
		case 3:
			box = new SuiListBox(creature, 0x00, SuiListBox::HANDLETHREEBUTTON);
			box->setCancelButton(true, cancelButton);
			box->setOtherButton(true, otherButton);
			box->setOkButton(true, okButton);
			break;
		default:
			return;
			break;
		}

		if (options.isValidTable()) {
			for (int i = 1; i <= options.getTableSize(); ++i) {
				LuaObject table = options.getObjectAt(i);
				box->addMenuItem(table.getStringAt(1), table.getLongAt(2));
				table.pop();
			}

			options.pop();
		}

		box->setCallback(new LuaSuiCallback(creature->getZoneServer(), screenplay, callback));
		box->setPromptTitle(title);
		box->setPromptText(text);
		box->setUsingObject(usingObject);
		box->setForceCloseDistance(forceCloseDist);

		creature->sendMessage(box->generateMessage());
		playerObject->addSuiBox(box);
	}
}

void SuiManager::sendTransferBox(SceneObject* usingObject, SceneObject* player, const String& title, const String& text, LuaObject& optionsAddFrom, LuaObject& optionsAddTo, const String& screenplay, const String& callback) {
	if (usingObject == NULL)
		return;

	if (player == NULL || !player->isCreatureObject())
		return;

	CreatureObject* creature = cast<CreatureObject*>(player);

	PlayerObject* playerObject = creature->getPlayerObject();

	if (playerObject != NULL) {

		ManagedReference<SuiTransferBox*> box = NULL;

		box = new SuiTransferBox(creature, 0x00);

		if(optionsAddFrom.isValidTable()){
			String optionAddFromTextString = optionsAddFrom.getStringAt(1);
			String optionAddFromStartingString = optionsAddFrom.getStringAt(2);
			String optionAddFromRatioString = optionsAddFrom.getStringAt(3);
			box->addFrom(optionAddFromTextString,
					optionAddFromStartingString,
					optionAddFromStartingString, optionAddFromRatioString);
			optionsAddFrom.pop();
		}

		if(optionsAddTo.isValidTable()){
			String optionAddToTextString = optionsAddTo.getStringAt(1);
			String optionAddToStartingString = optionsAddTo.getStringAt(2);
			String optionAddToRatioString = optionsAddTo.getStringAt(3);
			box->addTo(optionAddToTextString,
					optionAddToStartingString,
					optionAddToStartingString, optionAddToRatioString);
			optionsAddTo.pop();
		}

		box->setCallback(new LuaSuiCallback(creature->getZoneServer(), screenplay, callback));
		box->setPromptTitle(title);
		box->setPromptText(text);
		box->setUsingObject(usingObject);
		box->setForceCloseDistance(32.f);

		creature->sendMessage(box->generateMessage());
		playerObject->addSuiBox(box);
	}
}

int32 SuiManager::sendSuiPage(CreatureObject* creature, SuiPageData* pageData, const String& play, const String& callback) {

	if (pageData == NULL)
		return 0;

	if (creature == NULL || !creature->isPlayerCreature())
		return 0;

	PlayerObject* playerObject = creature->getPlayerObject();

	if (playerObject != NULL) {
		ManagedReference<SuiBoxPage*> boxPage = new SuiBoxPage(creature, pageData, 0x00);
		boxPage->setCallback(new LuaSuiCallback(creature->getZoneServer(), play, callback));
		creature->sendMessage(boxPage->generateMessage());
		playerObject->addSuiBox(boxPage);

		return boxPage->getBoxID();
	}

	return 0;
}

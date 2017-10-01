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

	ManagedReference<SceneObject*> object = suiBox->getUsingObject().get();

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
		ManagedReference<SceneObject*> scob = cbSui->getUsingObject().get();

		if (scob == NULL)
			return;

		CharacterBuilderTerminal* bluefrog = scob.castTo<CharacterBuilderTerminal*>();

		if (bluefrog == NULL)
			return;

		String templatePath = node->getTemplatePath();

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
			} else if (templatePath == "fill_force_bar") {
				if (ghost->isJedi()) {
					if (!player->isInCombat()) {
						player->sendSystemMessage("You force bar has been filled.");

						ghost->setForcePower(ghost->getForcePowerMax(), true);
					} else {
						player->sendSystemMessage("Not within combat.");
					}
				}
			} else if (templatePath == "reset_buffs") {
				if (!player->isInCombat()) {
					player->sendSystemMessage("Your buffs have been reset.");

					player->clearBuffs(true, false);

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

			} else if (templatePath == "apply_all_dots") {
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

//GALACTIC TRAVEL SYSTEM City Politician Skill
			} else if (templatePath == "citypolitician") {
				if (!player->isInCombat() && player->getCashCredits() < 9999999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Master Politician");
		                box->setPromptText("Master Politician Requires 10,000,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 9999999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your credits.");
 				        SkillManager::instance()->awardSkill("social_politician_master", player, true, true, true);
 					player->subtractCashCredits(10000000);
					box->setForceCloseDistance(5.f);
			        }	
//GALACTIC TRAVEL SYSTEM
//Corellia Travel
			} else if (templatePath == "corellia_bela_vistal_a_shuttleport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Bela Vistal Shuttleport A");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", 6644.269, 330, -5922.5225);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "corellia_bela_vistal_b_shuttleport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Bela Vistal Shuttleport B");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", 6930.8042, 330, -5534.8936);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "corellia_coronet_starport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Coronet Starport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", -66.760902, 28, -4711.3281);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "corellia_coronet_a_shuttle_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Coronet Shuttle A");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", -25.671804, 28, -4409.7847);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "corellia_coronet_b_shuttle_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Coronet Shuttle B");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", -329.76605, 28, -4641.23);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "doaba_guerfel_shuttleport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Doaba Guerfel Shuttleport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", 3085.4963, 280, 4993.0098);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "doaba_guerfel_starport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Doaba Guerfel Starport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", 3349.8933, 308, 5598.1362);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "kor_vella_shuttleport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Kor Vella Shuttleport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", -3775.2546, 31, 3234.2202);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "kor_vella_starport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Kor Vella Stareport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", -3157.2834, 31, 2876.2029);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "tyrena_a_shuttle_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Tyrena Shuttle A");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", -5005.354, 21, -2386.9819);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "tyrena_b_shuttle_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Tyrena Shuttle B");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", -5600.6367, 21, -2790.7429);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "tyrena_starport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Tyrena Starport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", -5003.0649, 21, -2228.3665);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "vreni_island_shuttle_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Vreni Island Shuttle");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", -5551.9473, 15.890146, -6059.9673);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "argilat_swamp_badge") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("POI Argilat Swamp Badge");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", 1387, 30, 3749);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "bela_vistal_fountain_badge") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("POI Bela Vistal Fountain Badge");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", 6767, 30, -5617);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "rebel_hideout_badge") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("POI Rebel Hideout");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", -6530, 30, 5967);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "rogue_corsec_base_badge") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("POI Rogue Corsec Base Badge");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", 5291, 30, 1494);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "tyrena_theater_badge") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("POI Tyrena Theater Badge");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", -5418, 30, -6248);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
//Dantooine Travels
			} else if (templatePath == "dantooine_agro_outpost_starport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Dantooine Agro Outpost Stareport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("dantooine", 1569.66, 4, -6415.7598);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "dantooine_imperial_outpost_starport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Dantooine Imperial Outpost Stareport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("dantooine", -4208.6602, 3, -2350.24);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "dantooine_mining_outpost_startport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Dantooine Mining Outpost Stareport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("dantooine", -635.96887, 3, 2507.0115);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
//Dathomir Travels
			} else if (templatePath == "dathomir_trade_outpost_starport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Dathomir Trade Outpost Stareport ");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("dathomir", 618.89258, 6.039608, 3092.0142);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "dathomir_science_outpost_starport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Dathomir Science Outpost Stareport ");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("dathomir", -49.021923, 18, -1584.7278);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "dathomir_village_shuttleport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Dathomir Village Shuttleport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("dathomir", 5271.4, 0, -4119.53);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "PC_tosh_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Player City - Tosh");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("dathomir", 2283, 77, -4300);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
//Lok Travels
			} else if (templatePath == "nyms_stronghold_starport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Nym's Stronghold Stareport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("lok", 478.92676, 9, 5511.9565);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
//Hoth Travels
			} else if (templatePath == "scavenger_starport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Scavenger Stareport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("hoth", 0, 0, -2000);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
//Kaas Travels
			} else if (templatePath == "kaas_pvp_zone") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Kaas PvP Zone");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("kaas", -5109, 81, -2118);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
//Yavin IV Travels
			} else if (templatePath == "yavin_iv_imperial_outpost_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Yavin IV Imperial Outpost");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("yavin4", 4054.1, 37, -6216.9);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "yavin_iv_labor_outpost_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Yavin IV Labor Outpost");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("yavin4", -6921.6733, 73, -5726.5161);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
//Tatooine Travels
			} else if (templatePath == "anchorhead_shuttle_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Tatooine Anchorhead Shuttle");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("tatooine", 47.565128, 52, -5338.9072);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "bestine_shuttle_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Bestine Shuttle");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("tatooine", -1098.4836, 12, -3563.5342);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "bestine_starport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Bestine Starport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("tatooine", -1361.1917, 12, -3600.0254);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "mos_eisley_shuttleport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Mos Eisley Shuttleport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("tatooine", 3416.6914, 5, -4648.1411);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "mos_entha_shuttle_a_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Mos Entha Shuttle A");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("tatooine", 1730.8828, 7, 3184.6135);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "mos_entha_shuttle_b_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Mos Entha Shuttle B");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("tatooine", 1395.447, 7, 3467.0117);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "mos_entha_spaceport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Mos Entha Spaceport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("tatooine", 1266.0996, 7, 3065.1392);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "mos_espa_shuttleport_east_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Mos Espa Shuttle Port East");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("tatooine", -2803.511, 5, 2182.9648);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "mos_espa_shuttleport_south_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Mos Espa Shuttle Port South");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("tatooine", -2897.0933, 5, 1933.4144);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "mos_espa_shuttleport_west_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Mos Espa Shuttle Port West");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("tatooine", -3112.1296, 5, 2176.9607);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "mos_espa_starport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Mos Espa Starport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("tatooine", -2833.1609, 5, 2107.3787);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "pc_decatur_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Player City - Decatur");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("tatooine", 6035, 45, 4413);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
//Talus Travels
			} else if (templatePath == "talus_dearic_shuttleport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Talus Dearic Shuttleport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("talus", 699.297, 6, -3041.4199);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "talus_dearic_starport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Talus Dearic Starport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("talus", 263.58401, 6, -2952.1284);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "talus_nashal_shuttleport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Talus Nashal Shuttleport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("talus", 4334.5786, 9.8999996, 5431.0415);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "talus_imperial_outpost_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Talus Imprial Outpost");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("talus", -2226, 20, 2319);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
//Naboo Travels
			} else if (templatePath == "deeja_peak_shuttleport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Dee'ja Peak ShuttlePort");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("naboo", 5331.9375, 327.02765, -1576.6733);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "kaadar_shuttleport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Kaadara ShuttlePort");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("naboo", 5123.3857, -192, 6616.0264);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "kaadara_starport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Kaadara StarPort");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("naboo", 5280.2002, -192, 6688.0498);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "keren_shuttleport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Keren ShuttlePort");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("naboo", 2021.0026, 19, 2525.679);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "karen_shuttleport_south_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Karen ShuttlePort South");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("naboo", 1567.5193, 25, 2837.8777);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "keren_starport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Keren Starport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("naboo", 1371.5938, 13, 2747.9043);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "moemia_starport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Moenia StarPort");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("naboo", 4731.1743, 4.1700001, -4677.5439);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "the_lake_retreat_shuttleport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("The Lake Retreat ShuttlePort");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("naboo", -5494.4224, -150, -21.837162);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "theed_shuttleport_a_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Theed ShuttlePort A");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("naboo", -5856.1055, 6, 4172.1606);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "theed_shuttleport_b_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Theed ShuttlePort B");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("naboo", -5005, 6, 4072);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "theed_shuttleport_c_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Theed ShuttlePort C");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("naboo", -5411.0171, 6, 4322.3315);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "theed_starport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Theed Starport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("naboo", -4858.834, 5.9483199, 4164.0679);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "pc_kessel_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Player City - Kessel");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("naboo", 7405, -192, 6200);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "pc_gallo_valley_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Player City - Gallo Valley");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("naboo", 3571, 11, -3988);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
//Mandalore Travels
			} else if (templatePath == "sundari_starport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Sundari Stareport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("mandalore", 6275, 1, -6211);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "keldabe_starport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Keldabe Stareport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("mandalore", 1575, 4, -6408);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "bralsin_starport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Bralsin Stareport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("mandalore", -5689, 0, -5034);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "norg_bral_starport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Norg Bral Stareport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("mandalore", -6648, 30, 5583);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "shuror_starport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Shuror Stareport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("mandalore", 1068, 1, 2733);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "enceri_starport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Enceri Stareport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("mandalore", 4713, 2, 7154);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
//Rori Travels
			} else if (templatePath == "narmel_shuttleport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Narmle Shuttleport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("rori", -5255.4116, 80.664185, -2161.6274);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "narmel_starport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Narmle Starport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("rori", -5374.0718, 80, -2188.6143);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "rebel_outpost_shuttleport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Rebel Outpost Shuttleport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("rori", 3691.9023, 96, -6403.4404);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "restuss_shuttleport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Restuss Shuttleport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("rori", 5303.81, 80, 6138.09);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "restuss_starport_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Restuss Starport");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("rori", 5340, 80, 5734);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
//Taanab Travels
			} else if (templatePath == "taanab_pandath_port_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Taanab Pandath Port");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("taanab", 2100, 45, 5400);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "taanab_star_hunter_station_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Taanab Starhunter Station");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("taanab", 3610, 31.7, -5425);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
//Endor Travels
			} else if (templatePath == "smuggler_outpost_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Endor Smuggler Outpost");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("endor", -950.59241, 73, 1553.4125);
 					player->subtractCashCredits(5000);
					box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "research_outpost_travel") {
				if (!player->isInCombat() && player->getCashCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Endor Research Outpost");
		                box->setPromptText("Travel Coast 5,000 credits. (Cash)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getCashCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("endor", 3201.6599, 24, -3499.76);
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

int32 SuiManager::sendSuiPage(CreatureObject* creature, SuiPageData* pageData, const String& play, const String& callback, unsigned int windowType) {

	if (pageData == NULL)
		return 0;

	if (creature == NULL || !creature->isPlayerCreature())
		return 0;

	PlayerObject* playerObject = creature->getPlayerObject();

	if (playerObject != NULL) {
		ManagedReference<SuiBoxPage*> boxPage = new SuiBoxPage(creature, pageData, windowType);
		boxPage->setCallback(new LuaSuiCallback(creature->getZoneServer(), play, callback));
		creature->sendMessage(boxPage->generateMessage());
		playerObject->addSuiBox(boxPage);

		return boxPage->getBoxID();
	}

	return 0;
}

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
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/managers/skill/SkillManager.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/zone/managers/creature/CreatureManager.h"
#include "server/zone/objects/region/CityRegion.h"
#include "server/zone/ZoneServer.h"
#include "server/chat/ChatManager.h"

#include "server/zone/objects/tangible/components/vendor/VendorDataComponent.h"
#include "server/zone/managers/stringid/StringIdManager.h"
#include "server/zone/managers/auction/AuctionManager.h"
#include "server/zone/managers/auction/AuctionsMap.h"
#include "server/zone/managers/statistics/StatisticsManager.h"
#include "server/zone/objects/mission/MissionTypes.h"

SuiManager::SuiManager() : Logger("SuiManager") {
	server = nullptr;
	setGlobalLogging(true);
	setLogging(false);
}

void SuiManager::handleSuiEventNotification(uint32 boxID, CreatureObject* player, uint32 eventIndex, Vector<UnicodeString>* args) {
	uint16 windowType = (uint16) boxID;

	Locker _lock(player);

	ManagedReference<PlayerObject*> ghost = player->getPlayerObject();

	if (ghost == nullptr)
		return;

	ManagedReference<SuiBox*> suiBox = ghost->getSuiBox(boxID);

	if (suiBox == nullptr)
		return;

	//Remove the box from the player, callback can readd it to the player if needed.
	ghost->removeSuiBox(boxID);
	suiBox->clearOptions(); //TODO: Eventually SuiBox needs to be cleaned up to not need this.

	Reference<SuiCallback*> callback = suiBox->getCallback();

	if (callback != nullptr) {
		Reference<LuaSuiCallback*> luaCallback = cast<LuaSuiCallback*>(callback.get());

		if (luaCallback != nullptr && suiBox->isSuiBoxPage()) {
			Reference<SuiBoxPage*> boxPage = cast<SuiBoxPage*>(suiBox.get());

			if (boxPage != nullptr) {
				Reference<SuiPageData*> pageData = boxPage->getSuiPageData();

				if (pageData != nullptr) {
					try {
						Reference<SuiCommand*> suiCommand = pageData->getCommand(eventIndex);

						if (suiCommand != nullptr && suiCommand->getCommandType() == SuiCommand::SCT_subscribeToEvent) {
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

	if (object == nullptr)
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

	if (bankObject == nullptr)
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
	if (!ConfigManager::instance()->getCharacterBuilderEnabled())
		return;

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
	if (cancel != 0 || ghost == nullptr)
		return;

	//Back was pressed. Send the node above it.
	if (otherPressed) {
		CharacterBuilderMenuNode* parentNode = currentNode->getParentNode();

		if(parentNode == nullptr)
			return;

		cbSui->setCurrentNode(parentNode);

		ghost->addSuiBox(cbSui);
		player->sendMessage(cbSui->generateMessage());
		return;
	}

	CharacterBuilderMenuNode* node = currentNode->getChildNodeAt(index);

	//Node doesn't exist or the index was out of bounds. Should probably resend the menu here.
	if (node == nullptr) {
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

		if (scob == nullptr)
			return;

		CharacterBuilderTerminal* bluefrog = scob.castTo<CharacterBuilderTerminal*>();

		if (bluefrog == nullptr)
			return;

		String templatePath = node->getTemplatePath();

		if (templatePath.indexOf(".iff") < 0) { // Non-item selections

			if (templatePath == "unlearn_all_skills") {

				SkillManager::instance()->surrenderAllSkills(player, true, false);
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
					return;
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
					return;
				}

			} else if (templatePath.beginsWith("crafting_apron_")) {
				//"object/tangible/wearables/apron/apron_chef_s01.iff"
				//"object/tangible/wearables/ithorian/apron_chef_jacket_s01_ith.iff"

				ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
				if (inventory == nullptr) {
					return;
				}

				uint32 itemCrc = ( player->getSpecies() != CreatureObject::ITHORIAN ) ? 0x5DDC4E5D : 0x6C191FBB;

				ManagedReference<WearableObject*> apron = zserv->createObject(itemCrc, 2).castTo<WearableObject*>();

				if (apron == nullptr) {
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
			} else if (templatePath == "frs_light_side") {
				if (ghost->getJediState() < 4) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("FRS Light Jedi");
		                box->setPromptText("FRS Light Jedi Requires (Light Jedi Rank");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (ghost->getJediState() == 4) {
				PlayerManager* pman = zserv->getPlayerManager();
				pman->unlockFRSForTesting(player, 1);
				}
			} else if (templatePath == "frs_dark_side") {
				if (ghost->getJediState() < 8) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("FRS Dark Jedi");
		                box->setPromptText("FRS Dark Jedi Requires (Dark Jedi Rank");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (ghost->getJediState() == 8) {
				PlayerManager* pman = zserv->getPlayerManager();
				pman->unlockFRSForTesting(player, 2);
				}
			} else if (templatePath == "color_crystals" || templatePath == "krayt_pearls") {
				ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");

				if (inventory == nullptr)
					return;

				LootManager* lootManager = zserv->getLootManager();
				lootManager->createLoot(inventory, templatePath, 300, true);

			} else if (templatePath == "max_xp") {
				ghost->maximizeExperience();
				player->sendSystemMessage("You have maximized all xp types.");
//Gray Jedi Unlock Checks
			} else if (templatePath == "jedi_Lives") {
				if (ghost->getJediState() < 2) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Gray Jedi Unlock");
		                box->setPromptText("Gray Jedi Requires (Force Sensative)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (ghost->getJediState() >= 2 && player->getScreenPlayState("jedi_Lives") == 0) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
						player->sendSystemMessage("You Have Unlocked Gray Jedi");
						int livesLeft = player->getScreenPlayState("jediLives") + 3;
						player->setScreenPlayState("jediLives", livesLeft);
					    int jediVis1 = ghost->getVisibility();
					    box->setPromptTitle("Gray Jedi Progress");
					    StringBuffer promptText;
					    String playerName = player->getFirstName();
					    promptText << "\\#00ff00 " << playerName << " Has " << "\\#000000 " << "(" << "\\#ffffff " << player->getScreenPlayState("jediLives") << "\\#000000 " << ")" << "\\#00ff00 " << " Gray Jedi Lives" << endl;
					    promptText << "\\#ffffff " << playerName << "\\#00ff00 Your Visibility is at: " << jediVis1;
					    box->setPromptText(promptText.toString());
					    ghost->addSuiBox(box);
					    player->sendMessage(box->generateMessage());
					    SkillManager* skillManager = server->getSkillManager();
						SkillManager::instance()->awardSkill("combat_jedi_novice", player, true, true, true);
						box->setForceCloseDistance(5.f);
			        }
//Player Stats
			} else if (templatePath == "player_stats") {

						PlayerObject* ghost = player->getPlayerObject();

						StringBuffer msg;

						msg << "---PvP Statistics---\n"
							<< "PvP Rating: " << ghost->getPvpRating() << "\n"
							<< "Total PvP Kills: " << ghost->getPvpKills() << "\n"
							<< "Total PvP Deaths: " << ghost->getPvpDeaths() << "\n"
							<< "Total Bounty Kills: " << ghost->getBountyKills() << "\n\n"
							<< "---PvE Statistics---\n"
							<< "Total PvE Kills: " << ghost->getPveKills() << "\n"
							<< "Total PvE Deaths: " << ghost->getPveDeaths() << "\n"
							<< "Total Boss Kills: " << ghost->getworldbossKills() << "\n\n"
							<< "---Mission Statistics---\n"
							<< "Total Missions Completed: " << ghost->getMissionsCompleted() << "\n\n"
							<< "---Misc Statistics---\n"
							<< "Event Attendance: " << ghost->geteventplayerCrate();

						ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::NONE);
						box->setPromptTitle(player->getFirstName() + "'s" + " Character Statistics");
						box->setPromptText(msg.toString());
						ghost->addSuiBox(box);
						player->sendMessage(box->generateMessage());
//Community Online Status
			} else if (templatePath == "community_status") {

						ManagedReference<PlayerObject*> ghost = player->getPlayerObject();
						PlayerManager* playerManager = server->getZoneServer()->getPlayerManager();
	
						StringBuffer body;
						Time timestamp;
						timestamp.updateToCurrentTime();

						body << "-- Flurry Server --" << endl << endl;
						body << "Connections Online: " << String::valueOf(player->getZoneServer()->getConnectionCount()) << endl;
						body << "Most Concurrent (since last reset): " << String::valueOf(player->getZoneServer()->getMaxPlayers()) << endl;
						body << "Server Cap: " << String::valueOf(player->getZoneServer()->getServerCap()) << endl << endl << endl;
						body << "Deleted Characters (since last reset): " << String::valueOf(player->getZoneServer()->getDeletedPlayers()) << endl;
						body << "Total Connections (since last reset): " << String::valueOf(player->getZoneServer()->getTotalPlayers()) << endl;
						body << endl;endl;

						body << "Missions info (since last reset): " << endl;
						body << StatisticsManager::instance()->getStatistics() << endl;

						ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::NONE);
						box->setPromptTitle("Flurry Community Status");
						box->setPromptText(body.toString());
						ghost->addSuiBox(box);
						player->sendMessage(box->generateMessage());
//JediQuest Remove Screen Play Tester
			} else if (templatePath == "jedi_quest_remove") {
				if (!player->isInCombat() && player->getBankCredits() < 999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Jedi Quest");
		                box->setPromptText("Jedi Quest Requires 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
						player->sendSystemMessage("Thank you for your credits.");
						int questLeft = player->getScreenPlayState("jediQuest") - 1;
						player->setScreenPlayState("jediQuest", questLeft);
					    int jediVis1 = ghost->getVisibility();
					    box->setPromptTitle("Jedi Quest Progress");
					    StringBuffer promptText;
					    String playerName = player->getFirstName();
					    promptText << "\\#00ff00 " << playerName << " Has " << "\\#000000 " << "(" << "\\#ffffff " << player->getScreenPlayState("jediQuest") << "\\#000000 " << ")" << "\\#00ff00 " << " Jedi Quest Progress" << endl;
					    promptText << "\\#ffffff " << playerName << "\\#00ff00 Your Visibility is at: " << jediVis1;
					    box->setPromptText(promptText.toString());
					    ghost->addSuiBox(box);
					    player->sendMessage(box->generateMessage());
						player->subtractBankCredits(1000);
						box->setForceCloseDistance(5.f);
			        }
//BOSS TELEPORT ROOM
			} else if (templatePath == "teleportroom") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Boss Instance Teleport Room");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("dungeon2", -33.6957, 0.77033, 24.5291, 14200816);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
//GALACTIC TRAVEL SYSTEM City Politician Skill
			} else if (templatePath == "citypolitician") {
				if (!player->isInCombat() && player->getBankCredits() < 999999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Master Politician");
		                box->setPromptText("Master Politician Requires 1,000,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 999999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
						player->sendSystemMessage("Thank you for your credits.");
 				        	SkillManager::instance()->awardSkill("social_politician_master", player, true, true, true);
						player->subtractBankCredits(1000000);
						box->setForceCloseDistance(5.f);
			        }
//GALACTIC TRAVEL SYSTEM Recalculate's Jedi's Force Pool
			} else if (templatePath == "recalculateforce") {
				
				if (!player->checkCooldownRecovery("force_recalculate_cooldown")) {

						StringIdChatParameter stringId;
  
						Time* cdTime = player->getCooldownTime("force_recalculate_cooldown");
  
						int timeLeft = floor((float)cdTime->miliDifference() / 1000) *-1;
  
						stringId.setStringId("@innate:equil_wait"); // You are still recovering from your last Command available in %DI seconds.
						stringId.setDI(timeLeft);
						player->sendSystemMessage(stringId);
						error("Cooldown In Effect You May Not Recalculate Force: " + player->getFirstName());
						return;
					}
				if (!player->isInCombat()) {
						ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
						String playerName = player->getFirstName();
						StringBuffer zBroadcast;
						zBroadcast << "\\#00E604" << playerName << " \\#63C8F9 Has Recalculated Their Force Pool.";
						SkillManager* skillManager = SkillManager::instance();
						skillManager->awardForceFromSkills(player);
						player->sendSystemMessage("Recalculated Max force and Regen");
						player->playEffect("clienteffect/mus_relay_activate.cef", "");
						player->addCooldown("force_recalculate_cooldown", 86400 * 1000);// 24 hour cooldown
						player->getZoneServer()->getChatManager()->broadcastGalaxy(nullptr, zBroadcast.toString());
			        }
//GALACTIC TRAVEL SYSTEM Recalculate's Players Skills
			} else if (templatePath == "recalculateskills") {
				
				if (!player->checkCooldownRecovery("skill_recalculate_cooldown")) {

						StringIdChatParameter stringId;
  
						Time* cdTime = player->getCooldownTime("skill_recalculate_cooldown");
  
						int timeLeft = floor((float)cdTime->miliDifference() / 1000) *-1;
  
						stringId.setStringId("@innate:equil_wait"); // You are still recovering from your last Command available in %DI seconds.
						stringId.setDI(timeLeft);
						player->sendSystemMessage(stringId);
						error("Cooldown In Effect You May Not Recalculate Skills: " + player->getFirstName());
						return;
					}
				if (!player->isInCombat()) {
						ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
						String playerName = player->getFirstName();
						StringBuffer zBroadcast;
						zBroadcast << "\\#00E604" << playerName << " \\#63C8F9 Has Recalculated Their Skills.";
						SkillManager* skillManager = SkillManager::instance();
						skillManager->awardResetSkills(player);
						player->sendSystemMessage("Recalculated Skills");
						player->playEffect("clienteffect/mus_relay_activate.cef", "");
						player->addCooldown("skill_recalculate_cooldown", 86400 * 1000);// 24 hour cooldown
						player->getZoneServer()->getChatManager()->broadcastGalaxy(nullptr, zBroadcast.toString());
			        }
//GALACTIC TRAVEL SYSTEM
//Corellia Travel
			} else if (templatePath == "corellia_bela_vistal_a_shuttleport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Bela Vistal Shuttleport A");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("corellia", 6644.269, 330, -5922.5225);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "corellia_bela_vistal_b_shuttleport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Bela Vistal Shuttleport B");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("corellia", 6930.8042, 330, -5534.8936);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "corellia_coronet_starport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Coronet Starport");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("corellia", -66.760902, 28, -4711.3281);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "corellia_coronet_a_shuttle_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Coronet Shuttle A");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("corellia", -25.671804, 28, -4409.7847);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "corellia_coronet_b_shuttle_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Coronet Shuttle B");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("corellia", -329.76605, 28, -4641.23);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "doaba_guerfel_shuttleport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Doaba Guerfel Shuttleport");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("corellia", 3085.4963, 280, 4993.0098);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "doaba_guerfel_starport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Doaba Guerfel Starport");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("corellia", 3349.8933, 308, 5598.1362);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "kor_vella_shuttleport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Kor Vella Shuttleport");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("corellia", -3775.2546, 31, 3234.2202);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "kor_vella_starport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Kor Vella Starport");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("corellia", -3157.2834, 31, 2876.2029);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "tyrena_a_shuttle_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Tyrena Shuttle A");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("corellia", -5005.354, 21, -2386.9819);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "tyrena_b_shuttle_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Tyrena Shuttle B");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("corellia", -5600.6367, 21, -2790.7429);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "tyrena_starport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Tyrena Starport");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("corellia", -5003.0649, 21, -2228.3665);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "vreni_island_shuttle_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Vreni Island Shuttle");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("corellia", -5551.9473, 15.890146, -6059.9673);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "argilat_swamp_badge") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("POI Argilat Swamp Badge");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("corellia", 1387, 30, 3749);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "bela_vistal_fountain_badge") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("POI Bela Vistal Fountain Badge");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("corellia", 6767, 30, -5617);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "rebel_hideout_badge") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("POI Rebel Hideout");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("corellia", -6530, 30, 5967);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "rogue_corsec_base_badge") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("POI Rogue Corsec Base Badge");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("corellia", 5291, 30, 1494);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "tyrena_theater_badge") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("POI Tyrena Theater Badge");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("corellia", -5418, 30, -6248);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
//Dantooine Travels
			} else if (templatePath == "dantooine_agro_outpost_starport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Dantooine Agro Outpost Starport");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("dantooine", 1569.66, 4, -6415.7598);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "dantooine_imperial_outpost_starport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Dantooine Imperial Outpost Starport");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("dantooine", -4208.6602, 3, -2350.24);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "dantooine_mining_outpost_startport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Dantooine Mining Outpost Starport");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("dantooine", -635.96887, 3, 2507.0115);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
//Dathomir Travels
			} else if (templatePath == "dathomir_trade_outpost_starport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Dathomir Trade Outpost Starport ");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("dathomir", 618.89258, 6.039608, 3092.0142);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "dathomir_science_outpost_starport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Dathomir Science Outpost Starport ");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("dathomir", -49.021923, 18, -1584.7278);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "dathomir_village_shuttleport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Dathomir Village Shuttleport");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("dathomir", 5271.4, 0, -4119.53);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
//Lok Travels
			} else if (templatePath == "nyms_stronghold_starport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Nym's Stronghold Starport");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("lok", 478.92676, 9, 5511.9565);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
//Hoth Travels
			} else if (templatePath == "scavenger_starport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Scavenger Starport");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("hoth", 0, 0, -2000);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
//Yavin IV Travels
			} else if (templatePath == "yavin_iv_imperial_outpost_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Yavin IV Imperial Outpost");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("yavin4", 4054.1, 37, -6216.9);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "yavin_iv_labor_outpost_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Yavin IV Labor Outpost");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("yavin4", -6921.6733, 73, -5726.5161);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
//Tatooine Travels
			} else if (templatePath == "anchorhead_shuttle_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Tatooine Anchorhead Shuttle");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("tatooine", 47.565128, 52, -5338.9072);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "bestine_shuttle_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Bestine Shuttle");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("tatooine", -1098.4836, 12, -3563.5342);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "bestine_starport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Bestine Starport");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("tatooine", -1361.1917, 12, -3600.0254);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "mos_eisley_shuttleport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Mos Eisley Shuttleport");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("tatooine", 3416.6914, 5, -4648.1411);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "mos_entha_shuttle_a_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Mos Entha Shuttle A");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("tatooine", 1730.8828, 7, 3184.6135);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "mos_entha_shuttle_b_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Mos Entha Shuttle B");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("tatooine", 1395.447, 7, 3467.0117);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "mos_entha_spaceport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Mos Entha Spaceport");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("tatooine", 1266.0996, 7, 3065.1392);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "mos_espa_shuttleport_east_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Mos Espa Shuttle Port East");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("tatooine", -2803.511, 5, 2182.9648);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "mos_espa_shuttleport_south_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Mos Espa Shuttle Port South");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("tatooine", -2897.0933, 5, 1933.4144);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "mos_espa_shuttleport_west_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Mos Espa Shuttle Port West");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("tatooine", -3112.1296, 5, 2176.9607);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "mos_espa_starport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Mos Espa Starport");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("tatooine", -2833.1609, 5, 2107.3787);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
//Talus Travels
			} else if (templatePath == "talus_dearic_shuttleport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Talus Dearic Shuttleport");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("talus", 699.297, 6, -3041.4199);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "talus_dearic_starport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Talus Dearic Starport");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("talus", 263.58401, 6, -2952.1284);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "talus_nashal_shuttleport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Talus Nashal Shuttleport");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("talus", 4334.5786, 9.8999996, 5431.0415);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "talus_imperial_outpost_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Talus Imprial Outpost");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("talus", -2226, 20, 2319);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
//Naboo Travels
			} else if (templatePath == "deeja_peak_shuttleport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Dee'ja Peak ShuttlePort");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("naboo", 5331.9375, 327.02765, -1576.6733);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "kaadar_shuttleport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Kaadara ShuttlePort");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("naboo", 5123.3857, -192, 6616.0264);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "kaadara_starport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Kaadara StarPort");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("naboo", 5280.2002, -192, 6688.0498);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "keren_shuttleport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Keren ShuttlePort");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("naboo", 2021.0026, 19, 2525.679);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "karen_shuttleport_south_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Karen ShuttlePort South");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("naboo", 1567.5193, 25, 2837.8777);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "keren_starport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Keren Starport");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("naboo", 1371.5938, 13, 2747.9043);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "moemia_starport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Moenia StarPort");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("naboo", 4731.1743, 4.1700001, -4677.5439);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "the_lake_retreat_shuttleport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("The Lake Retreat ShuttlePort");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("naboo", -5494.4224, -150, -21.837162);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "theed_shuttleport_a_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Theed ShuttlePort A");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("naboo", -5856.1055, 6, 4172.1606);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "theed_shuttleport_b_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Theed ShuttlePort B");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("naboo", -5005, 6, 4072);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "theed_shuttleport_c_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Theed ShuttlePort C");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("naboo", -5411.0171, 6, 4322.3315);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "theed_starport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Theed Starport");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("naboo", -4858.834, 5.9483199, 4164.0679);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "pc_kessel_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Player City - Kessel");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("naboo", 7405, -196, 6200);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
//Rori Travels
			} else if (templatePath == "narmel_shuttleport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Narmle Shuttleport");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("rori", -5255.4116, 80.664185, -2161.6274);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "narmel_starport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Narmle Starport");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("rori", -5374.0718, 80, -2188.6143);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "rebel_outpost_shuttleport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Rebel Outpost Shuttleport");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("rori", 3691.9023, 96, -6403.4404);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "restuss_shuttleport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Restuss Shuttleport");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("rori", 5210, 78, 5794);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "restuss_starport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Restuss Starport");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("rori", 5340, 80, 5734);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
//Endor Travels
			} else if (templatePath == "smuggler_outpost_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Endor Smuggler Outpost");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("endor", -950.59241, 73, 1553.4125);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "research_outpost_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Endor Research Outpost");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("endor", 3201.6599, 24, -3499.76);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
//Chandrila Travels
			} else if (templatePath == "nayli_starport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Nayli Starpot");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("chandrila", -5271, 18, 265);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "hanna_starport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Hanna City Starpot");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("chandrila", 253, 6, -2937);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
//Hutta Travels
			} else if (templatePath == "bilbousa_starport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Bilbousa Starpot");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("hutta", -765, 80, 1703);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
//Geonosis Travels
			} else if (templatePath == "geonosis_starport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Geonosis Starpot");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("geonosis", 86, 5, -11);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
// Mandalore Travels
			} else if (templatePath == "keldabe_starport_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Keldabe Starport");
		                box->setPromptText("Travel Cost 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("mandalore", 1568, 4, -6415);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
//Light Jedi Enclave
			} else if (templatePath == "light_enclave_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Light Jedi Enclave");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("yavin4", -5575, 87, 4901);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
//Dark Jedi Enclave
			} else if (templatePath == "dark_enclave_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Dark Jedi Enclave");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("yavin4", 5080, 79, 306);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
//Rori Restuss PVP Zone
			} else if (templatePath == "restuss_pvp_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Restuss PvP Zone");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("rori", 5297, 78, 6115);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
//Player City Travels
			} else if (templatePath == "pc_korrivan_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Player City Korrivan");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("tatooine", -1644, 0, -5277);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "pc_intas_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Player City Intas Minor");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("naboo", -2577, -196, 6027);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "pc_caladan_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Player City Caladan");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("talus", 6049, 6, -1218);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "pc_hilltop_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Player City Hill Top");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("dathomir", -2859, 77, -5211);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "pc_sundari_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Player City Sundari");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("endor", -3947, 10, 3794);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "pc_shadowfalls_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Player City Shadow Falls");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("corellia", -1474, 3, -3220);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "pc_jantatown_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Player City Janta Town");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("dantooine", 6533, 1, -4294);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "pc_serendipity_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Player City Serendipity");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("dantooine", -7116, 0, -3726);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }			
			} else if (templatePath == "pc_riverside_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Player City Riverside");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("kashyyyk", 3300, 0, 2244);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }			
			} else if (templatePath == "pc_maka_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Player City Make America Krayt Again");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("tatooine", 6093, 52, 4307);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }			  
              			} else if (templatePath == "pc_darkness_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Darkness Falls");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("dathomir", 3136, 77, -5953);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
              			} else if (templatePath == "pc_bmh_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Bad Mutta Hutta");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("hutta", 2876, 108, 3923);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }			             
                    } else if (templatePath == "pc_indestine_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Indestine");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("hoth", -1847, 36, 3788);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }	
                    } else if (templatePath == "pc_cyberdyne_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Cyberdyne");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("dathomir", -5060, 78, -5015);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }	
                    } else if (templatePath == "pc_lafayette_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Lafayette");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("naboo", -6955, -196, 5360);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }			 
                    } else if (templatePath == "pc_skynet_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Skynet");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("tatooine", -4791, 22, 6402);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }			                     
                    } else if (templatePath == "pc_crimson_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Crimson Throne");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("lok", -2996, 11, 6867);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
                    } else if (templatePath == "pc_freedom_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("New Freedom");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("mandalore", 5733, 0, 876);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }			     
                    } else if (templatePath == "pc_malice_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Malice");
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("dantooine", 3480, 5, 3300);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }		
                    } else if (templatePath == "pc_annamnesis_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Annamnesis" );
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("yavin4", -2253, 18, 6958);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }			     
                    } else if (templatePath == "pc_avalon_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Avalon Prime" );
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("naboo", -7004, 11, -3785);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
                    } else if (templatePath == "pc_sanctus_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Sactus" );
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("dathomir", -4556, 83, -4669);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
                    } else if (templatePath == "pc_unrest_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Unrest" );
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("rori", -5350, 90, -3587);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
                    } else if (templatePath == "pc_oldwest_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("The Old West" );
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("mandalore", -7155, 3, -787);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }	
                    } else if (templatePath == "pc_nerfherder_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Nerf Herder Central" );
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("taanab", 5129, 49, -4794);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
                    } else if (templatePath == "pc_virdomus_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Vir Domus" );
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        player->switchZone("talus", -179, 20, -4180);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "pc_littlechina_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Little China" );
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("tatooine", -377, 0, 3777);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "frs_floor") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("FRS Selection Floor" );
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("dungeon2", 5994, 39, 0, 14200833);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "mos_potatoes") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Mos Potatoes" );
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("endor", -46, 207, 4767);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "pc_binary_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Binary" );
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("lok", 1245, 0, 6603);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "asgard") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Asgard" );
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("geonosis", -28, 7, 1937);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "pc_sparta_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Sparta" );
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("dathomir", -3417, 122, 2684);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "pc_purgatory_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Purgatory" );
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("endor", -3593, 200, 5764);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "pc_sincity_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Sin city" );
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("taanab", -2225, 58, -501);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "pc_nofate_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("No Fate" );
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("rori", 6159, 75, 1625);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "pc_serenity_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Serenity" );
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("lok", 3178, 12, -3948);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
			} else if (templatePath == "pc_banir_travel") {
				if (!player->isInCombat() && player->getBankCredits() < 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Banir" );
		                box->setPromptText("Travel Coast 5,000 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 4999) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                ManagedReference<CityRegion*> currentCity = player->getCityRegion().get();
						player->sendSystemMessage("Thank you for your travels.");
 				        	player->switchZone("dantooine", 3179, 1, 5309);
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
						if(currentCity != nullptr && !currentCity->isClientRegion()) {
						Locker clocker(currentCity, player);
						currentCity->addToCityTreasury(1000);
						}
			        }
//GRAY JEDI HOLOCRON QUEST END CHAPTER
			} else if (templatePath == "switch_normal_loadout") {
				if (!player->isInCombat() && player->getBankCredits() < 99) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Normal Player Loadout");
		                box->setPromptText("Costume Coast 100 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 99) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
						player->sendSystemMessage("You are now swtiching back to your normal loadout , soft logging your character will fully cloth you again , you can also unequipt and reqequipt your items if you do not want to soft log..");
                        			player->setAlternateAppearance("", true); 					
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "royal_guard_appearance") {
				if (!player->isInCombat() && player->getBankCredits() < 99) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                box->setPromptTitle("Royal Guard");
		                box->setPromptText("Costume Coast 100 credits. (Bank)");
		                box->setOkButton(true, "@cancel");
		                box->setUsingObject(player);
		                player->getPlayerObject()->addSuiBox(box);
		                player->sendMessage(box->generateMessage());
			        }
				if (!player->isInCombat() && player->getBankCredits() > 99) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
						player->sendSystemMessage("Thank you for purchasing a costume.");
                        			player->setAlternateAppearance("object/mobile/shared_royal_guard.iff", true); 					
						player->subtractBankCredits(5000);
						box->setForceCloseDistance(5.f);
			        }
			} else if (templatePath == "become_glowy") {
				bluefrog->grantGlowyBadges(player);

			} else if (templatePath == "unlock_jedi_initiate") {
				bluefrog->grantJediInitiate(player);

			} else {
				if (templatePath.length() > 0) {
					SkillManager::instance()->awardSkill(templatePath, player, true, true, true);

					if (player->hasSkill(templatePath))
						player->sendSystemMessage("You have learned a skill.");

				} else {
					player->sendSystemMessage("Unknown selection.");
					return;
				}
			}

			ghost->addSuiBox(cbSui);
			player->sendMessage(cbSui->generateMessage());

		} else { // Items
			ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");

			if (inventory == nullptr) {
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

			if (item == nullptr) {
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

					if (jbox != nullptr)
						jbox->setOwner(player);
				} else if (item->getServerObjectCRC() == 0x255F612C) { // Shuttle Beacon
					ShuttleBeacon* beacon = item.castTo<ShuttleBeacon*>();

					if (beacon != nullptr)
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

		player->info("[CharacterBuilder] gave player " + templatePath, true);
	}
}

void SuiManager::sendKeypadSui(SceneObject* keypad, SceneObject* creatureSceneObject, const String& play, const String& callback) {

	if (keypad == nullptr)
		return;

	if (creatureSceneObject == nullptr || !creatureSceneObject->isCreatureObject())
		return;

	CreatureObject* creature = cast<CreatureObject*>(creatureSceneObject);

	PlayerObject* playerObject = creature->getPlayerObject();

	if (playerObject != nullptr) {
		ManagedReference<SuiKeypadBox*> keypadSui = new SuiKeypadBox(creature, 0x00);
		keypadSui->setCallback(new LuaSuiCallback(creature->getZoneServer(), play, callback));
		keypadSui->setUsingObject(keypad);
		keypadSui->setForceCloseDisabled();
		creature->sendMessage(keypadSui->generateMessage());
		playerObject->addSuiBox(keypadSui);
	}

}

void SuiManager::sendConfirmSui(SceneObject* terminal, SceneObject* player, const String& play, const String& callback, const String& prompt, const String& button) {

	if (terminal == nullptr)
		return;

	if (player == nullptr || !player->isCreatureObject())
		return;

	CreatureObject* creature = cast<CreatureObject*>(player);

	PlayerObject* playerObject = creature->getPlayerObject();

	if (playerObject != nullptr) {
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
	if (terminal == nullptr)
		return;

	if (player == nullptr || !player->isCreatureObject())
		return;

	CreatureObject* creature = cast<CreatureObject*>(player);

	PlayerObject* playerObject = creature->getPlayerObject();

	if (playerObject != nullptr) {
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
	if (usingObject == nullptr)
		return;

	if (player == nullptr || !player->isCreatureObject())
		return;

	CreatureObject* creature = cast<CreatureObject*>(player);

	PlayerObject* playerObject = creature->getPlayerObject();

	if (playerObject != nullptr) {
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
	if (usingObject == nullptr)
		return;

	if (player == nullptr || !player->isCreatureObject())
		return;

	CreatureObject* creature = cast<CreatureObject*>(player);

	PlayerObject* playerObject = creature->getPlayerObject();

	if (playerObject != nullptr) {

		ManagedReference<SuiListBox*> box = nullptr;

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
	if (usingObject == nullptr)
		return;

	if (player == nullptr || !player->isCreatureObject())
		return;

	CreatureObject* creature = cast<CreatureObject*>(player);

	PlayerObject* playerObject = creature->getPlayerObject();

	if (playerObject != nullptr) {

		ManagedReference<SuiTransferBox*> box = nullptr;

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

	if (pageData == nullptr)
		return 0;

	if (creature == nullptr || !creature->isPlayerCreature())
		return 0;

	PlayerObject* playerObject = creature->getPlayerObject();

	if (playerObject != nullptr) {
		ManagedReference<SuiBoxPage*> boxPage = new SuiBoxPage(creature, pageData, windowType);
		boxPage->setCallback(new LuaSuiCallback(creature->getZoneServer(), play, callback));
		creature->sendMessage(boxPage->generateMessage());
		playerObject->addSuiBox(boxPage);

		return boxPage->getBoxID();
	}

	return 0;
}

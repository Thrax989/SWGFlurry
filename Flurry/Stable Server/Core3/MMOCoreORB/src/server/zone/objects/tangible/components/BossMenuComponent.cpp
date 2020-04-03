/*
* BossMenuComponent.cpp
*
* Created on: 11/28/2017
* Revised on: 12/21/2019
*	 Author: Toxic
*  
*/
#include "BossMenuComponent.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/objects/player/sui/messagebox/SuiMessageBox.h"
#include "server/zone/managers/skill/SkillManager.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/zone/managers/creature/CreatureManager.h"
#include "server/zone/objects/region/CityRegion.h"
#include "server/zone/ZoneServer.h"
#include "server/chat/ChatManager.h"
#include "server/zone/objects/group/GroupObject.h"

void BossMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {
					TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);
					ManagedReference<PlayerObject*> ghost = player->getPlayerObject();
					menuResponse->addRadialMenuItem(213, 3, "Broadcast Server Message LFG"); //SERVER BROADCAST LFG
					menuResponse->addRadialMenuItem(214, 3, "Teleport To Boss Instance Room"); //Teleport Tp Boss Instance Room
					//menuResponse->addRadialMenuItem(215, 3, "Mythical Krayt"); //MINI BOSS ENCOUNTER 3
					//menuResponse->addRadialMenuItem(216, 3, "Undead Petrified Soul "); //MINI BOSS ENCOUNTER 4
					menuResponse->addRadialMenuItem(217, 3, "Heroic Boss Instances");
					menuResponse->addRadialMenuItemToRadialID(217, 221, 3, "Exar Kun Tomb"); //BOSS ENCOUNTER 1
					menuResponse->addRadialMenuItemToRadialID(217, 222, 3, "Avatar Platform"); //BOSS ENCOTUNER 2
					menuResponse->addRadialMenuItemToRadialID(217, 223, 3, "Sher Kar"); //BOSS ENCOUNTER 3
					menuResponse->addRadialMenuItemToRadialID(217, 224, 3, "Ig-88"); //BOSS ENCOUNTER 4
					menuResponse->addRadialMenuItemToRadialID(217, 225, 3, "Star Destroyer"); //BOSS ENCOUNTER 5
					menuResponse->addRadialMenuItemToRadialID(217, 226, 3, "Droid Factory"); //BOSS ENCOUNTER 6
					menuResponse->addRadialMenuItemToRadialID(217, 227, 3, "NightSister Queen"); //BOSS ENCOUNTER 7
					menuResponse->addRadialMenuItemToRadialID(217, 228, 3, "Weapon Factory"); //BOSS ENCOUNTER 8
}
int BossMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {
	if (selectedID == 213) {
		if (!creature->checkCooldownRecovery("server_broadcast_group")) {
					StringIdChatParameter stringId;
					Time* cdTime = creature->getCooldownTime("server_broadcast_group");
					int timeLeft = floor((float)cdTime->miliDifference() / 1000) *-1;
					stringId.setStringId("@innate:equil_wait"); // You are still recovering from your last Command available in %DI seconds.
					stringId.setDI(timeLeft);
					creature->sendSystemMessage(stringId);
  			        return 0;
  		       }
		if (!creature->isInCombat()) {
					ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					//Broadcast to Server
					ChatManager* chatManager = creature->getZoneServer()->getChatManager();
					String playerName = creature->getFirstName();
					StringBuffer zBroadcast;
					zBroadcast << "\\#00E604" << playerName << " \\#63C8F9 Is Looking To Join A Raid Group, They Are located At The Nova Orion Space Station.";
					//Broadcast player has died forward to discord channel. created by :TOXIC
					StringBuffer zGeneral;
					zGeneral << "Is Looking To Join A Raid Group, They Are located At The Nova Orion Space Station.";	
					chatManager->handleGeneralChat(creature, zGeneral.toString());
					creature->playEffect("clienteffect/mus_relay_activate.cef", "");
					creature->playEffect("clienteffect/death_trooper_infection_01.cef", "");
					creature->addCooldown("server_broadcast_group", 60 * 1000);// 60 second cooldown
					creature->getZoneServer()->getChatManager()->broadcastGalaxy(nullptr, zBroadcast.toString());
		}
	}
	if (selectedID == 214) {
					ManagedReference<GroupObject*> group = creature->getGroup();
		if (group == nullptr) {
					ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					box->setPromptTitle("Dungeon Teleport Rules");
					box->setPromptText("1.)You must be in a group of 2 or more to use this option.\n\n2.)All party members must be within 15 meeters of this terminal when teleporting or they risk being left behind.");
					box->setOkButton(true, "@cancel");
					box->setUsingObject(creature);
					creature->getPlayerObject()->addSuiBox(box);
					creature->sendMessage(box->generateMessage());
					box->setForceCloseDistance(5.f);
				   }
		if (group != nullptr) {
			for (int i = 0; i < group->getGroupSize(); i++) {
					ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);
					if (groupedCreature != nullptr && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 15.0f) && groupedCreature != creature) {
					Locker locker(groupedCreature);
					groupedCreature->switchZone("dungeon2", -33.6957, 0.77033, 24.5291, 14200816);
					locker.release();
				}
			}
			creature->switchZone("dungeon2", -33.6957, 0.77033, 24.5291, 14200816);
		}
	}
	if (selectedID == 215) {
					ManagedReference<GroupObject*> group = creature->getGroup();
		if (group == nullptr) {
					ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					box->setPromptTitle("Dungeon Teleport Rules");
					box->setPromptText("1.)You must be in a group of 2 or more to use this option.\n\n2.)All party members must be within 15 meeters of this terminal when teleporting or they risk being left behind.");
					box->setOkButton(true, "@cancel");
					box->setUsingObject(creature);
					creature->getPlayerObject()->addSuiBox(box);
					creature->sendMessage(box->generateMessage());
					box->setForceCloseDistance(5.f);
				   }
		if (group != nullptr) {
			for (int i = 0; i < group->getGroupSize(); i++) {
					ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);
					if (groupedCreature != nullptr && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 15.0f) && groupedCreature != creature) {
					Locker locker(groupedCreature);
					groupedCreature->switchZone("corellia", 0, 0, 0);
					locker.release();
				}
			}
			creature->switchZone("corellia", 0, 0, 0);
		}
	}
	if (selectedID == 216) {
					ManagedReference<GroupObject*> group = creature->getGroup();
		if (group == nullptr) {
					ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					box->setPromptTitle("Dungeon Teleport Rules");
					box->setPromptText("1.)You must be in a group of 2 or more to use this option.\n\n2.)All party members must be within 15 meeters of this terminal when teleporting or they risk being left behind.");
					box->setOkButton(true, "@cancel");
					box->setUsingObject(creature);
					creature->getPlayerObject()->addSuiBox(box);
					creature->sendMessage(box->generateMessage());
					box->setForceCloseDistance(5.f);
				   }
		if (group != nullptr) {
			for (int i = 0; i < group->getGroupSize(); i++) {
					ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);
					if (groupedCreature != nullptr && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 15.0f) && groupedCreature != creature) {
					Locker locker(groupedCreature);
					groupedCreature->switchZone("corellia", 0, 0, 0);
					locker.release();
				}
			}
			creature->switchZone("corellia", 0, 0, 0);
		}
	}
	if (selectedID == 221) {
					ManagedReference<GroupObject*> group = creature->getGroup();
		if (group == nullptr) {
					ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					box->setPromptTitle("Dungeon Teleport Rules");
					box->setPromptText("1.)You must be in a group of 2 or more to use this option.\n\n2.)All party members must be within 15 meeters of this terminal when teleporting or they risk being left behind.");
					box->setOkButton(true, "@cancel");
					box->setUsingObject(creature);
					creature->getPlayerObject()->addSuiBox(box);
					creature->sendMessage(box->generateMessage());
					box->setForceCloseDistance(5.f);
				   }
		if (group != nullptr) {
			for (int i = 0; i < group->getGroupSize(); i++) {
					ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);
					if (groupedCreature != nullptr && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 15.0f) && groupedCreature != creature) {
					Locker locker(groupedCreature);
					groupedCreature->switchZone("dungeon2", -11.5, 0.2, -121.8, 14200872);
					locker.release();
				}
			}
			creature->switchZone("dungeon2", -11.5, 0.2, -121.8, 14200872);
		}
	}
	if (selectedID == 222) {
					ManagedReference<GroupObject*> group = creature->getGroup();
		if (group == nullptr) {
					ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					box->setPromptTitle("Dungeon Teleport Rules");
					box->setPromptText("1.)You must be in a group of 2 or more to use this option.\n\n2.)All party members must be within 15 meeters of this terminal when teleporting or they risk being left behind.");
					box->setOkButton(true, "@cancel");
					box->setUsingObject(creature);
					creature->getPlayerObject()->addSuiBox(box);
					creature->sendMessage(box->generateMessage());
					box->setForceCloseDistance(5.f);
				   }
		if (group != nullptr) {
			for (int i = 0; i < group->getGroupSize(); i++) {
					ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);
					if (groupedCreature != nullptr && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 15.0f) && groupedCreature != creature) {
					Locker locker(groupedCreature);
					groupedCreature->switchZone("dungeon2", 103.839, 0.05, 21.5224, 14201223);
					locker.release();
				}
			}
			creature->switchZone("dungeon2", 103.839, 0.05, 21.5224, 14201223);
		}
	}
	if (selectedID == 223) {
					ManagedReference<GroupObject*> group = creature->getGroup();
		if (group == nullptr) {
					ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					box->setPromptTitle("Dungeon Teleport Rules");
					box->setPromptText("1.)You must be in a group of 2 or more to use this option.\n\n2.)All party members must be within 15 meeters of this terminal when teleporting or they risk being left behind.");
					box->setOkButton(true, "@cancel");
					box->setUsingObject(creature);
					creature->getPlayerObject()->addSuiBox(box);
					creature->sendMessage(box->generateMessage());
					box->setForceCloseDistance(5.f);
				   }
		if (group != nullptr) {
			for (int i = 0; i < group->getGroupSize(); i++) {
					ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);
					if (groupedCreature != nullptr && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 15.0f) && groupedCreature != creature) {
					Locker locker(groupedCreature);
					groupedCreature->switchZone("mustafar", -4.9798, -0.52875, 4.48454, 12116005);
					locker.release();
				}
			}
			creature->switchZone("mustafar", -4.9798, -0.52875, 4.48454, 12116005);
		}
	}
	if (selectedID == 224) {
					ManagedReference<GroupObject*> group = creature->getGroup();
		if (group == nullptr) {
					ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					box->setPromptTitle("Dungeon Teleport Rules");
					box->setPromptText("1.)You must be in a group of 2 or more to use this option.\n\n2.)All party members must be within 15 meeters of this terminal when teleporting or they risk being left behind.");
					box->setOkButton(true, "@cancel");
					box->setUsingObject(creature);
					creature->getPlayerObject()->addSuiBox(box);
					creature->sendMessage(box->generateMessage());
					box->setForceCloseDistance(5.f);
				   }
		if (group != nullptr) {
			for (int i = 0; i < group->getGroupSize(); i++) {
					ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);
					if (groupedCreature != nullptr && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 15.0f) && groupedCreature != creature) {
					Locker locker(groupedCreature);
					groupedCreature->switchZone("dungeon2", 0.1, 0.0, 42.2, 14200863);
					locker.release();
				}
			}
			creature->switchZone("dungeon2", 0.1, 0.0, 42.2, 14200863);
		}
	}
	if (selectedID == 225) {
					ManagedReference<GroupObject*> group = creature->getGroup();
		if (group == nullptr) {
					ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					box->setPromptTitle("Dungeon Teleport Rules");
					box->setPromptText("1.)You must be in a group of 2 or more to use this option.\n\n2.)All party members must be within 15 meeters of this terminal when teleporting or they risk being left behind.");
					box->setOkButton(true, "@cancel");
					box->setUsingObject(creature);
					creature->getPlayerObject()->addSuiBox(box);
					creature->sendMessage(box->generateMessage());
					box->setForceCloseDistance(5.f);
				   }
		if (group != nullptr) {
			for (int i = 0; i < group->getGroupSize(); i++) {
					ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);
					if (groupedCreature != nullptr && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 15.0f) && groupedCreature != creature) {
					Locker locker(groupedCreature);
 					groupedCreature->switchZone("dungeon2", -36.7588, 173.835, 57.8608, 14201198);
					locker.release();
				}
			}
			creature->switchZone("dungeon2", -36.7588, 173.835, 57.8608, 14201198);
		}
	}
	if (selectedID == 226) {
					ManagedReference<GroupObject*> group = creature->getGroup();
		if (group == nullptr) {
					ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					box->setPromptTitle("Dungeon Teleport Rules");
					box->setPromptText("1.)You must be in a group of 2 or more to use this option.\n\n2.)All party members must be within 15 meeters of this terminal when teleporting or they risk being left behind.");
					box->setOkButton(true, "@cancel");
					box->setUsingObject(creature);
					creature->getPlayerObject()->addSuiBox(box);
					creature->sendMessage(box->generateMessage());
					box->setForceCloseDistance(5.f);
				   }
		if (group != nullptr) {
			for (int i = 0; i < group->getGroupSize(); i++) {
					ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);
					if (groupedCreature != nullptr && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 15.0f) && groupedCreature != creature) {
					Locker locker(groupedCreature);
					groupedCreature->switchZone("dungeon2", 5.43268, -8, 30.8895, 14200766);
					locker.release();
				}
			}
			creature->switchZone("dungeon2", 5.43268, -8, 30.8895, 14200766);
		}
	}
	if (selectedID == 227) {
					ManagedReference<GroupObject*> group = creature->getGroup();
		if (group == nullptr) {
					ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					box->setPromptTitle("Dungeon Teleport Rules");
					box->setPromptText("1.)You must be in a group of 2 or more to use this option.\n\n2.)All party members must be within 15 meeters of this terminal when teleporting or they risk being left behind.");
					box->setOkButton(true, "@cancel");
					box->setUsingObject(creature);
					creature->getPlayerObject()->addSuiBox(box);
					creature->sendMessage(box->generateMessage());
					box->setForceCloseDistance(5.f);
				   }
		if (group != nullptr) {
			for (int i = 0; i < group->getGroupSize(); i++) {
					ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);
					if (groupedCreature != nullptr && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 15.0f) && groupedCreature != creature) {
					Locker locker(groupedCreature);
					groupedCreature->switchZone("dungeon2", 19.3, 0.1, 0.5, 14201104);
					locker.release();
				}
			}
			creature->switchZone("dungeon2", 19.3, 0.1, 0.5, 14201104);
		}
	}
	if (selectedID == 228) {
					ManagedReference<GroupObject*> group = creature->getGroup();
		if (group == nullptr) {
					ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
					box->setPromptTitle("Dungeon Teleport Rules");
					box->setPromptText("1.)You must be in a group of 2 or more to use this option.\n\n2.)All party members must be within 15 meeters of this terminal when teleporting or they risk being left behind.");
					box->setOkButton(true, "@cancel");
					box->setUsingObject(creature);
					creature->getPlayerObject()->addSuiBox(box);
					creature->sendMessage(box->generateMessage());
					box->setForceCloseDistance(5.f);
				   }
		if (group != nullptr) {
			for (int i = 0; i < group->getGroupSize(); i++) {
					ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);
					if (groupedCreature != nullptr && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 15.0f) && groupedCreature != creature) {
					Locker locker(groupedCreature);
					groupedCreature->switchZone("dungeon2", 5.4443, -8, 30.8646, 14200737);
					locker.release();
				}
			}
			creature->switchZone("dungeon2", 5.4443, -8, 30.8646, 14200737);
		}
	}
	return 0;
}

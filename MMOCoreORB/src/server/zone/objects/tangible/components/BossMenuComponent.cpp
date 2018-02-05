/*
* BossMenuComponent.cpp
*
* Created on: 11/28/2017
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
		menuResponse->addRadialMenuItem(214, 3, "Mini Boss 2"); //MINI BOSS ENCOUNTER 2
		menuResponse->addRadialMenuItem(215, 3, "Mini Boss 3"); //MINI BOSS ENCOUNTER 3
		menuResponse->addRadialMenuItem(216, 3, "Mini Boss 4"); //MINI BOSS ENCOUNTER 4
		menuResponse->addRadialMenuItem(217, 3, "Heroic Boss Instances");
		menuResponse->addRadialMenuItemToRadialID(217, 221, 3, "Exar Kun Tomb"); //BOSS ENCOUNTER 1
		menuResponse->addRadialMenuItemToRadialID(217, 222, 3, "Avatar Platform"); //BOSS ENCOTUNER 2
		menuResponse->addRadialMenuItemToRadialID(217, 223, 3, "Hoth Echo Base"); //BOSS ENCOUNTER 3
		menuResponse->addRadialMenuItemToRadialID(217, 224, 3, "IG-88"); //BOSS ENCOUNTER 4
		menuResponse->addRadialMenuItemToRadialID(217, 225, 3, "Imperial Star Destroyer"); //BOSS ENCOUNTER 5
		menuResponse->addRadialMenuItemToRadialID(217, 226, 3, "Myyydril"); //BOSS ENCOUNTER 6
		menuResponse->addRadialMenuItemToRadialID(217, 227, 3, "NightSister Queen"); //BOSS ENCOUNTER 7
		menuResponse->addRadialMenuItemToRadialID(217, 228, 3, "Rogue Star Destroyer"); //BOSS ENCOUNTER 8
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
 			String playerName = creature->getFirstName();
 			StringBuffer zBroadcast;
 			zBroadcast << "\\#00E604" << playerName << " \\#63C8F9 Is Looking To Join A Raid Group, They Are located At The Nova Orion Space Station.";
		        creature->addCooldown("server_broadcast_group", 60 * 1000);// 60 second cooldown
			creature->getZoneServer()->getChatManager()->broadcastGalaxy(NULL, zBroadcast.toString());
		}
	}

	if (selectedID == 214) {

		ManagedReference<GroupObject*> group = creature->getGroup();

		if (group == NULL) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                        box->setPromptTitle("Dungeon Teleport Rules");
		                        box->setPromptText("You must be in a group of 2 or more to use this option, All party members must be within 15 meeters of you for them to be teleported or they risk being left behind");
		                        box->setOkButton(true, "@cancel");
		                        box->setUsingObject(creature);
		                        creature->getPlayerObject()->addSuiBox(box);
		                        creature->sendMessage(box->generateMessage());
					box->setForceCloseDistance(5.f);
				   }

		if (group != NULL) {
			for (int i = 0; i < group->getGroupSize(); i++) {
				ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);

				if (groupedCreature != NULL && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 10.0f) && groupedCreature != creature) {
						Locker locker(groupedCreature);
		                                groupedCreature->switchZone("corellia", 0, 0, 0);
						locker.release();
				}
			}
			
			creature->switchZone("corellia", 0, 0, 0);
		}
	}

	if (selectedID == 215) {

		ManagedReference<GroupObject*> group = creature->getGroup();

		if (group == NULL) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                        box->setPromptTitle("Dungeon Teleport Rules");
		                        box->setPromptText("You must be in a group of 2 or more to use this option, All party members must be within 15 meeters of you for them to be teleported or they risk being left behind");
		                        box->setOkButton(true, "@cancel");
		                        box->setUsingObject(creature);
		                        creature->getPlayerObject()->addSuiBox(box);
		                        creature->sendMessage(box->generateMessage());
					box->setForceCloseDistance(5.f);
				   }

		if (group != NULL) {
			for (int i = 0; i < group->getGroupSize(); i++) {
				ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);

				if (groupedCreature != NULL && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 10.0f) && groupedCreature != creature) {
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

		if (group == NULL) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                        box->setPromptTitle("Dungeon Teleport Rules");
		                        box->setPromptText("You must be in a group of 2 or more to use this option, All party members must be within 15 meeters of you for them to be teleported or they risk being left behind");
		                        box->setOkButton(true, "@cancel");
		                        box->setUsingObject(creature);
		                        creature->getPlayerObject()->addSuiBox(box);
		                        creature->sendMessage(box->generateMessage());
					box->setForceCloseDistance(5.f);
				   }

		if (group != NULL) {
			for (int i = 0; i < group->getGroupSize(); i++) {
				ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);

				if (groupedCreature != NULL && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 10.0f) && groupedCreature != creature) {
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

		if (group == NULL) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                        box->setPromptTitle("Dungeon Teleport Rules");
		                        box->setPromptText("You must be in a group of 2 or more to use this option, All party members must be within 15 meeters of you for them to be teleported or they risk being left behind");
		                        box->setOkButton(true, "@cancel");
		                        box->setUsingObject(creature);
		                        creature->getPlayerObject()->addSuiBox(box);
		                        creature->sendMessage(box->generateMessage());
					box->setForceCloseDistance(5.f);
				   }

		if (group != NULL) {
			for (int i = 0; i < group->getGroupSize(); i++) {
				ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);

				if (groupedCreature != NULL && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 10.0f) && groupedCreature != creature) {
						Locker locker(groupedCreature);
		                                groupedCreature->switchZone("dungeon2", -11.5, 0.2, -121.8, 14200872);
						groupedCreature->playEffect("clienteffect/mus_relay_activate.cef", "");
						locker.release();
				}
			}
			
			creature->switchZone("dungeon2", -11.5, 0.2, -121.8, 14200872);
			creature->playEffect("clienteffect/mus_relay_activate.cef", "");
		}
	}

	if (selectedID == 222) {

		ManagedReference<GroupObject*> group = creature->getGroup();

		if (group == NULL) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                        box->setPromptTitle("Dungeon Teleport Rules");
		                        box->setPromptText("You must be in a group of 2 or more to use this option, All party members must be within 15 meeters of you for them to be teleported or they risk being left behind");
		                        box->setOkButton(true, "@cancel");
		                        box->setUsingObject(creature);
		                        creature->getPlayerObject()->addSuiBox(box);
		                        creature->sendMessage(box->generateMessage());
					box->setForceCloseDistance(5.f);
				   }

		if (group != NULL) {
			for (int i = 0; i < group->getGroupSize(); i++) {
				ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);

				if (groupedCreature != NULL && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 10.0f) && groupedCreature != creature) {
						Locker locker(groupedCreature);
		                                groupedCreature->switchZone("dungeon2", 6193, 250, -5978, 0);
						groupedCreature->playEffect("clienteffect/mus_relay_activate.cef", "");
						locker.release();
				}
			}
			
			creature->switchZone("dungeon2", 6193, 250, -5978, 0);
			creature->playEffect("clienteffect/mus_relay_activate.cef", "");
		}
	}

	if (selectedID == 223) {

		ManagedReference<GroupObject*> group = creature->getGroup();

		if (group == NULL) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                        box->setPromptTitle("Dungeon Teleport Rules");
		                        box->setPromptText("You must be in a group of 2 or more to use this option, All party members must be within 15 meeters of you for them to be teleported or they risk being left behind");
		                        box->setOkButton(true, "@cancel");
		                        box->setUsingObject(creature);
		                        creature->getPlayerObject()->addSuiBox(box);
		                        creature->sendMessage(box->generateMessage());
					box->setForceCloseDistance(5.f);
				   }

		if (group != NULL) {
			for (int i = 0; i < group->getGroupSize(); i++) {
				ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);

				if (groupedCreature != NULL && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 10.0f) && groupedCreature != creature) {
						Locker locker(groupedCreature);
		                                groupedCreature->switchZone("dungeon2", 89.1, -14.7, 300.1, 14201134);
						groupedCreature->playEffect("clienteffect/mus_relay_activate.cef", "");
						locker.release();
				}
			}
			
			creature->switchZone("dungeon2", 89.1, -14.7, 300.1, 14201134);
			creature->playEffect("clienteffect/mus_relay_activate.cef", "");
		}
	}

	if (selectedID == 224) {

		ManagedReference<GroupObject*> group = creature->getGroup();

		if (group == NULL) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                        box->setPromptTitle("Dungeon Teleport Rules");
		                        box->setPromptText("You must be in a group of 2 or more to use this option, All party members must be within 15 meeters of you for them to be teleported or they risk being left behind");
		                        box->setOkButton(true, "@cancel");
		                        box->setUsingObject(creature);
		                        creature->getPlayerObject()->addSuiBox(box);
		                        creature->sendMessage(box->generateMessage());
					box->setForceCloseDistance(5.f);
				   }

		if (group != NULL) {
			for (int i = 0; i < group->getGroupSize(); i++) {
				ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);

				if (groupedCreature != NULL && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 10.0f) && groupedCreature != creature) {
						Locker locker(groupedCreature);
		                                groupedCreature->switchZone("dungeon2", 0.1, 0.0, 42.2, 14200863);
						groupedCreature->playEffect("clienteffect/mus_relay_activate.cef", "");
						locker.release();
				}
			}
			
			creature->switchZone("dungeon2", 0.1, 0.0, 42.2, 14200863);
			creature->playEffect("clienteffect/mus_relay_activate.cef", "");
		}
	}

	if (selectedID == 225) {

		ManagedReference<GroupObject*> group = creature->getGroup();

		if (group == NULL) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                        box->setPromptTitle("Dungeon Teleport Rules");
		                        box->setPromptText("You must be in a group of 2 or more to use this option, All party members must be within 15 meeters of you for them to be teleported or they risk being left behind");
		                        box->setOkButton(true, "@cancel");
		                        box->setUsingObject(creature);
		                        creature->getPlayerObject()->addSuiBox(box);
		                        creature->sendMessage(box->generateMessage());
					box->setForceCloseDistance(5.f);
				   }

		if (group != NULL) {
			for (int i = 0; i < group->getGroupSize(); i++) {
				ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);

				if (groupedCreature != NULL && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 10.0f) && groupedCreature != creature) {
						Locker locker(groupedCreature);
		                                groupedCreature->switchZone("dungeon2", 13.9, 173.8, 14.6, 14201198);
						groupedCreature->playEffect("clienteffect/mus_relay_activate.cef", "");
						locker.release();
				}
			}
			
			creature->switchZone("dungeon2", 13.9, 173.8, 14.6, 14201198);
			creature->playEffect("clienteffect/mus_relay_activate.cef", "");
		}
	}

	if (selectedID == 226) {

		ManagedReference<GroupObject*> group = creature->getGroup();

		if (group == NULL) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                        box->setPromptTitle("Dungeon Teleport Rules");
		                        box->setPromptText("You must be in a group of 2 or more to use this option, All party members must be within 15 meeters of you for them to be teleported or they risk being left behind");
		                        box->setOkButton(true, "@cancel");
		                        box->setUsingObject(creature);
		                        creature->getPlayerObject()->addSuiBox(box);
		                        creature->sendMessage(box->generateMessage());
					box->setForceCloseDistance(5.f);
				   }

		if (group != NULL) {
			for (int i = 0; i < group->getGroupSize(); i++) {
				ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);

				if (groupedCreature != NULL && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 10.0f) && groupedCreature != creature) {
						Locker locker(groupedCreature);
		                                groupedCreature->switchZone("kashyyyk", -4.685, -1.02156, -4.1078, 6296349);
						groupedCreature->playEffect("clienteffect/mus_relay_activate.cef", "");
						locker.release();
				}
			}
			
			creature->switchZone("kashyyyk", -4.685, -1.02156, -4.1078, 6296349);
			creature->playEffect("clienteffect/mus_relay_activate.cef", "");
		}
	}

	if (selectedID == 227) {

		ManagedReference<GroupObject*> group = creature->getGroup();

		if (group == NULL) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                        box->setPromptTitle("Dungeon Teleport Rules");
		                        box->setPromptText("You must be in a group of 2 or more to use this option, All party members must be within 15 meeters of you for them to be teleported or they risk being left behind");
		                        box->setOkButton(true, "@cancel");
		                        box->setUsingObject(creature);
		                        creature->getPlayerObject()->addSuiBox(box);
		                        creature->sendMessage(box->generateMessage());
					box->setForceCloseDistance(5.f);
				   }

		if (group != NULL) {
			for (int i = 0; i < group->getGroupSize(); i++) {
				ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);

				if (groupedCreature != NULL && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 10.0f) && groupedCreature != creature) {
						Locker locker(groupedCreature);
		                                groupedCreature->switchZone("dungeon2", 19.3, 0.1, 0.5, 14201104);
						groupedCreature->playEffect("clienteffect/mus_relay_activate.cef", "");
						locker.release();
				}
			}
			
			creature->switchZone("dungeon2", 19.3, 0.1, 0.5, 14201104);
			creature->playEffect("clienteffect/mus_relay_activate.cef", "");
		}
	}

	if (selectedID == 228) {

		ManagedReference<GroupObject*> group = creature->getGroup();

		if (group == NULL) {
		                ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		                        box->setPromptTitle("Dungeon Teleport Rules");
		                        box->setPromptText("You must be in a group of 2 or more to use this option, All party members must be within 15 meeters of you for them to be teleported or they risk being left behind");
		                        box->setOkButton(true, "@cancel");
		                        box->setUsingObject(creature);
		                        creature->getPlayerObject()->addSuiBox(box);
		                        creature->sendMessage(box->generateMessage());
					box->setForceCloseDistance(5.f);
				   }

		if (group != NULL) {
			for (int i = 0; i < group->getGroupSize(); i++) {
				ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);

				if (groupedCreature != NULL && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 10.0f) && groupedCreature != creature) {
						Locker locker(groupedCreature);
		                                groupedCreature->switchZone("dungeon1", 7, 172.3, 300, 4336867);
						groupedCreature->playEffect("clienteffect/mus_relay_activate.cef", "");
						locker.release();
				}
			}
			
			creature->switchZone("dungeon1", 7, 172.3, 300, 4336867);
			creature->playEffect("clienteffect/mus_relay_activate.cef", "");
		}
	}
	return 0;
}

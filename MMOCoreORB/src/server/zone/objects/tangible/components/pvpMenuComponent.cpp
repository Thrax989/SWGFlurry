/*
* pvpMenuComponent.cpp
*
* Created on: 1/1/2019
*	 Author: Toxic
*  
*/

#include "pvpMenuComponent.h"
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
#include "server/zone/objects/player/FactionStatus.h"

void pvpMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {
		TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);
		ManagedReference<PlayerObject*> ghost = player->getPlayerObject();
	    menuResponse->addRadialMenuItem(213, 3, "Broadcast Server Message PvP"); //Server Broadcast Pvp LFG
	   	menuResponse->addRadialMenuItem(214, 3, "Teleport Out Of Arena"); //Teleport Out Of Arena
		menuResponse->addRadialMenuItem(217, 3, "PvP Registration Menu");
		menuResponse->addRadialMenuItemToRadialID(217, 221, 3, "Imperial"); //PvP Imperial Registration
		menuResponse->addRadialMenuItemToRadialID(217, 222, 3, "Rebel"); //PvP Rebel Registration
}

int pvpMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {

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
 			zBroadcast << "\\#00E604" << playerName << " \\#63C8F9 Is Looking To Join A PvP Group, They Are located At The PvP Arena On Tatooine.";
			creature->playEffect("clienteffect/mus_relay_activate.cef", "");
			creature->playEffect("clienteffect/death_trooper_infection_01.cef", "");
			creature->addCooldown("server_broadcast_group", 600 * 1000);// 10 min cooldown
			creature->getZoneServer()->getChatManager()->broadcastGalaxy(NULL, zBroadcast.toString());
		}
	}
	
	if (selectedID == 214) {
		ManagedReference<GroupObject*> group = creature->getGroup();
		for (int i = 0; i < group->getGroupSize(); i++) {
		ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);
		groupedCreature->setFactionStatus(FactionStatus::OVERT);
		groupedCreature->switchZone("tatooine", 4313, 5, -5141);
		creature->setFactionStatus(FactionStatus::OVERT);
		creature->switchZone("tatooine", 3372, 10, -5129;
		}
	}

	if (selectedID == 221) {

		ManagedReference<GroupObject*> group = creature->getGroup();

		if (group == NULL) {
			ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
			box->setPromptTitle("PvP Teleport Rules");
			box->setPromptText("1.)You must be in a group of 2 to use this option.\n\n2.)Your group Member must be within 15 meeters of this terminal when teleporting or they risk being left behind.");
			box->setOkButton(true, "@cancel");
			box->setUsingObject(creature);
			creature->getPlayerObject()->addSuiBox(box);
			creature->sendMessage(box->generateMessage());
			box->setForceCloseDistance(5.f);
		}

		if (group != NULL) {
				if (creature->getFaction() == 3679112276) {//Imperial
				for (int i = 0; i < group->getGroupSize(); i++) {
				ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);
				if (groupedCreature != NULL && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 15.0f) && groupedCreature != creature) {
					Locker locker(groupedCreature);
		        	groupedCreature->switchZone("tatooine", 3433, 5, -5117);
					groupedCreature->setFactionStatus(FactionStatus::OVERT);
					locker.release();
					}
				}
				creature->switchZone("tatooine", 4313, 5, -5141);
				creature->setFactionStatus(FactionStatus::OVERT);
				//Broadcast to Server Imperial Team Has Entered Arena
				String playerName = creature->getFirstName();
				StringBuffer zBroadcast;
				zBroadcast << "\\#00E604" << playerName << " \\#63C8F9 Team 1 (Imperials) Have Entered the pvp arena.";
				creature->getZoneServer()->getChatManager()->broadcastGalaxy(NULL, zBroadcast.toString());
			}
		}
	}

	if (selectedID == 222) {

		ManagedReference<GroupObject*> group = creature->getGroup();

		if (group == NULL) {
				ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
		            box->setPromptTitle("PvP Teleport Rules");
					box->setPromptText("1.)You must be in a group of 2 use this option.\n\n2.)Your group Member must be within 15 meeters of this terminal when teleporting or they risk being left behind.");
		            box->setOkButton(true, "@cancel");
		            box->setUsingObject(creature);
		            creature->getPlayerObject()->addSuiBox(box);
					creature->sendMessage(box->generateMessage());
					box->setForceCloseDistance(5.f);
				}
		if (group != NULL) {
				if (creature->getFaction() == 370444368) {//Rebel
				for (int i = 0; i < group->getGroupSize(); i++) {
				ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);
				if (groupedCreature != NULL && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 15.0f) && groupedCreature != creature) {
					Locker locker(groupedCreature);
					groupedCreature->switchZone("tatooine", 3360, 5, -5099);
					groupedCreature->setFactionStatus(FactionStatus::OVERT);
					locker.release();
					}
				}
				creature->switchZone("tatooine", 3382, 5, -5074);
				creature->setFactionStatus(FactionStatus::OVERT);
				//Broadcast to Server Rebel Team Has Entered Arena
				String playerName = creature->getFirstName();
				StringBuffer zBroadcast;
				zBroadcast << "\\#00E604" << playerName << " \\#63C8F9 Team 2 (Rebels) Have Entered the pvp arena.";
				creature->getZoneServer()->getChatManager()->broadcastGalaxy(NULL, zBroadcast.toString());
			}
		}
	}
	return 0;
}

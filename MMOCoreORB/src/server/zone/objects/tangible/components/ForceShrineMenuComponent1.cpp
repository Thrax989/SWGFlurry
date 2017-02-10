/*
* ForceShrineMenuComponent1.cpp
*
* Created on: 01/23/2012
*	 Author: Valkyra
*  
*/

#include "ForceShrineMenuComponent1.h"

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

void ForceShrineMenuComponent1::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);
	ManagedReference<PlayerObject*> ghost = player->getPlayerObject();
	menuResponse->addRadialMenuItem(213, 3, "@jedi_trials:meditate"); // Meditate
	if (player->hasSkill("force_title_jedi_rank_02")) {
		menuResponse->addRadialMenuItem(214, 3, "Robe Replacement"); // Get Robes
	}
	if ((ghost->getJediState() >= 2 && ghost->getSpentJediSkillPoints() > 235) || ghost->getJediState() >=4) {
		menuResponse->addRadialMenuItem(215, 3, "Force Ranking");
		if (ghost->getJediState() == 2 && ghost->getSpentJediSkillPoints() > 235) {
			menuResponse->addRadialMenuItemToRadialID(215, 216, 3, "Join Sith Order"); // Join Sith
			menuResponse->addRadialMenuItemToRadialID(215, 217, 3, "Join Jedi Order"); // Join Jedi
		}
		if (ghost->getJediState() == 8) {
			menuResponse->addRadialMenuItemToRadialID(215, 218, 3, "Leave Sith Order"); // Leave Sith
		}
		if (ghost->getJediState() == 4) {
			menuResponse->addRadialMenuItemToRadialID(215, 219, 3, "Leave Jedi Order"); // Leave Jedi
		}
	}
	if (ghost->getAdminLevel() >= 6) {
		menuResponse->addRadialMenuItem(220, 3, "Admin Debug");
		menuResponse->addRadialMenuItemToRadialID(220, 221, 3, "Find New Jedi Trainer"); // SWGemu Trainer Method
		menuResponse->addRadialMenuItemToRadialID(220, 222, 3, "Leave FRS"); // Remove All FRS Skills and set Jedi Sate 1
		menuResponse->addRadialMenuItemToRadialID(220, 223, 3, "Set Jedi State 1"); // Set Jedi State to 1
		menuResponse->addRadialMenuItemToRadialID(220, 224, 3, "Show Total Jedi Skills"); // Show sum of jedi Skills
		menuResponse->addRadialMenuItemToRadialID(220, 225, 3, "Show Visibility"); // Show Faction Status
		menuResponse->addRadialMenuItemToRadialID(220, 226, 3, "Debug Screenplay State"); // Show Faction Status
		menuResponse->addRadialMenuItemToRadialID(220, 227, 3, "Force Overt"); // Show Faction Status
		menuResponse->addRadialMenuItemToRadialID(220, 228, 3, "Reset Jedi Screenplay State"); // Show Faction Status
	}
}

int ForceShrineMenuComponent1::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {
	/*if (selectedID != 213)
	return 0;

	if (!creature->hasSkill("force_title_jedi_novice"))
	return 0;*/
	ManagedReference<PlayerObject*> ghost = creature->getPlayerObject();
	if (ghost == NULL)
	return 0;
	if (creature->getPosture() != CreaturePosture::CROUCHED){
		creature->sendSystemMessage("@jedi_trials:show_respect"); // Must show respect
		return 0;
		} else {
		int rand = System::random(14) + 1;
		StringBuffer sysmsg;
		sysmsg << "@jedi_trials:force_shrine_wisdom_" << rand;
		creature->sendSystemMessage(sysmsg.toString());
		if (ghost->getJediState() >= 2) {
			int jediVis1 = ghost->getVisibility();
			StringBuffer messageVis;
			messageVis << "\\#00CC00 Your Visibility is at: " << jediVis1;
			creature->sendSystemMessage(messageVis.toString());
		}
	}

	ZoneServer* zserv = creature->getZoneServer();

	if (zserv == NULL)
		return 0;
	
	if (selectedID == 213) {
		if (!creature->hasSkill("force_title_jedi_rank_02") && (ghost->getJediState() >= 1)) {
			if (ghost->getJediState() > 2) {
				ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::NONE);
				box->setPromptTitle("Abandon FRS"); // You feel a tingle in the Force.
				box->setPromptText("Before Regaining Padawan you must leave the FRS");
				ghost->addSuiBox(box);
				creature->sendMessage(box->generateMessage());
				return 0;
				} else {
					//getChatManager()->broadcastGalaxy(NULL, "disturbance in the force")
					//ManagedReference<ZoneServer*> zoneServer;
				ghost->getZoneServer()->getChatManager()->broadcastGalaxy(NULL, "\\#00ff00IMPERIAL COMMUNICATION FROM THE REGIONAL GOVERNOR: Lord Vader has detected a vergence in the Force. Be on the lookout for any suspicious persons displaying unique or odd abilities. Lord Vader authorizes all citizens to use deadly force to eliminate this threat from the Empire.");
				ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::NONE);
				box->setPromptTitle("@jedi_trials:padawan_trials_title"); // Jedi Trials
				box->setPromptText("@jedi_trials:padawan_trials_completed");

				ghost->addSuiBox(box);
				creature->sendMessage(box->generateMessage());

				SkillManager::instance()->awardSkill("force_title_jedi_rank_02", creature, true, true, true);

				creature->playEffect("clienteffect/trap_electric_01.cef", "");

				PlayMusicMessage* pmm = new PlayMusicMessage("sound/music_become_jedi.snd");
				//PlayMusicMessage* pmm = new PlayMusicMessage("sound/music_become_jedi.snd");
				creature->sendMessage(pmm);

				ghost->setJediState(2);

				ManagedReference<SceneObject*> inventory = creature->getSlottedObject("inventory");
				//Check if inventory is full.
				if (inventory->isContainerFullRecursive()) {
					creature->sendSystemMessage("@jedi_spam:inventory_full_jedi_robe"); // You have too many items in your inventory. In order to get your Padawan Robe you must clear out at least one free slot.
					return 0;
				}
				ZoneServer* zserv = creature->getZoneServer();

				String PadawanRobe = "object/tangible/wearables/robe/robe_jedi_padawan.iff";
				ManagedReference<SceneObject*> padawanRobe = zserv->createObject(PadawanRobe.hashCode(), 1);
				if (inventory->transferObject(padawanRobe, -1)) {
					inventory->broadcastObject(padawanRobe, true);
					} else {
					padawanRobe->destroyObjectFromDatabase(true);
				}
				//findTrainerObject(creature);
				//Vector3 coords(-169.45, -4712.58, 0); // Scout Trainer outside starport
				//String zoneName = "corellia"; // Scout Trainer outside starport
				Vector3 coords(5294.95, -4123.03, 0); // Alex Jedi Master Trainer
				String zoneName = "dathomir"; // Alex Jedi Master Trainer
				ghost->setTrainerCoordinates(coords);
				ghost->setTrainerZoneName(zoneName); // For the Waypoint.
				creature->sendExecuteConsoleCommand("/pause 10;/findmytrainer");
			}
		}
	}
	if (selectedID == 214) {
		ManagedReference<SceneObject*> inventory = creature->getSlottedObject("inventory");
		//Check if inventory is full.
		if (inventory->isContainerFullRecursive()) {
			creature->sendSystemMessage("@jedi_spam:inventory_full_jedi_robe"); // You have too many items in your inventory. In order to get your Padawan Robe you must clear out at least one free slot.
			return 0;
		}
		ZoneServer* zserv = creature->getZoneServer();
		if (creature->hasSkill("force_title_jedi_rank_02")) {
			String PadawanRobe = "object/tangible/wearables/robe/robe_jedi_padawan.iff";
			ManagedReference<SceneObject*> padawanRobe = zserv->createObject(PadawanRobe.hashCode(), 1);
			if (inventory->transferObject(padawanRobe, -1)) {
				inventory->broadcastObject(padawanRobe, true);
				} else {
				padawanRobe->destroyObjectFromDatabase(true);
			}
		}
		if (creature->hasSkill("force_rank_dark_novice")) {
			String DarkRobe1 = "object/tangible/wearables/robe/robe_jedi_dark_s01.iff";
			ManagedReference<SceneObject*> darkRobe1 = zserv->createObject(DarkRobe1.hashCode(), 2);
			if (inventory->transferObject(darkRobe1, -1)) {
				inventory->broadcastObject(darkRobe1, true);
				} else {
				darkRobe1->destroyObjectFromDatabase(true);
			}
		}
		if (creature->hasSkill("force_rank_light_novice")) {
			String LightRobe1 = "object/tangible/wearables/robe/robe_jedi_light_s01.iff";
			ManagedReference<SceneObject*> lightRobe1 = zserv->createObject(LightRobe1.hashCode(), 3);
			if (inventory->transferObject(lightRobe1, -1)) {
				inventory->broadcastObject(lightRobe1, true);
				} else {
				lightRobe1->destroyObjectFromDatabase(true);
			}
		}
	}
	if (selectedID == 216 && (ghost->getJediState() == 2)) {
		if (creature->getFaction() == 3679112276) {
			creature->setScreenPlayState("jedi_FRS", 8);
			SkillManager::instance()->awardSkill("force_title_jedi_rank_03", creature, true, true, true);
			if (ghost->getExperience("force_rank_xp") != 0) {
					int amount = 0;
					int curExp = ghost->getExperience("force_rank_xp");
					amount -= curExp;
					ghost->getZoneServer()->getPlayerManager()->awardExperience(creature, "force_rank_xp", amount);
			}
			ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::NONE);
			box->setPromptTitle("Sith Order");
			box->setPromptText("Welcome to the Sith Order!");
			ghost->addSuiBox(box);
			creature->sendMessage(box->generateMessage());
			creature->playEffect("clienteffect/entertainer_dazzle_level_3.cef", ""); // Not sure if it's the right one for this.
			PlayMusicMessage* pmm = new PlayMusicMessage("sound/music_become_dark_jedi.snd");
			//PlayMusicMessage* pmm = new PlayMusicMessage("sound/music_become_dark_jedi.snd"); //Alex: this is SOE Version, I'm not a fan
			//PlayMusicMessage* pmm = new PlayMusicMessage("music/mus_baroque_recital_lp.mp3");
			creature->sendMessage(pmm);
			//Broadcast to Server
			String playerName = creature->getFirstName();
			StringBuffer zBroadcast;
			zBroadcast << "\\#ffb90f" << playerName << " has joined the \\#e51b1bSith Order!";
			ghost->getZoneServer()->getChatManager()->broadcastGalaxy(NULL, zBroadcast.toString());
			//Set Jedi State
			ghost->setJediState(8);
			creature->setFactionStatus(2);
			SkillManager::instance()->awardSkill("force_rank_dark_novice", creature, true, true, true);
			ManagedReference<SceneObject*> inventory = creature->getSlottedObject("inventory");
			//Check if inventory is full.
			if (inventory->isContainerFullRecursive()) {
				creature->sendSystemMessage("@jedi_spam:inventory_full_jedi_robe"); // You have too many items in your inventory. In order to get your Padawan Robe you must clear out at least one free slot.
				return 0;
			}
			ZoneServer* zserv = creature->getZoneServer();
			String DarkRobe1 = "object/tangible/wearables/robe/robe_jedi_dark_s01.iff";
			ManagedReference<SceneObject*> darkRobe1 = zserv->createObject(DarkRobe1.hashCode(), 2);
			if (inventory->transferObject(darkRobe1, -1)) {
				inventory->broadcastObject(darkRobe1, true);
				} else {
				darkRobe1->destroyObjectFromDatabase(true);
			}
		} else {
			ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::NONE);
			box->setPromptTitle("Incorect Faction");
			box->setPromptText("To join the Sith Order, you must be a member of the Empire.");
			ghost->addSuiBox(box);
			creature->sendMessage(box->generateMessage());
		}
	}
	if (selectedID == 217 && (ghost->getJediState() == 2)) {
		if (creature->getFaction() == 370444368) {
			creature->setScreenPlayState("jedi_FRS", 4);
			SkillManager::instance()->awardSkill("force_title_jedi_rank_03", creature, true, true, true);
			if (ghost->getExperience("force_rank_xp") != 0) {
					int amount = 0;
					int curExp = ghost->getExperience("force_rank_xp");
					amount -= curExp;
					ghost->getZoneServer()->getPlayerManager()->awardExperience(creature, "force_rank_xp", amount);
			}
			ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::NONE);
			box->setPromptTitle("Jedi Order");
			box->setPromptText("Welcome to the Jedi Order!");
			ghost->addSuiBox(box);
			creature->sendMessage(box->generateMessage());
			creature->playEffect("clienteffect/entertainer_dazzle_level_3.cef", ""); // Not sure if it's the right one for this.
			PlayMusicMessage* pmm = new PlayMusicMessage("sound/music_become_light_jedi.snd");
			//PlayMusicMessage* pmm = new PlayMusicMessage("sound/music_become_light_jedi.snd"); //Alex: this is SOE Version, I'm not a fan
			//PlayMusicMessage* pmm = new PlayMusicMessage("sound/music_jungle_amb_b.snd");
			creature->sendMessage(pmm);
			//Broadcast to Server
			String playerName = creature->getFirstName();
			StringBuffer zBroadcast;
			zBroadcast << "\\#ffb90f" << playerName << " has joined the \\#22b7f6Jedi Order!";
			ghost->getZoneServer()->getChatManager()->broadcastGalaxy(NULL, zBroadcast.toString());
			//Set Jedi State
			ghost->setJediState(4);
			creature->setFactionStatus(2);
			SkillManager::instance()->awardSkill("force_rank_light_novice", creature, true, true, true);
			ManagedReference<SceneObject*> inventory = creature->getSlottedObject("inventory");
			//Check if inventory is full.
			if (inventory->isContainerFullRecursive()) {
				creature->sendSystemMessage("@jedi_spam:inventory_full_jedi_robe"); // You have too many items in your inventory. In order to get your Padawan Robe you must clear out at least one free slot.
				return 0;
			}
			ZoneServer* zserv = creature->getZoneServer();
			String LightRobe1 = "object/tangible/wearables/robe/robe_jedi_light_s01.iff";
			ManagedReference<SceneObject*> lightRobe1 = zserv->createObject(LightRobe1.hashCode(), 3);
			if (inventory->transferObject(lightRobe1, -1)) {
				inventory->broadcastObject(lightRobe1, true);
				} else {
				lightRobe1->destroyObjectFromDatabase(true);
			}
		} else {
			ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::NONE);
			box->setPromptTitle("Incorect Faction");
			box->setPromptText("To join the Jedi Order, you must be a member of the Rebel Alliance.");
			ghost->addSuiBox(box);
			creature->sendMessage(box->generateMessage());
		}
	}
	if (selectedID == 218) {
		if (creature->hasSkill("force_rank_dark_novice")) {
			/*ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::NONE);
			box->setPromptTitle("Sith Order");
			box->setPromptText("You must abandon your knowledge prior to leaving the Sith Order!");
			ghost->addSuiBox(box);
			creature->sendMessage(box->generateMessage());
			} else {*/
			SkillList* skillList = creature->getSkillList();
			while (creature->hasSkill("force_rank_dark_novice")) {
				for (int i = 0; i < skillList->size(); ++i) {
					Skill* skill = skillList->get(i);
					if (skill->getSkillName().indexOf("force_rank_") != -1){
						SkillManager::instance()->surrenderSkill(skill->getSkillName(), creature, true);
					}
					if (skill->getSkillName().indexOf("force_title_jedi_rank_03") != -1){
 						SkillManager::instance()->surrenderSkill(skill->getSkillName(), creature, true);
 					}
 					if (skill->getSkillName().indexOf("force_title_jedi_rank_04") != -1){
 						SkillManager::instance()->surrenderSkill(skill->getSkillName(), creature, true);
 					}
 					if (skill->getSkillName().indexOf("force_title_jedi_master") != -1){
 						SkillManager::instance()->surrenderSkill(skill->getSkillName(), creature, true);
 					}
				}
			}
			ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::NONE);
			box->setPromptTitle("Sith Order");
			box->setPromptText("You have left the Sith Order!");
			ghost->addSuiBox(box);
			creature->sendMessage(box->generateMessage());
			//Broadcast to Server
			String playerName = creature->getFirstName();
			StringBuffer zBroadcast;
			zBroadcast << "\\#ffb90f" << playerName << " has left the \\#e51b1bSith Order!";
			ghost->getZoneServer()->getChatManager()->broadcastGalaxy(NULL, zBroadcast.toString());
			//Set Jedi State
			//ghost->setJediState(2);
		}
		if (creature->getScreenPlayState("jedi_FRS") == 8) {
			creature->setScreenPlayState("jedi_FRS", 16);
		}
		if (ghost->getJediState() > 2) {
			ghost->setJediState(2);
		}
	}
	if (selectedID == 219) {
		if (creature->hasSkill("force_rank_light_novice")) {
			/*ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::NONE);
			box->setPromptTitle("Jedi Order");
			box->setPromptText("You must abandon your knowledge prior to leaving the Jedi Order!");
			ghost->addSuiBox(box);
			creature->sendMessage(box->generateMessage());
			} else {*/
			SkillList* skillList = creature->getSkillList();
			while (creature->hasSkill("force_rank_light_novice")) {
				for (int i = 0; i < skillList->size(); ++i) {
					Skill* skill = skillList->get(i);
					if (skill->getSkillName().indexOf("force_rank_") != -1){
						SkillManager::instance()->surrenderSkill(skill->getSkillName(), creature, true);
					}
					if (skill->getSkillName().indexOf("force_title_jedi_rank_03") != -1){
 						SkillManager::instance()->surrenderSkill(skill->getSkillName(), creature, true);
 					}
 					if (skill->getSkillName().indexOf("force_title_jedi_rank_04") != -1){
 						SkillManager::instance()->surrenderSkill(skill->getSkillName(), creature, true);
 					}
 					if (skill->getSkillName().indexOf("force_title_jedi_master") != -1){
 						SkillManager::instance()->surrenderSkill(skill->getSkillName(), creature, true);
 					}
				}
			}
			ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::NONE);
			box->setPromptTitle("Jedi Order");
			box->setPromptText("You have left the Jedi Order!");
			ghost->addSuiBox(box);
			creature->sendMessage(box->generateMessage());
			//Broadcast to Server
			String playerName = creature->getFirstName();
			StringBuffer zBroadcast;
			zBroadcast << "\\#ffb90f" << playerName << " has left the \\#22b7f6Jedi Order!";
			ghost->getZoneServer()->getChatManager()->broadcastGalaxy(NULL, zBroadcast.toString());
			//Set Jedi State
			//ghost->setJediState(2);
		}
		if (creature->getScreenPlayState("jedi_FRS") == 4) {
			creature->setScreenPlayState("jedi_FRS", 16);
		}
		if (ghost->getJediState() > 2) {
			ghost->setJediState(2);
		}
	}
	
	if (ghost->getAdminLevel() < 6)
		return 0;
	
	if (selectedID == 221) {
		//findTrainerObject(creature);
		//Vector3 coords(-169.45, -4712.58, 0); // Scout Trainer outside starport
		//String zoneName = "corellia"; // Scout Trainer outside starport
		Vector3 coords(5294.95, -4123.03, 0); // Alex Jedi Master Trainer
		String zoneName = "dathomir"; // Alex Jedi Master Trainer
		ghost->setTrainerCoordinates(coords);
		ghost->setTrainerZoneName(zoneName); // For the Waypoint.
		creature->sendExecuteConsoleCommand("/pause 10;/findmytrainer");
	}
	if (selectedID == 222) {
		SkillList* skillList = creature->getSkillList();
		while (creature->hasSkill("force_rank_dark_novice") || creature->hasSkill("force_rank_light_novice")) {
			for (int i = 0; i < skillList->size(); ++i) {
				Skill* skill = skillList->get(i);
				if (skill->getSkillName().indexOf("force_rank_") != -1){
					SkillManager::instance()->surrenderSkill(skill->getSkillName(), creature, true);
				}
			}
		}
		if (ghost->getJediState() > 2) {
			ghost->setJediState(2);
		}
	}
	if (selectedID == 223) {
		creature->setScreenPlayState("VillageJediProgression", 1);
		ghost->setJediState(1);
		ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::NONE);
		box->setPromptTitle("@quest/force_sensitive/intro:force_sensitive"); // You feel a tingle in the Force.
		box->setPromptText("Perhaps you should meditate somewhere alone...");
		ghost->addSuiBox(box);
		creature->sendMessage(box->generateMessage());
	}
	if (selectedID == 224) {
		//String jediSkillPoints = "How to pass int to strings?";
		int jediSkillPoints = ghost->getSpentJediSkillPoints();
		StringBuffer message;
		message << "Jedi Skill Points: " << jediSkillPoints;
		ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::NONE);
		box->setPromptTitle("Jedi SkillPoints"); // You feel a tingle in the Force.
		box->setPromptText(message.toString());
		ghost->addSuiBox(box);
		creature->sendMessage(box->generateMessage());
	}
	if (selectedID == 225) {
		int jediVis = ghost->getVisibility();
		StringBuffer message;
		message << "Your Visibility is at: " << jediVis;
		ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::NONE);
		box->setPromptTitle("Visibility"); // You feel a tingle in the Force.
		box->setPromptText(message.toString());
		ghost->addSuiBox(box);
		creature->sendMessage(box->generateMessage());
	}
		if (selectedID == 226) {
		StringBuffer message;
		message
		<< "Your Village ScreenPlay is: "
		<< creature->getScreenPlayState("VillageJediProgression")
		<< " | Your FRS State is: "
		<< creature->getScreenPlayState("jedi_FRS");
		ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::NONE);
		box->setPromptTitle("Jedi Screen Play State"); // You feel a tingle in the Force.
		box->setPromptText(message.toString());
		ghost->addSuiBox(box);
		creature->sendMessage(box->generateMessage());
	}
	if (selectedID == 227) {
		creature->setFactionStatus(2);
		ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::NONE);
		box->setPromptTitle("Faction Status"); // You feel a tingle in the Force.
		box->setPromptText("Your Faction Status is set to 2");
		ghost->addSuiBox(box);
		creature->sendMessage(box->generateMessage());
	}
	if (selectedID == 228) {
		creature->setScreenPlayState("VillageJediProgression", 0);
		creature->sendSystemMessage("Your Unlock Screenplay has been set to 0");
	}
	return 0;
}

void ForceShrineMenuComponent1::findTrainerObject(CreatureObject* player, PlayerObject* ghost) const {

	// Trainer number. Pick a random trainer, there are at least 600 in the galaxy.
	ZoneServer* zserv = player->getZoneServer();
	Vector<String> trainerTypes;

	// Map categories defined here.
	trainerTypes.add("trainer_brawler");
	trainerTypes.add("trainer_artisan");
	trainerTypes.add("trainer_scout");
	trainerTypes.add("trainer_marksman");
	trainerTypes.add("trainer_entertainer");
	trainerTypes.add("trainer_medic");

	bool found = false;
	Vector3 coords;
	String zoneName = "";

	// This specifies the number of attempts at a retry. The first is min, second int is max amount of attempts.
	int counter = 0;
	int retriesCounter = 40;

	while (!found && counter < retriesCounter) {
		// Increment counter to prevent infinite loop.
		++counter;

		Zone* zone = zserv->getZone(System::random(zserv->getZoneCount() - 1));

		if (zone == NULL || zone->getZoneName() == "tutorial") {
			continue;
		}


		SortedVector<ManagedReference<SceneObject*> > trainers = zone->getPlanetaryObjectList(trainerTypes.get(System::random(trainerTypes.size() - 1)));

		int size = trainers.size();

		if (size <= 0) {
			continue;
		}

		ManagedReference<SceneObject*> trainer = trainers.get(System::random(size - 1));

		if (trainer == NULL) {
			continue;
		}

		ManagedReference<CreatureObject*> trainerCreo = trainer.castTo<CreatureObject*>();

		if (trainerCreo == NULL) {
			continue;
		}

		if (!(trainerCreo->getOptionsBitmask() & OptionBitmask::CONVERSE)) {
			continue;
		}

		ManagedReference<CityRegion*> city = trainerCreo->getCityRegion();

		// Make sure it's not a player-city trainer.
		if (city != NULL && !city->isClientRegion()){
			continue;
		}

		zoneName = trainerCreo.get()->getZone()->getZoneName();
		coords = trainerCreo.get()->getWorldPosition();
		found = true;

	}

	ghost->setTrainerCoordinates(coords);
	ghost->setTrainerZoneName(zoneName); // For the waypoint.
}

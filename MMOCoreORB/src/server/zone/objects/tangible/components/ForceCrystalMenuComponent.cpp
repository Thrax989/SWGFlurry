/*
 * ForceCrystalMenuComponent.cpp
 */
/**
 * 
 * Authors TOXIC
 * 
 * PLEASE DO NOT STEAL OUR WORK
 * ASK BEFOR USING
 * Contact Me Here http://projectphoenix.com.shivtr.com/
 * Created on: 9/19/2016
 */

#include "ForceCrystalMenuComponent.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/ZoneServer.h"
#include "ForceShrineMenuComponent1.h"
#include "server/zone/objects/player/sui/messagebox/SuiMessageBox.h"
#include "server/zone/managers/skill/SkillManager.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/zone/managers/creature/CreatureManager.h"
#include "server/zone/objects/region/CityRegion.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/chat/ChatManager.h"
#include "server/zone/managers/visibility/VisibilityManager.h"
#include "server/zone/objects/player/sui/callbacks/BountyHuntSuiCallback.h"
#include "server/zone/objects/player/sui/inputbox/SuiInputBox.h"

void ForceCrystalMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);

	menuResponse->addRadialMenuItem(20, 3, "Resurrection");
}

int ForceCrystalMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {
	if (selectedID != 20)
		return 0;
	//creature->sendExecuteConsoleCommand("/ui action questJournal");
	ManagedReference<PlayerObject*> ghost = creature->getPlayerObject();
	if (ghost == NULL)
	return 0;
	
	if (creature->getPosture() != CreaturePosture::DEAD){
		creature->sendSystemMessage("@jedi_trials:show_respect");
		return 0;
		} else {
		int rand = System::random(14) + 1;
		StringBuffer sysmsg;
		sysmsg << "@jedi_trials:force_shrine_wisdom_" << rand;
		creature->sendSystemMessage(sysmsg.toString());
		if (ghost->getJediState() >= 2) {
			int jediVis1 = ghost->getVisibility();
			PlayMusicMessage* pmm = new PlayMusicMessage("sound/music_become_light_jedi.snd");
  			ghost->sendMessage(pmm);
			Zone* zone = creature->getZone();
			//Broadcast to Server
 			String playerName = creature->getFirstName();
 			StringBuffer zBroadcast;
 			zBroadcast << "\\#00E604" << playerName << " \\#63C8F9 Has Resurrect Themselves";
 			creature->getZoneServer()->getChatManager()->broadcastGalaxy(NULL, zBroadcast.toString());
			StringBuffer messageVis;
			messageVis << "\\#00CC00 Your Visibility is at: " << jediVis1;
			creature->sendSystemMessage(messageVis.toString());
		}
	}

	creature->playEffect("clienteffect/trap_electric_01.cef", "");
	creature->setPosture(CreaturePosture::UPRIGHT);
	creature->setFactionStatus(2);
	sceneObject->destroyObjectFromWorld(true);
	return 0;
}

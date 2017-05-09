/*
 * ForceBuffMenuComponent.cpp
 * Authors TOXIC
 * Created on: 5/9/2017
 */

#include "ForceBuffMenuComponent.h"
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
#include "templates/params/creature/CreatureAttribute.h"


void ForceBuffMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);


if (player->hasSkill("force_title_jedi_novice"))
	menuResponse->addRadialMenuItem(20, 3, "Force Buff");
}

int ForceBuffMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {
	if (selectedID != 20)
		return 0;
	ManagedReference<PlayerObject*> ghost = creature->getPlayerObject();
	if (ghost == NULL)
	return 0;
	if (creature->getPosture() != CreaturePosture::CROUCHED){
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
 			zBroadcast << "\\#00E604" << playerName << " \\#63C8F9 Has used a force buff";
 			creature->getZoneServer()->getChatManager()->broadcastGalaxy(NULL, zBroadcast.toString());
			StringBuffer messageVis;
			messageVis << "\\#00CC00 Your Visibility is at: " << jediVis1;
			creature->sendSystemMessage(messageVis.toString());
		}
	}

	creature->playEffect("clienteffect/bacta_bomb.cef", "");
	creature->healDamage(creature, CreatureAttribute::HEALTH, 5000);
	creature->healDamage(creature, CreatureAttribute::ACTION, 5000);
	creature->healDamage(creature, CreatureAttribute::MIND, 5000);
	creature->setPosture(CreaturePosture::UPRIGHT);
	sceneObject->destroyObjectFromWorld(true);
	return 0;
}

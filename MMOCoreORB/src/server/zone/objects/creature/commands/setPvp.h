#ifndef SETPVPCOMMAND_H_

#define SETPVPCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/tangible/terminal/characterbuilder/CharacterBuilderTerminal.h"
#include "server/zone/objects/player/sui/callbacks/BountyHuntSuiCallback.h"
#include "server/zone/objects/player/sui/inputbox/SuiInputBox.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/zone/objects/player/sui/messagebox/SuiMessageBox.h"
#include "server/zone/objects/building/BuildingObject.h"
#include "server/zone/objects/region/CityRegion.h"
#include "server/zone/objects/installation/harvester/HarvesterObject.h"
#include "server/zone/objects/installation/factory/FactoryObject.h"
#include "server/zone/managers/stringid/StringIdManager.h"
#include "server/zone/managers/mission/MissionManager.h"
#include "server/zone/managers/collision/CollisionManager.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/managers/visibility/tasks/VisibilityDecayTask.h"
#include "server/zone/Zone.h"
#include "templates/faction/Factions.h"
#include "server/zone/objects/player/FactionStatus.h"
class setPvpCommand : public QueueCommand {
public:

	setPvpCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {


		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

                unsigned int faction = creature->getFaction();

                if (faction != Factions::FACTIONIMPERIAL && faction != Factions::FACTIONREBEL)
                        return GENERALERROR;

				if(creature->hasSkill("force_rank_dark_novice") || creature->hasSkill("force_rank_light_novice") || creature->hasSkill("combat_jedi_novice")){
					creature->sendSystemMessage("You may not use this command.");
					return GENERALERROR;
				}

                if (creature->hasSkill("force_title_jedi_rank_03")) {
                    creature->sendSystemMessage("You must leave the FRS first.");
                        return GENERALERROR;
				}
		
                if (creature->getFutureFactionStatus() != -1)
                        return GENERALERROR;	

				if (!creature->checkCooldownRecovery("setpvp")){
					creature->sendSystemMessage("You have already used this command recently.");
					return GENERALERROR;
				}					

                int curStatus = creature->getFactionStatus();

				ManagedReference<PlayerObject*> player = creature->getPlayerObject();
		
				if (player != nullptr){
					if (player->hasPvpTef()){
						creature->sendSystemMessage("You cannot use this while currently engaged in GCW combat.");
								return GENERALERROR;

					}
				}			
					
                if (curStatus == FactionStatus::OVERT)
                {
                        creature->sendSystemMessage("You will be flagged as Combatant in 15 seconds.");
                        creature->setFutureFactionStatus(FactionStatus::COVERT);

                        ManagedReference<CreatureObject*> creo = creature->asCreatureObject();

                        Core::getTaskManager()->scheduleTask([creo]{
                                ManagedReference<PlayerObject*> playerDelayed = creo->getPlayerObject();

							if (playerDelayed != nullptr){
								if (playerDelayed->hasPvpTef()){
									creo->sendSystemMessage("You have recently engaged in GCW combat, request to leave special forces has been denied.");	
								}
								
                                if(creo != nullptr && !playerDelayed->hasPvpTef()) {
                                    Locker locker(creo);
                                    creo->setFactionStatus(FactionStatus::COVERT);
                                }
							}	
                        }, "UpdateFactionStatusTask", 15000);
						creature->updateCooldownTimer("setpvp", 15000); // 15s cooldown
                }
                else
                {

                        creature->sendSystemMessage("You will be flagged as Special Forces in 15 seconds.");
                        creature->setFutureFactionStatus(FactionStatus::OVERT);

                        ManagedReference<CreatureObject*> creo = creature->asCreatureObject();

                        Core::getTaskManager()->scheduleTask([creo]{
                                if(creo != nullptr) {
                                        Locker locker(creo);

                                        creo->setFactionStatus(FactionStatus::OVERT);
                                }
                        }, "UpdateFactionStatusTask", 15000);
						creature->updateCooldownTimer("setpvp", 15000); // 15s cooldown
				}

                return SUCCESS;
	}

};

#endif //SETPVPCOMMAND_H_

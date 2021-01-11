/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef FINDMYTRAINERCOMMAND_H_
#define FINDMYTRAINERCOMMAND_H_

class FindMyTrainerCommand : public QueueCommand {
public:

	FindMyTrainerCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if (!creature->isPlayerCreature())
			return GENERALERROR;

		PlayerObject* ghost = creature->getPlayerObject();

		if (ghost == nullptr)
			return GENERALERROR;

		if (ghost->isAdmin()) {

			ManagedReference<SceneObject* > targetObject =
					server->getZoneServer()->getObject(target);

			ManagedReference<CreatureObject*> player = NULL;

			StringTokenizer args(arguments.toString());

			if(targetObject == NULL || !targetObject->isPlayerCreature()) {

				String firstName;
				if(args.hasMoreTokens()) {
					args.getStringToken(firstName);
					player = server->getZoneServer()->getPlayerManager()->getPlayer(firstName);
				}

			} else {
				player = cast<CreatureObject*>( targetObject.get());
			}

			if (player == NULL) {
				creature->sendSystemMessage("invalid arguments for command:  /findmytrainer <firstname> <reset>");
				return GENERALERROR;
			}

			String action;
			args.getStringToken(action);
			if (action == "reset") {
				PlayerObject* playerObject = player->getPlayerObject();
				if (playerObject->getJediState() < 2 || !player->hasSkill("force_title_jedi_rank_02"))
						return GENERALERROR;
				setJediTrainer(playerObject);
				creature->sendSystemMessage("Target player jedi skill trainer has been updated");
				player->sendSystemMessage("Your jedi skill trainer has been updated.  Use /findmytrainer for the new location.");
				return SUCCESS;
			}
		}

		if (ghost->getJediState() < 1)
			return GENERALERROR;

		String planet = ghost->getTrainerZoneName();

		if (planet == "") {
			setJediTrainer(ghost);
			planet = ghost->getTrainerZoneName();
		} else {
			ZoneServer* zoneServer = ServerCore::getZoneServer();
			Zone* trainerZone = zoneServer->getZone(planet);

			if (trainerZone == nullptr) {
				setJediTrainer(ghost);
				planet = ghost->getTrainerZoneName();
			}
		}

		uint32 planetCRC = planet.hashCode();

		Vector3 coords = ghost->getTrainerCoordinates();

		String name = "@jedi_spam:trainer_waypoint_name";

		ManagedReference<WaypointObject*> obj = ( server->getZoneServer()->createObject(0xc456e788, 1)).castTo<WaypointObject*>();

		Locker locker(obj);

		obj->setPlanetCRC(planetCRC);
		obj->setPosition(coords.getX(), 0, coords.getY());
		obj->setCustomObjectName(name, false);

		ghost->addWaypoint(obj, true, true);

		creature->sendSystemMessage("@jedi_spam:waypoint_created_to_trainer");

		return SUCCESS;
	}

	static void setJediTrainer(PlayerObject* ghost) {
		ZoneServer* zServ = ghost->getZoneServer();

		if (zServ == nullptr)
			return;

		Vector<ManagedReference<SceneObject*> > trainers;
		Vector<String> trainerTypes;

		// Map categories defined here.
		trainerTypes.add("trainer_brawler");
		trainerTypes.add("trainer_artisan");
		trainerTypes.add("trainer_scout");
		trainerTypes.add("trainer_marksman");
		trainerTypes.add("trainer_entertainer");
		trainerTypes.add("trainer_medic");

		// Trainer number. Pick a random trainer, there are at least 600 in the galaxy.
		for (int i=0; i < zServ->getZoneCount(); ++i) {
			Zone* zone = zServ->getZone(i);
			for (int j=0; j < trainerTypes.size(); ++j) {
				SortedVector<ManagedReference<SceneObject*> > objectList = zone->getPlanetaryObjectList(trainerTypes.get(j));
				trainers.addAll(objectList);
			}
		}

		bool found = false;
		Vector3 coords;
		String zoneName = "";
		int size = trainers.size();

		if (size <= 0)
			return;

		while (!found) {
			SceneObject* trainer = trainers.get(System::random(size - 1));

			if (trainer == nullptr)
				continue;

			CreatureObject* trainerCreo = trainer->asCreatureObject();

			if (trainerCreo == nullptr)
				continue;

			Zone* trainerZone = trainerCreo->getZone();

			if (trainerZone == nullptr || trainerZone->getZoneName() == "tutorial")
				continue;

			if (!(trainerCreo->getOptionsBitmask() & OptionBitmask::CONVERSE))
				continue;

			ManagedReference<CityRegion*> city = trainerCreo->getCityRegion().get();

			// Make sure it's not a player-city trainer.
			if (city != nullptr && !city->isClientRegion())
				continue;

			zoneName = trainerZone->getZoneName();
			coords = trainerCreo->getWorldPosition();
			found = true;

		}

		ghost->setTrainerCoordinates(coords);
		ghost->setTrainerZoneName(zoneName); // For the waypoint.
	}

};

#endif //FINDMYTRAINERCOMMAND_H_

/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef SETRANKCOMMAND_H_
#define SETRANKCOMMAND_H_
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/building/BuildingObject.h"
#include "server/zone/packets/object/DataTransform.h"
#include "server/zone/packets/object/DataTransformWithParent.h"
#include "templates/appearance/PortalLayout.h"
#include "templates/appearance/FloorMesh.h"
#include "templates/appearance/MeshAppearanceTemplate.h"
#include "server/zone/objects/tangible/components/vendor/VendorDataComponent.h"

class SetRankCommand : public QueueCommand {
public:

	SetRankCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	//returns false on collision detection
	bool checkCollision(SceneObject* object, Vector3& endPoint) const {
		return CollisionManager::checkLineOfSightInParentCell(object, endPoint);
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {
		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		ManagedReference<PlayerObject*> ghost = creature->getPlayerObject();

		if (ghost == nullptr)
			return GENERALERROR;

		ManagedReference<SceneObject*> obj = server->getZoneServer()->getObject(target);

		if (obj == nullptr || !obj->isTangibleObject() || obj->isPlayerCreature() || obj->isPet()) {
			if (ghost->getAdminLevel() >= 15 && obj != nullptr) {
				creature->sendSystemMessage("Ingoring Movement Check - God"); //What do you want to move?
			} else {
				creature->sendSystemMessage("@player_structure:move_what"); //What do you want to move?
				return GENERALERROR;
			}
		}

		ManagedReference<SceneObject*> rootParent = obj->getRootParent();
		ManagedReference<SceneObject*> creatureParent = creature->getRootParent();

		if (creatureParent == nullptr || !creatureParent->isBuildingObject()) {
			if (ghost->getAdminLevel() >= 15) {
				creature->sendSystemMessage("Ingoring Building Check - God"); //What do you want to move?
			} else {
				creature->sendSystemMessage("@player_structure:must_be_in_building"); //You must be in a building to do that.
				return GENERALERROR;
				BuildingObject* buildingObject = cast<BuildingObject*>( creatureParent.get());

				if (buildingObject == nullptr || obj->getRootParent() != buildingObject || buildingObject->containsChildObject(obj)) {
						creature->sendSystemMessage("@player_structure:move_what"); //What do you want to move?
						return GENERALERROR;
				}

				if (buildingObject != rootParent || !buildingObject->isOnAdminList(creature)) {
						creature->sendSystemMessage("@player_structure:must_be_admin"); //You must be a building admin to do that.
						return GENERALERROR;
				}

				if (buildingObject->isGCWBase()) {
					creature->sendSystemMessage("@player_structure:no_move_hq"); // You may not move or rotate objects inside a factional headquarters.
					return GENERALERROR;
				}
			}
		}

		if (obj->isVendor()) {
			creature->sendSystemMessage("@player_structure:cant_move_vendor"); // To move a vendor, pick it up and drop it again at the new location.
			return GENERALERROR;
		}

		

		String dir;
		float dist = 0.f;

		try {
			UnicodeTokenizer tokenizer(arguments);
			tokenizer.getStringToken(dir);
			dir = dir.toLowerCase();

			if (Character::isDigit(dir.charAt(0)))
				throw Exception("Please specify the name of the object before the direction and distance.");

			if (ghost->getAdminLevel() >= 15) {
				if (dir != "up" && dir != "down" && dir != "forward" && dir != "back" && dir != "x" && dir != "z" && dir != "y")
				throw Exception("@player_structure:format_movefurniture_distance"); //Format: /moveFurniture <FORWARD/BACK/UP/DOWN> <distance>
			} else {
				if (dir != "up" && dir != "down" && dir != "forward" && dir != "back")
				throw Exception("@player_structure:format_movefurniture_distance"); //Format: /moveFurniture <FORWARD/BACK/UP/DOWN> <distance>
			}

			dist = tokenizer.getIntToken();

			if (dist < 1.f || dist > 500.f) {
				if (ghost->getAdminLevel() >=15) {
					creature->sendSystemMessage("Ingoring Limitation - GOD"); // God Mode - Ignoring Limitation.
				} else {
					throw Exception("@player_structure:movefurniture_params"); //The amount to move must be between 1 and 500.
				}
			}

		} catch (ArrayIndexOutOfBoundsException& e) {
			throw Exception("@player_structure:format_movefurniture_distance"); //Format: /moveFurniture <FORWARD/BACK/UP/DOWN> <distance>
			return INVALIDPARAMETERS;

		} catch (Exception& e) {
			creature->sendSystemMessage(e.getMessage());
			return INVALIDPARAMETERS;
		}

		float degrees = creature->getDirectionAngle();
		float radians = Math::deg2rad(degrees);

		if (dir != "x" && dir != "z" && dir != "y") {
			dist /= 100.0f;
		}

		float offsetX = dist * sin(radians);
		float offsetY = dist * cos(radians);

		float x = obj->getPositionX();
		float y = obj->getPositionY();
		float z = obj->getPositionZ();

		if (dir == "forward") {
			x += (offsetX);
			y += (offsetY);
		} else if (dir == "back") {
			x -= (offsetX);
			y -= (offsetY);
		} else if (dir == "up") {
			z += dist;
		} else if (dir == "down") {
			z -= dist;
		} else if (dir == "x") {
			x = dist;
		} else if (dir == "z") {
			z = dist;
		} else if (dir == "y") {
			y = dist;
		}

		Vector3 endPoint(x, y, z);

		if (!checkCollision(obj, endPoint)) {
			if (ghost->getAdminLevel() >= 15) {
				creature->sendSystemMessage("Ingoring Collision Check - Trusted Players Only"); //That is not a valid location.
			} else {
				creature->sendSystemMessage("@player_structure:not_valid_location"); //That is not a valid location.
				return GENERALERROR;
			}
		}

		obj->incrementMovementCounter();

		if (obj->getParent() != nullptr)
			obj->teleport(x, z, y, obj->getParent().get()->getObjectID());
		else
			obj->teleport(x, z, y);


		return SUCCESS;
	}

};

#endif //SETRANKCOMMAND_H_

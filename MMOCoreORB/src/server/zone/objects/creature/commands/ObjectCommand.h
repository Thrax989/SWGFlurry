/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef OBJECTCOMMAND_H_
#define OBJECTCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/managers/loot/LootManager.h"
#include "server/zone/managers/crafting/CraftingManager.h"
#include "server/zone/managers/crafting/ComponentMap.h"
#include "server/zone/managers/object/ObjectManager.h"
#include "server/zone/managers/skill/SkillModManager.h"

class ObjectCommand : public QueueCommand {
public:

	ObjectCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		StringTokenizer args(arguments.toString());

		try {
			String commandType;
			args.getStringToken(commandType);

			if (commandType.beginsWith("createitem")) {
				String objectTemplate;
				args.getStringToken(objectTemplate);

				ManagedReference<CraftingManager*> craftingManager = creature->getZoneServer()->getCraftingManager();
				if(craftingManager == NULL) {
					return GENERALERROR;
				}

				Reference<SharedObjectTemplate*> shot = TemplateManager::instance()->getTemplate(objectTemplate.hashCode());

				if (shot == NULL || !shot->isSharedTangibleObjectTemplate()) {
					creature->sendSystemMessage("Templates must be tangible objects, or descendants of tangible objects, only.");
					return INVALIDPARAMETERS;
				}

				ManagedReference<SceneObject*> inventory = creature->getSlottedObject("inventory");

				if (inventory == NULL || inventory->isContainerFullRecursive()) {
					creature->sendSystemMessage("Your inventory is full, so the item could not be created.");
					return INVALIDPARAMETERS;
				}

				ManagedReference<TangibleObject*> object = (server->getZoneServer()->createObject(shot->getServerObjectCRC(), 1)).castTo<TangibleObject*>();

				if (object == NULL) {
					creature->sendSystemMessage("The object '" + commandType + "' could not be created because the template could not be found.");
					return INVALIDPARAMETERS;
				}

				Locker locker(object);

				object->createChildObjects();

				ManagedReference<PlayerObject*> ghost = creature->getPlayerObject();
				// Set Player as Crafter
				ManagedReference<CreatureObject*> player = cast<CreatureObject*>(creature);
				//if (ghost->getAdminLevel() >= 15) {
					String name = player->getFirstName();
					object->setCraftersName(name);
				/*} else {
					//StringBuffer name;
					//name = player->getFirstName() + " Generated with Object Command"; //find a method for this
					String name = player->getFirstName();
					object->setCraftersName(name);
				}*/

				// Object Name
				StringBuffer customName;
				if (ghost->getAdminLevel() >= 15) {
					customName << object->getDisplayedName() << " \\#00CC00(" << player->getFirstName() << ")\\#FFFFFF";
				} else {
					//customName << object->getDisplayedName() <<  " (System Generated)";
					customName << object->getDisplayedName() << " \\#00CC00(" << player->getFirstName() << ")\\#FFFFFF";
				}
				object->setCustomObjectName(customName.toString(), false);

				String serial = craftingManager->generateSerial();
				object->setSerialNumber(serial);

				int quantity = 1;

				if (args.hasMoreTokens())
					quantity = args.getIntToken();

				if(quantity > 1 && quantity <= 100)
					object->setUseCount(quantity);

				// load visible components
				while (args.hasMoreTokens()) {
					String visName;
					args.getStringToken(visName);

					uint32 visId = visName.hashCode();
					if (ComponentMap::instance()->getFromID(visId).getId() == 0)
						continue;

					object->addVisibleComponent(visId, false);
				}

				if (inventory->transferObject(object, -1, true)) {
					inventory->broadcastObject(object, true);
				} else {
					object->destroyObjectFromDatabase(true);
					creature->sendSystemMessage("Error transferring object to inventory.");
				}
			} else if (commandType.beginsWith("createloot")) {
				String lootGroup;
				args.getStringToken(lootGroup);

				int level = 1;

				if (args.hasMoreTokens())
					level = args.getIntToken();

				ManagedReference<SceneObject*> inventory = creature->getSlottedObject("inventory");

				if (inventory == NULL || inventory->isContainerFullRecursive()) {
					creature->sendSystemMessage("Your inventory is full, so the item could not be created.");
					return INVALIDPARAMETERS;
				}

				ManagedReference<LootManager*> lootManager = creature->getZoneServer()->getLootManager();

				if (lootManager == NULL)
					return INVALIDPARAMETERS;

				lootManager->createLoot(inventory, lootGroup, level);
			} else if (commandType.beginsWith("createresource")) {
				String resourceName;
				args.getStringToken(resourceName);

				int quantity = 100000;

				if (args.hasMoreTokens())
					quantity = args.getIntToken();

				ManagedReference<ResourceManager*> resourceManager = server->getZoneServer()->getResourceManager();
				resourceManager->givePlayerResource(creature, resourceName, quantity);
			} else if (commandType.beginsWith("createarealoot")) {
				String lootGroup;
				args.getStringToken(lootGroup);

				int range = 32;
				if (args.hasMoreTokens())
					range = args.getIntToken();

				if( range < 0 )
					range = 32;

				if( range > 128 )
					range = 128;

				int level = 1;
				if (args.hasMoreTokens())
					level = args.getIntToken();

				ManagedReference<LootManager*> lootManager = creature->getZoneServer()->getLootManager();
				if (lootManager == NULL)
					return INVALIDPARAMETERS;

				Zone* zone = creature->getZone();
				if (zone == NULL)
					return GENERALERROR;

				// Find all objects in range
				SortedVector<QuadTreeEntry*> closeObjects;
				CloseObjectsVector* closeObjectsVector = (CloseObjectsVector*) creature->getCloseObjects();
				if (closeObjectsVector == NULL) {
					zone->getInRangeObjects(creature->getPositionX(), creature->getPositionY(), range, &closeObjects, true);
				} else {
					closeObjectsVector->safeCopyTo(closeObjects);
				}

				// Award loot group to all players in range
				for (int i = 0; i < closeObjects.size(); i++) {
					SceneObject* targetObject = static_cast<SceneObject*>(closeObjects.get(i));

					if (targetObject->isPlayerCreature() && creature->isInRange(targetObject, range)) {

						CreatureObject* targetPlayer = cast<CreatureObject*>(targetObject);
						Locker tlock( targetPlayer, creature );

						ManagedReference<SceneObject*> inventory = targetPlayer->getSlottedObject("inventory");
						if (inventory != NULL) {
							if( lootManager->createLoot(inventory, lootGroup, level) )
								targetPlayer->sendSystemMessage( "You have received a loot item!");
						}

						tlock.release();
					}
				}
			} else if (commandType.beginsWith("checklooted")) {
				ManagedReference<LootManager*> lootManager = creature->getZoneServer()->getLootManager();
				if (lootManager == NULL)
					return INVALIDPARAMETERS;

				creature->sendSystemMessage("Number of Legendaries Looted: " + String::valueOf(lootManager->getLegendaryLooted()));
				creature->sendSystemMessage("Number of Exceptionals Looted: " + String::valueOf(lootManager->getExceptionalLooted()));
				creature->sendSystemMessage("Number of Magical Looted: " + String::valueOf(lootManager->getYellowLooted()));
			}
			 else if (commandType.beginsWith("addstructure")) {
				if (creature->getParent() != NULL){
					creature->sendSystemMessage("You must be outside to place a structure.");
					return GENERALERROR;
				}

				Lua* lua = DirectorManager::instance()->getLuaInstance();

				Reference<LuaFunction*> adminPlaceStructure = lua->createFunction("AdminPlaceStructure", "openWindow", 0);
				*adminPlaceStructure << creature;

				adminPlaceStructure->callFunction();
			 }
			 else if (commandType.beginsWith("modify"))
			 {
				String objID;
				args.getStringToken(objID);
				uint64 oid = UnsignedLong::valueOf(objID);

				if(server->getZoneServer()->getObject(oid) == NULL)
				{
					creature->sendSystemMessage("Object couldn't be found, are you sure you entered the correct object ID?");
					return INVALIDPARAMETERS;
				}

				ManagedReference<TangibleObject*> object = server->getZoneServer()->getObject(oid).castTo<TangibleObject*>();
				creature->sendSystemMessage("Found: " + String::valueOf(object->getObjectName()) + " with object id: " + String::valueOf(object->getObjectID()));
				creature->sendSystemMessage("Template: " + object->getObjectTemplate()->getTemplateFileName());

				String subCommand;
				args.getStringToken(subCommand);

				if(subCommand == "attributes")
				{
					String attributeName;
					args.getStringToken(attributeName);
					int attributeAmount = args.getIntToken();

					object->addSkillMod(SkillModManager::TEMPLATE, attributeName, attributeAmount);
				}
				else if(subCommand == "uses")
				{
					int amount = args.getIntToken();
					object->setUseCount(amount, true);
					creature->sendSystemMessage("Set amount to" + amount);
				}
				else if(subCommand == "clone")
				{
					ManagedReference<TangibleObject*> clonedObject = cast<TangibleObject*>(ObjectManager::instance()->cloneObject(object));
					ManagedReference<SceneObject*> inventory = creature->getSlottedObject("inventory");

					inventory->broadcastObject(clonedObject, true);
					inventory->transferObject(clonedObject, -1, true);
				}
				else if (subCommand == "template")
				{
					String newTemplate;
					args.getStringToken(newTemplate);

					object->setClientObjectCRC(newTemplate.hashCode());
				}
				else
				{
					creature->sendSystemMessage("Unknown Command");
					return INVALIDPARAMETERS;
				}
			}
		} catch (Exception& e) {
			creature->sendSystemMessage("SYNTAX: /object createitem <objectTemplatePath> [<quantity>]");
			creature->sendSystemMessage("SYNTAX: /object createresource <resourceName> [<quantity>]");
			creature->sendSystemMessage("SYNTAX: /object createloot <loottemplate> [<level>]");
			creature->sendSystemMessage("SYNTAX: /object createarealoot <loottemplate> [<range>] [<level>]");
			creature->sendSystemMessage("SYNTAX: /object checklooted");
			creature->sendSystemMessage("SYNTAX: /object addstructure");
			creature->sendSystemMessage("SYNTAX: /object modify <oid> attributes <attribute name> <amount>");
			creature->sendSystemMessage("SYNTAX: /object modify <oid> uses <amount>");
			creature->sendSystemMessage("SYNTAX: /object modify <oid> clone");
			creature->sendSystemMessage("SYNTAX: /object modify <oid> template <newTemplate>");

			return INVALIDPARAMETERS;
		}


		return SUCCESS;
	}

};

#endif //OBJECTCOMMAND_H_


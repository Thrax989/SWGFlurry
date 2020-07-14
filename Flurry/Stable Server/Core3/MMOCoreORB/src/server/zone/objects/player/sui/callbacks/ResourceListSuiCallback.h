#ifndef RESOURCELISTSUICALLBACK_H_
#define RESOURCELISTSUICALLBACK_H_

#include "server/zone/objects/player/sui/SuiCallback.h"


class ResourceListSuiCallback : public SuiCallback {
	String nodeName;

public:
	ResourceListSuiCallback(ZoneServer* serv, const String& name) : SuiCallback(serv) {
		nodeName = name;
	}

	void run(CreatureObject* creature, SuiBox* sui, uint32 eventIndex, Vector<UnicodeString>* args) {
		bool cancelPressed = (eventIndex == 1);

		if (!sui->isListBox() || cancelPressed)
			return;

		SuiListBox* listBox = cast<SuiListBox*>( sui);
		ManagedReference<PlayerObject*> ghost = creature->getPlayerObject();

		if (ghost == nullptr)
			return;

		bool backPressed = false;
		int index = -1;

		try
		{
			backPressed = Bool::valueOf(args->get(0).toString());
			index = Integer::valueOf(args->get(1).toString());
		}
		catch (Exception& e)
		{
			creature->error("Invalid parameters passed to ResourceListSuiCallback.");
			return;
		}

		ManagedReference<ResourceManager*> resourceManager = creature->getZoneServer()->getResourceManager();

		if (nodeName.contains("(PERFECT)"))
		{
			String cName = "";
			for (int i = 10; i < nodeName.length(); i++)
			{
				cName += nodeName[i];
			}
			nodeName = cName;
		}

		if (backPressed)
		{
			if(nodeName == "Resources" || nodeName == "Resource")
				return;

			listBox->setPromptTitle("Resource List");
			listBox->setPromptText("Select a type");

			listBox->removeAllMenuItems();

			nodeName = resourceManager->addParentNodeToListBoxCR(listBox, nodeName);

		}
		else if(cancelPressed)
		{
			return;
		}
		else
		{
			ManagedReference<ResourceSpawn*> spawn = resourceManager->getResourceSpawn(nodeName);

			if(index >= 0 && index < listBox->getMenuSize())
			{
				nodeName = listBox->getMenuItemName(index);
				String cleanName = "";
				if (nodeName.contains("(PERFECT)"))
				{
					for (int i = 10; i < nodeName.length(); i++)
					{
						cleanName += nodeName[i];
					}
				}
				else
				{
					cleanName = nodeName;
				}

				listBox->removeAllMenuItems();

				spawn = resourceManager->getResourceSpawn(cleanName); // This means they are looking at stats.
				if (spawn != nullptr)
				{
					spawn->addStatsToDeedListBoxCR(listBox);
				}
				else
				{
					resourceManager->addNodeToListBoxCR(listBox, cleanName);
				}
			}
		}

		ghost->addSuiBox(listBox);
		creature->sendMessage(listBox->generateMessage());
	}
};

#endif /* RESOURCELISTSUICALLBACK_H_ */

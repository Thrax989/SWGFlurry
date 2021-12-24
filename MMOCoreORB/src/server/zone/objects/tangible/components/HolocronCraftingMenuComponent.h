/*
* HolocronCraftingMenuComponent.h
*
*  Created on: 12/10/2021
*      Author: Toxic
*/

#ifndef HOLOCRONCRAFTINGMENUCOMPONENT_H_
#define HOLOCRONCRAFTINGMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class HolocronCraftingMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

};


#endif /* HOLOCRONCRAFTINGMENUCOMPONENT_H_ */

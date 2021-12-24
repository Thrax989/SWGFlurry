/*
* HolocronCombatMenuComponent.h
*
*  Created on: 12/10/2021
*      Author: Toxic
*/

#ifndef HOLOCRONCOMBATMENUCOMPONENT_H_
#define HOLOCRONCOMBATMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class HolocronCombatMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

};


#endif /* HOLOCRONCOMBATMENUCOMPONENT_H_ */

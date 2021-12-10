/*
* HolocronSensesMenuComponent.h
*
*  Created on: 12/10/2021
*      Author: Toxic
*/

#ifndef HOLOCRONSENSESMENUCOMPONENT_H_
#define HOLOCRONSENSESMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class HolocronSensesMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

};


#endif /* HOLOCRONSENSESMENUCOMPONENT_H_ */

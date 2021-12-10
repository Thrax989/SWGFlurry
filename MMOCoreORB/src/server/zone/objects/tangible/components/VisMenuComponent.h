/*
 * VisMenuComponent.cpp
 *
 *  Created on: 12/10/2021
 *      Author: TOXIC
 */

#ifndef VisMENUCOMPONENT_H_
#define VisMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class VisMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

};


#endif /* VISMENUCOMPONENT_H_ */

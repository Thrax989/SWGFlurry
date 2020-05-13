/*
 * ImperialMenuComponent.h
 *
 *  Created on: 09/19/2017
 *      Author: TOXIC
 */

#ifndef IMPERIALMENUCOMPONENT_H_
#define IMPERIALMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class ImperialMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

};

#endif /* IMPERIALMENUCOMPONENT_H_ */

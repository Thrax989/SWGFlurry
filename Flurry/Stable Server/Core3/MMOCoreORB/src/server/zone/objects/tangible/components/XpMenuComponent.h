/*
 * XpMenuComponent.h
 *
 *  Created on: 09/19/2017
 *      Author: TOXIC
 */

#ifndef XPMENUCOMPONENT_H_
#define XPMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class XpMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

};

#endif /* XPMENUCOMPONENT_H_ */

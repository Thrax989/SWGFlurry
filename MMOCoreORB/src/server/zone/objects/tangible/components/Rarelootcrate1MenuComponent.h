/*
 * Rarelootcrate1MenuComponent.h
 *
 *  Created on: 08/26/2020
 *      Author: TOXIC
 */

#ifndef Rarelootcrate1MENUCOMPONENT_H_
#define Rarelootcrate1MENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class Rarelootcrate1MenuComponent : public TangibleObjectMenuComponent {
public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

};


#endif /* Rarelootcrate1MENUCOMPONENT_H_ */

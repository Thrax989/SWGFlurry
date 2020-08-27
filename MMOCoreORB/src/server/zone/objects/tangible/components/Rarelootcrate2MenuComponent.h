/*
 * Rarelootcrate2MenuComponent.h
 *
 *  Created on: 08/26/2020
 *      Author: TOXIC
 */

#ifndef Rarelootcrate2MENUCOMPONENT_H_
#define Rarelootcrate2MENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class Rarelootcrate2MenuComponent : public TangibleObjectMenuComponent {
public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

};


#endif /* Rarelootcrate2MENUCOMPONENT_H_ */

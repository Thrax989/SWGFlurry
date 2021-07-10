/*
 * EventpackMenuComponent.cpp
 *
 *  Created on: 07/09/2021
 *      Author: TOXIC
 */


#ifndef EventpackMENUCOMPONENT_H_
#define EventpackMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class EventpackMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

};


#endif /* EventpackMENUCOMPONENT_H_ */

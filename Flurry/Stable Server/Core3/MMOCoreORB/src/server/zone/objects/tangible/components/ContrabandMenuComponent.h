/*
 * ContrabandMenuComponent.cpp
 *
 *  Created on: 08/23/2020
 *      Author: TOXIC
 */

#ifndef ContrabandMENUCOMPONENT_H_
#define ContrabandMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class ContrabandMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

};


#endif /* ContrabandMENUCOMPONENT_H_ */

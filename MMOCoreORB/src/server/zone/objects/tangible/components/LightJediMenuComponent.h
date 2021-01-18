/*
 * LightJediMenuComponent.cpp
 *
 *  Created on: 01/18/2021
 *      Author: TOXIC
 */

#ifndef LightJediMENUCOMPONENT_H_
#define LightJediMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class LightJediMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

};


#endif /* LightJediMENUCOMPONENT_H_ */

/*
 * DarkJediMenuComponent.cpp
 *
 *  Created on: 01/18/2021
 *      Author: TOXIC
 */

#ifndef DarkJediMENUCOMPONENT_H_
#define DarkJediMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class DarkJediMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

};


#endif /* DarkJediMENUCOMPONENT_H_ */

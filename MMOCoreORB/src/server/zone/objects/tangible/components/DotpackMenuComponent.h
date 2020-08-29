/*
 * DotpackMenuComponent.cpp
 *
 *  Created on: 08/24/2020
 *      Author: TOXIC
 */


#ifndef DotpackMENUCOMPONENT_H_
#define DotpackMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class DotpackMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

};


#endif /* DotpackMENUCOMPONENT_H_ */

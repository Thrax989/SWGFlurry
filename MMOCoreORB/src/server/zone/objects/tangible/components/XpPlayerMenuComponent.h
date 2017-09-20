/*
 * XpPlayerMenuComponent.h
 *
 *  Created on: 09/19/2017
 *      Author: TOXIC
 */

#ifndef XPPLAYERMENUCOMPONENT_H_
#define XPPLAYERMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class XpPlayerMenuComponent : public TangibleObjectMenuComponent {
public:
	int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;
};


#endif /* XPPLAYERMENUCOMPONENT_H_ */
/*
* HolocronReflexMenuComponent.h
*
*  Created on: 12/10/2021
*      Author: Toxic
*/

#ifndef HOLOCRONREFLEXMENUCOMPONENT_H_
#define HOLOCRONREFLEXMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class HolocronReflexMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

};


#endif /* HOLOCRONREFLEXMENUCOMPONENT_H_ */

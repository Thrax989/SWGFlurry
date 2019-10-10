
/*
 * DiamondMenuComponent.h
 */

#ifndef DiamondMENUCOMPONENT_H_
#define DiamondMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class DiamondMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

};


#endif /* DiamondMENUCOMPONENT_H_ */
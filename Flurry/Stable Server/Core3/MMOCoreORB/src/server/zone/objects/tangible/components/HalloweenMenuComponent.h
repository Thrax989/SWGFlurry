
/*
 * HalloweenMenuComponent.h
 */

#ifndef HalloweenMENUCOMPONENT_H_
#define HalloweenMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class HalloweenMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

};


#endif /* HalloweenMENUCOMPONENT_H_ */
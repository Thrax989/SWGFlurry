
/*
 * EventMenuComponent.h
 */

#ifndef EventMENUCOMPONENT_H_
#define EventMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class EventMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

};


#endif /* EventMENUCOMPONENT_H_ */

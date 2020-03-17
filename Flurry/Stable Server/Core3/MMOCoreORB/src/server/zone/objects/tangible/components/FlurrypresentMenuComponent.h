
/*
 * FlurrypresentMenuComponent.h
 */

#ifndef FlurrypresentMENUCOMPONENT_H_
#define FlurrypresentMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class FlurrypresentMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

};


#endif /* FlurrypresentMENUCOMPONENT_H_ */
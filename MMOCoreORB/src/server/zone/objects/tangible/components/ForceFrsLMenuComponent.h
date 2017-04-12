/*
 * ForceFrsLMenuComponent.h
 */

#ifndef ForceFrsLMENUCOMPONENT_H_
#define ForceFrsLMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class ForceFrsLMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

};


#endif /* ForceFrsLMENUCOMPONENT_H_ */

/*
 * ForceFrsDMenuComponent.h
 */

#ifndef ForceFrsDMENUCOMPONENT_H_
#define ForceFrsDMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class ForceFrsDMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

};


#endif /* ForceFrsDMENUCOMPONENT_H_ */

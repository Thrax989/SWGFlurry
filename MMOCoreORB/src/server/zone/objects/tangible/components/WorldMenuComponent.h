
/*
 * WorldMenuComponent.h
 */

#ifndef WorldMENUCOMPONENT_H_
#define WorldMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class WorldMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

};


#endif /* WorldMENUCOMPONENT_H_ */


/*
 * FriendcrateMenuComponent.h
 */

#ifndef FriendcrateMENUCOMPONENT_H_
#define FriendcratedMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class FriendcrateMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

};


#endif /* FriendcrateMENUCOMPONENT_H_ */
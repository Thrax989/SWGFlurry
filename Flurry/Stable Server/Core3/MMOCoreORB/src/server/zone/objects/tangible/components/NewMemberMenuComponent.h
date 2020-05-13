
/*
 * NewMemberMenuComponent.h
 */

#ifndef NewMemberMENUCOMPONENT_H_
#define NewMemberMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class NewMemberMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

};


#endif /* NewMemberMENUCOMPONENT_H_ */
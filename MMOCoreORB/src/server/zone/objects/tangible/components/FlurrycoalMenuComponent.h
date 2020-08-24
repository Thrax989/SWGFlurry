
/*
 * FlurrycoalMenuComponent.h
 */

#ifndef FlurrycoalMENUCOMPONENT_H_
#define FlurrycoalMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class FlurrycoalMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

};


#endif /* FlurrycoalMENUCOMPONENT_H_ */
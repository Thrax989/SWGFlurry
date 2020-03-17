
/*
 * CollectionplatinumMenuComponent.h
 */

#ifndef CollectionplatinumMENUCOMPONENT_H_
#define CollectionplatinumMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class CollectionplatinumMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

};


#endif /* CollectionplatinumMENUCOMPONENT_H_ */
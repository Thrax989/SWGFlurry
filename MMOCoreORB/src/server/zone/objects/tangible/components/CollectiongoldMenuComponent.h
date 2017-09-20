
/*
 * CollectiongoldMenuComponent.h
 */

#ifndef CollectiongoldMENUCOMPONENT_H_
#define CollectiongoldMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class CollectiongoldMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

};


#endif /* CollectiongoldMENUCOMPONENT_H_ */
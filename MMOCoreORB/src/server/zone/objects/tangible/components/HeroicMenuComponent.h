
/*
 * HeroicMenuComponent.h
 */

#ifndef HeroicMENUCOMPONENT_H_
#define HeroicMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class HeroicMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

};


#endif /* HeroicMENUCOMPONENT_H_ */
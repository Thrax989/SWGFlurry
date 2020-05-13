
/*
 * ArtifactMenuComponent.h
 */

#ifndef ArtifactMENUCOMPONENT_H_
#define ArtifactMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class ArtifactMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

};


#endif /* ArtifactMENUCOMPONENT_H_ */
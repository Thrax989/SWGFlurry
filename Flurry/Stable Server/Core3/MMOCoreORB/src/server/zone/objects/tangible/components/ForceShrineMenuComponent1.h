/*
 * ForceShrineMenuComponent1.h
 *
 *  Created on: 10/16/2017
 *      Author: Toxic
 */

#ifndef FORCESHRINEMENUCOMPONENT1_H_
#define FORCESHRINEMENUCOMPONENT1_H_

#include "TangibleObjectMenuComponent.h"

namespace server {
namespace zone {
namespace objects {
namespace scene {
	class SceneObject;
}
}
}
}

using namespace server::zone::objects::scene;

namespace server {
namespace zone {
namespace objects {
namespace creature {
	class CreatureObject;
}
}
}
}

using namespace server::zone::objects::creature;

namespace server {
namespace zone {
namespace objects {
namespace player {
	class PlayerObject;
}
}
}
}

using namespace server::zone::objects::player;

class ForceShrineMenuComponent1 : public TangibleObjectMenuComponent {

public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;
};


#endif /* FORCESHRINEMENUCOMPONENT1_H_ */

/*
* HolocronsMenuComponent.h
*
*  Created on: 12/09/2021
*      Author: Toxic
*/

#ifndef HOLOCRONSMENUCOMPONENT_H_
#define HOLOCRONSMENUCOMPONENT_H_

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

class HolocronsMenuComponent : public TangibleObjectMenuComponent {

public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;
};


#endif /* HOLOCRONSMENUCOMPONENT_H_ */

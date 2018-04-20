/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef ShieldsANIMATIONTASK_H_
#define ShieldsANIMATIONTASK_H_

#include "server/zone/objects/creature/CreatureObject.h"

namespace server {
namespace zone {
namespace objects {
namespace creature {
namespace events {

class ShieldsAnimationTask : public Task {

	ManagedReference<CreatureObject*> player;
	int countDown;
	
public:
	ShieldsAnimationTask(CreatureObject* player, int countDown) : Task() { 
		this->player = player;
		this->countDown = countDown;
	}

	void run() {

		if( player == NULL )
			return;

		Locker locker(player);

		player->removePendingTask("shields_animation");
		
		// If buff is still active, perform animation and reschedule
		if (countDown > 0) 
			{
			countDown = countDown -1;
			player->playEffect("clienteffect/bh_shields_effect.cef", "");
			//reschedule( 9000 );
			Reference<Task*> shieldsAnimationTask = new ShieldsAnimationTask(player, countDown); //crc,
			player->addPendingTask("shields_animation", shieldsAnimationTask, 9000);
			}
	}
};

} // events
} // creature
} // objects
} // zone
} // server

using namespace server::zone::objects::creature::events;

#endif /*SHIELDSANIMATIONTASK_H_*/
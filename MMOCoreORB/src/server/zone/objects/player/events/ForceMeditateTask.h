/*
 				Copyright <SWGEmu>
		See file COPYING for copying conditions. */


#ifndef FORCEMEDITATETASK_H_
#define FORCEMEDITATETASK_H_

#include "engine/engine.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/chat/StringIdChatParameter.h"
#include "templates/params/creature/CreatureAttribute.h"

class ForceMeditateTask: public Task {
	ManagedReference<CreatureObject*> player;
	String moodString;

public:
	ForceMeditateTask(CreatureObject* pl) {
		player = pl;
	}

	void setMoodString(const String& ms) {
		moodString = ms;
	}

	String getMoodString() {
		return moodString;
	}

	void run() {
		Locker playerLocker(player);

		try {
			Reference<ForceMeditateTask*> fmeditateTask = player->getPendingTask("forcemeditate").castTo<ForceMeditateTask*>();

			if (!player->isMeditating()){
				return;
			}

			StringIdChatParameter healParams;
			if (player->hasSkill("force_rank_light_rank_01") || player->hasSkill("force_rank_dark_rank_01")){

				Vector<uint8> woundedPools;
				for (uint8 i = 0; i < 9; ++i) {
					if (player->getWounds(i) > 0){
						woundedPools.add(i);
					}
				}

				if (woundedPools.size() > 0){

					int heal = 40 + System::random(20);

					uint8 pool = woundedPools.get(System::random(woundedPools.size() - 1));

					int wounds = player->getWounds(pool);

					heal = Math::min(wounds, heal);

					player->healWound(player, pool, heal, true, false);

					healParams.setStringId("teraskasi", "prose_curewound");
					healParams.setTO(CreatureAttribute::getName(pool));
					healParams.setDI(heal);
					player->sendSystemMessage(healParams);
				}
				
			}

			player->playEffect("clienteffect/pl_force_meditate_self.cef", "");
 			player->playEffect("clienteffect/death_trooper_anti_virus.cef");
			player->playEffect("clienteffect/medic_cure_affliction.cef");
			if (fmeditateTask != nullptr)
				fmeditateTask->reschedule(5000);
			else
				fmeditateTask->schedule(5000);

		} catch (Exception& e) {
			player->error("unreported exception caught in ForceMeditateTask::activate");
		}
	}

};

#endif /* FORCEMEDITATETASK_H_ */

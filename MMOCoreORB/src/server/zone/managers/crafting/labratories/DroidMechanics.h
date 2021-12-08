#ifndef DROID_MECHANICS_H
#define DROID_MECHANICS_H

#include "server/zone/objects/creature/ai/DroidObject.h"

namespace server {
namespace zone {
namespace managers {
namespace crafting {
namespace labratories {

class DroidMechanics {
public:
	DroidMechanics();
	virtual ~DroidMechanics();
	static float determineHam(float quality, int droidType){
		int maxHam = 55;
		int minHam = 45;
		if(droidType == DroidObject::R_SERIES) {
			maxHam = 9250;
			minHam = 8025;
		}

		if(droidType == DroidObject::DZ70 || droidType == DroidObject::PROBOT) {
			maxHam = 11250;
			minHam = 9500;
		}
		if(droidType == DroidObject::LE_REPAIR) {
			maxHam = 8300;
			minHam = 5500;
		}
		if (droidType == DroidObject::MSE || droidType == DroidObject::POWER_DROID || droidType == DroidObject::PROTOCOL || droidType == DroidObject::SURGICAL || droidType == DroidObject::TREADWELL) {
			maxHam = 55;
			minHam = 45;
		}
		if (droidType == DroidObject::BLL) {
			maxHam = 1400;
			minHam = 1200;
		}
		if(droidType == DroidObject::DROIDECA || droidType == DroidObject::ASSASSIN_DROID) {
			maxHam = 12750;
			minHam = 10750;
		}
		if(droidType == DroidObject::SPIDER_DROID) {
			maxHam = 14150;
			minHam = 11750;
		}
		if(droidType == DroidObject::ROBODOG) {
			maxHam = 12750;
			minHam = 11550;
		}
		float hamValue = quality * (float)maxHam;
		if (hamValue < minHam) {
			hamValue = minHam;
		}
		return hamValue;
	}
	static float determineSpeed(int droidType, float ham) {
		if(droidType == DroidObject::R_SERIES)
			return 2.0 - (( 1.0 - ((4500.0 - ham)/1125.0))/2.0);
		if(droidType == DroidObject::PROBOT || droidType == DroidObject::DZ70)
			return 1.0;
		if (droidType == DroidObject::LE_REPAIR)
			return 2.0 - (( 1.0 - ((6000.0 - ham)/1500.0))/2.0);
		if(droidType == DroidObject::DROIDECA || droidType == DroidObject::ASSASSIN_DROID || droidType == DroidObject::SPIDER_DROID || droidType == DroidObject::ROBODOG)
			return 1.0;
		return 0.0;
	}
	static float determineHit(int droidType, float ham) {
		if(droidType == DroidObject::R_SERIES)
			return 9.5 + (0.08*(1.0 - ((9250.0-ham)/2312.5)));
		if(droidType == DroidObject::LE_REPAIR)
			return 7.5 + (0.08*(1.0 - ((8300.0-ham)/2075.0)));
		if(droidType == DroidObject::DZ70 || droidType == DroidObject::PROBOT)
			return 13.5 + (0.08*(1.0 - ((11250.0-ham)/2812.5)));
		if(droidType == DroidObject::DROIDECA || droidType == DroidObject::ASSASSIN_DROID || droidType == DroidObject::SPIDER_DROID || droidType == DroidObject::ROBODOG)
			return 15.5 + (0.08*(1.0 - ((12750.0-ham)/3187.5)));
		return 0.0;

	}
	static float determineMinDamage(int droidType, int rating) {
		if (rating == 0)
			return 1;
		if (rating > 600)
			rating = 600;
		if(droidType == DroidObject::R_SERIES)
			return ((int)((rating/600.0) * 150.0)) + 100;
		if(droidType == DroidObject::LE_REPAIR)
			return ((int)((rating/600.0) * 90.0)) + 90;
		if(droidType == DroidObject::PROBOT || droidType == DroidObject::DZ70)
			return ((int)((rating/600.0) * 130.0)) + 130;
		if(droidType == DroidObject::DROIDECA || droidType == DroidObject::ASSASSIN_DROID)
			return ((int)((rating/600.0) * 160.0)) + 160;
		if(droidType == DroidObject::SPIDER_DROID)
			return ((int)((rating/600.0) * 190.0)) + 190;
		if(droidType == DroidObject::ROBODOG)
			return ((int)((rating/600.0) * 200.0)) + 200;
		return 1;
	}
	static float determineMaxDamage(int droidType, int rating) {
		if (rating == 0)
			return 1;
		if (rating > 600)
			rating = 600;
		if(droidType == DroidObject::R_SERIES)
			return ((int)((rating/600.0) * 200.0)) + 200;
		if(droidType == DroidObject::LE_REPAIR)
			return ((int)((rating/600.0) * 170.0)) + 170;
		if(droidType == DroidObject::PROBOT || droidType == DroidObject::DZ70)
			return ((int)((rating/600.0) * 250.0)) + 250;
		if(droidType == DroidObject::DROIDECA || droidType == DroidObject::ASSASSIN_DROID)
			return ((int)((rating/600.0) * 350.0)) + 250;
		if(droidType == DroidObject::SPIDER_DROID)
			return ((int)((rating/600.0) * 350.0)) + 300;
		if(droidType == DroidObject::ROBODOG)
			return ((int)((rating/600.0) * 400.0)) + 300;
		return 1;
	}
	/** Used to determine harvest droid and trap droid skill mod*/
	static int determineDroidSkillBonus(float playerSkill, float droidSkill, float baseAmount) {
		float p1 = (playerSkill + 1)/(float)100;
		float p2 = 3.55 * p1;
		float p3 = droidSkill/p2;
		float p4 = p3/100;
		float bonus = (baseAmount * p4);
		return ceil(bonus);
	}
};

}
}
}
}
}

using namespace server::zone::managers::crafting::labratories;

#endif /* DROID_MECHANICS_H */

/*
 * VehicleDeedTemplate.h
 *
 *  Created on: Oct 4, 2010
 *      Author: kyle
 */

#ifndef VEHICLEDEEDTEMPLATE_H_
#define VEHICLEDEEDTEMPLATE_H_

#include "templates/tangible/DeedTemplate.h"

class VehicleDeedTemplate : public DeedTemplate {
private:
	String controlDeviceObjectTemplate;
	String jetpackObjectTemplate;

public:
	VehicleDeedTemplate() {
		jetpackObjectTemplate = "";

	}

	~VehicleDeedTemplate() {

	}

	void readObject(LuaObject* templateData) {
		DeedTemplate::readObject(templateData);

		controlDeviceObjectTemplate = templateData->getStringField("controlDeviceObjectTemplate");
		jetpackObjectTemplate = templateData->getStringField("jetpackObjectTemplate");
    }

	String getControlDeviceObjectTemplate()
	{
		return controlDeviceObjectTemplate;
	}

	String getJetpackObjectTemplate()
	{
		return jetpackObjectTemplate;
	}
};


#endif /* VEHICLEDEEDTEMPLATE_H_ */

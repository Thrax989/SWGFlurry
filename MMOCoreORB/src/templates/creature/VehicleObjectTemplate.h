#ifndef VEHICLEOBJECTTEMPLATE_H_
#define VEHICLEOBJECTTEMPLATE_H_

#include "templates/creature/SharedCreatureObjectTemplate.h"

class VehicleObjectTemplate : public SharedCreatureObjectTemplate {
	int decayRate, decayCycle, passengerCapacity, vehicleType, hoverHeight;
	String passengerSeat, jetpackString;

public:
	VehicleObjectTemplate() {
		decayRate = 0;
		decayCycle = 0;
		passengerCapacity = 0;
		vehicleType = 0;
		hoverHeight = 0;
	}

	~VehicleObjectTemplate() {

	}

	void readObject(LuaObject* templateData) {
		SharedCreatureObjectTemplate::readObject(templateData);
		decayRate = templateData->getIntField("decayRate");
		decayCycle = templateData->getIntField("decayCycle");
		passengerCapacity = templateData->getIntField("passengerCapacity");
		passengerSeat = templateData->getStringField("passengerSeatString");
		vehicleType = templateData->getIntField("vehicleType");
		hoverHeight = templateData->getIntField("hoverHeight");
		jetpackString = templateData->getStringField("jetpackWearable");
    }

	bool isVehicleObjectTemplate() {
		return true;
	}

	int getDecayRate() {
		return decayRate;
	}

	int getDecayCycle() {
		return decayCycle;
	}

	int getPassengerCapacity() {
		return passengerCapacity;
	}

	String& getPassengerSeatString() {
		return passengerSeat;
	}

	int getVehicleType() {
		return vehicleType;
	}

	int getHoverHeight() {
		return hoverHeight;
	}

	String& getJetpackString() {
		return jetpackString;
	}

};

#endif /* VEHICLEOBJECTTEMPLATE_H_ */

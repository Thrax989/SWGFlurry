object_mobile_vehicle_koro2_exodrive_airspeeder = object_mobile_vehicle_shared_koro2_exodrive_airspeeder:new {
	templateType = VEHICLE,
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600, -- Time in seconds per cycle
	passengerCapacity = 1,
	passengerSeatString = "koro2_exodrive_airspeeder",
}

ObjectTemplates:addTemplate(object_mobile_vehicle_koro2_exodrive_airspeeder, "object/mobile/vehicle/koro2_exodrive_airspeeder.iff")

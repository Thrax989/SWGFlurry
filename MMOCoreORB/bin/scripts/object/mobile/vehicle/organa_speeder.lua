object_mobile_vehicle_organa_speeder = object_mobile_vehicle_shared_organa_speeder:new {
	templateType = VEHICLE,
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600, -- Time in seconds per cycle
	passengerCapacity = 1,
	passengerSeatString = "landspeeder_organa",
}

ObjectTemplates:addTemplate(object_mobile_vehicle_organa_speeder, "object/mobile/vehicle/organa_speeder.iff")

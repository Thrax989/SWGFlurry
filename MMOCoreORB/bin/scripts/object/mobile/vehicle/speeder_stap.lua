object_mobile_vehicle_speeder_stap = object_mobile_vehicle_shared_speeder_stap:new {
	templateType = VEHICLE,
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600 -- Time in seconds per cycle
}

ObjectTemplates:addTemplate(object_mobile_vehicle_speeder_stap, "object/mobile/vehicle/speeder_stap.iff")

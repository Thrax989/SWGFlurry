object_mobile_vehicle_balta_podracer = object_mobile_vehicle_shared_balta_podracer:new {
	templateType = VEHICLE,
	decayRate = 30, -- Damage tick per decay cycle
	decayCycle = 60 -- Time in seconds per cycle
}

ObjectTemplates:addTemplate(object_mobile_vehicle_balta_podracer, "object/mobile/vehicle/balta_podracer.iff")

object_mobile_vehicle_podracer_longtail = object_mobile_vehicle_shared_podracer_longtail:new {
	templateType = VEHICLE,
	decayRate = 30, -- Damage tick per decay cycle
	decayCycle = 60 -- Time in seconds per cycle
}

ObjectTemplates:addTemplate(object_mobile_vehicle_podracer_longtail, "object/mobile/vehicle/podracer_longtail.iff")

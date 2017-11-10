object_mobile_vehicle_air2_swoop = object_mobile_vehicle_shared_air2_swoop:new {
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600 -- Time in seconds per cycle
}

ObjectTemplates:addTemplate(object_mobile_vehicle_air2_swoop, "object/mobile/vehicle/air2_swoop.iff")

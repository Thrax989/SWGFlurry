
object_mobile_vehicle_vehicle_atrt = object_mobile_vehicle_shared_vehicle_atrt:new {
	templateType = VEHICLE,
	decayRate = 30, -- Damage tick per decay cycle
	decayCycle = 60 -- Time in seconds per cycle
}
ObjectTemplates:addTemplate(object_mobile_vehicle_vehicle_atrt, "object/mobile/vehicle/vehicle_atrt.iff")

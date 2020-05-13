
object_mobile_vehicle_vehicle_atpt = object_mobile_vehicle_shared_vehicle_atpt:new {
	templateType = VEHICLE,
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600 -- Time in seconds per cycle
}
ObjectTemplates:addTemplate(object_mobile_vehicle_vehicle_atpt, "object/mobile/vehicle/vehicle_atpt.iff")
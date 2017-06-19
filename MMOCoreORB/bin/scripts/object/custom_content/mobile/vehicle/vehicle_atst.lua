
object_mobile_vehicle_vehicle_atst = object_mobile_vehicle_shared_vehicle_atst:new {
	templateType = VEHICLE,
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600 -- Time in seconds per cycle
}
ObjectTemplates:addTemplate(object_mobile_vehicle_vehicle_atst, "object/mobile/vehicle/vehicle_atst.iff")
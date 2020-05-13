
object_mobile_vehicle_vehicle_atat = object_mobile_vehicle_shared_vehicle_atat:new {
	templateType = VEHICLE,
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600 -- Time in seconds per cycle
}
ObjectTemplates:addTemplate(object_mobile_vehicle_vehicle_atat, "object/mobile/vehicle/vehicle_atat.iff")
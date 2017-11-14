
object_mobile_vehicle_vehicle_atxt = object_mobile_vehicle_shared_vehicle_atxt:new {
	templateType = VEHICLE,
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600 -- Time in seconds per cycle
}
ObjectTemplates:addTemplate(object_mobile_vehicle_vehicle_atxt, "object/mobile/vehicle/vehicle_atxt.iff")
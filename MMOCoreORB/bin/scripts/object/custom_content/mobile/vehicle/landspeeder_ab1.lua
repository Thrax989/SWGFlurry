
object_mobile_vehicle_landspeeder_ab1 = object_mobile_vehicle_shared_landspeeder_ab1:new {
	templateType = VEHICLE,
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600, -- Time in seconds per cycle
	passengerCapacity = 1,
	passengerSeatString = "landspeeder_ab1",
}
ObjectTemplates:addTemplate(object_mobile_vehicle_landspeeder_ab1, "object/mobile/vehicle/landspeeder_ab1.iff")
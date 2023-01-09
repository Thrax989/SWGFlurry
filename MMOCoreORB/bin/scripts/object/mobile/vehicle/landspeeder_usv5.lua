
object_mobile_vehicle_landspeeder_usv5 = object_mobile_vehicle_shared_landspeeder_usv5:new {
	templateType = VEHICLE,
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600, -- Time in seconds per cycle
	passengerCapacity = 4,
	passengerSeatString = "landspeeder_usv5",
}
ObjectTemplates:addTemplate(object_mobile_vehicle_landspeeder_usv5, "object/mobile/vehicle/landspeeder_usv5.iff")
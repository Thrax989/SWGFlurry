
object_mobile_vehicle_landspeeder_v35 = object_mobile_vehicle_shared_landspeeder_v35:new {
	templateType = VEHICLE,
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600, -- Time in seconds per cycle
	passengerCapacity = 5,
	passengerSeatString = "landspeeder_v35",
}
ObjectTemplates:addTemplate(object_mobile_vehicle_landspeeder_v35, "object/mobile/vehicle/landspeeder_v35.iff")
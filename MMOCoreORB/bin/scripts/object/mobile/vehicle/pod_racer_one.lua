
object_mobile_vehicle_pod_racer_one = object_mobile_vehicle_shared_pod_racer_one:new {
	templateType = VEHICLE,
--Pod Damage Template
	decayRate = 90, -- Damage tick per decay cycle
	decayCycle = 300 -- Time in seconds per cycle
}
ObjectTemplates:addTemplate(object_mobile_vehicle_pod_racer_one, "object/mobile/vehicle/pod_racer_one.iff")
object_tangible_deed_vehicle_deed_pod_racer_light_bending_deed = object_tangible_deed_vehicle_deed_shared_pod_racer_light_bending_deed:new {

	templateType = VEHICLEDEED,

	controlDeviceObjectTemplate = "object/intangible/vehicle/pod_racer_light_bending.iff",
	generatedObjectTemplate = "object/mobile/vehicle/pod_racer_light_bending.iff",
	numberExperimentalProperties = {1, 1, 1},
	experimentalProperties = {"XX", "XX", "SR"},
	experimentalWeights = {1, 1, 1},
	experimentalGroupTitles = {"null", "null", "exp_durability"},
	experimentalSubGroupTitles = {"null", "null", "hit_points"},
	experimentalMin = {0, 0, 5000},
	experimentalMax = {0, 0, 10000},
	experimentalPrecision = {0, 0, 0},
	experimentalCombineType = {0, 0, 1},
}

ObjectTemplates:addTemplate(object_tangible_deed_vehicle_deed_pod_racer_light_bending_deed, "object/tangible/deed/vehicle_deed/pod_racer_light_bending_deed.iff")

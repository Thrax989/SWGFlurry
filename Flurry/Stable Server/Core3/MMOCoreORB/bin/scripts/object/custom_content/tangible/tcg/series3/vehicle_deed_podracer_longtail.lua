
object_tangible_tcg_series3_vehicle_deed_podracer_longtail = object_tangible_tcg_series3_shared_vehicle_deed_podracer_longtail:new {

	templateType = VEHICLEDEED,

	controlDeviceObjectTemplate = "object/intangible/vehicle/pod_racer_ipg_longtail_pcd.iff",
	generatedObjectTemplate = "object/mobile/vehicle/pod_racer_ipg_longtail.iff",
	numberExperimentalProperties = {1, 1, 1},
	experimentalProperties = {"XX", "XX", "SR"},
	experimentalWeights = {1, 1, 1},
	experimentalGroupTitles = {"null", "null", "exp_durability"},
	experimentalSubGroupTitles = {"null", "null", "hit_points"},
	experimentalMin = {0, 0, 1500},
	experimentalMax = {0, 0, 3000},
	experimentalPrecision = {0, 0, 0},
	experimentalCombineType = {0, 0, 1},

}
ObjectTemplates:addTemplate(object_tangible_tcg_series3_vehicle_deed_podracer_longtail, "object/tangible/tcg/series3/vehicle_deed_podracer_longtail.iff")

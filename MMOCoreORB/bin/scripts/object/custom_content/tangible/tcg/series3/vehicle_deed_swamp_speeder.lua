object_tangible_tcg_series3_vehicle_deed_swamp_speeder = object_tangible_tcg_series3_shared_vehicle_deed_swamp_speeder:new {

	templateType = VEHICLEDEED,

	controlDeviceObjectTemplate = "object/intangible/vehicle/swamp_speeder_pcd.iff",
	generatedObjectTemplate = "object/mobile/vehicle/swamp_speeder.iff",
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
ObjectTemplates:addTemplate(object_tangible_tcg_series3_vehicle_deed_swamp_speeder, "object/tangible/tcg/series3/vehicle_deed_swamp_speeder.iff")

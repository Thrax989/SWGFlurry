object_tangible_tcg_series1_vehicle_deed_organa_speeder = object_tangible_tcg_series1_shared_vehicle_deed_organa_speeder:new {

	templateType = VEHICLEDEED,

	controlDeviceObjectTemplate = "object/intangible/vehicle/landspeeder_organa_pcd.iff",
	generatedObjectTemplate = "object/mobile/vehicle/landspeeder_organa.iff",
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
ObjectTemplates:addTemplate(object_tangible_tcg_series1_vehicle_deed_organa_speeder, "object/tangible/tcg/series1/vehicle_deed_organa_speeder.iff")

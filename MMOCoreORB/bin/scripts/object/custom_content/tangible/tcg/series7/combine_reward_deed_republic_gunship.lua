
object_tangible_tcg_series7_combine_reward_deed_republic_gunship = object_tangible_tcg_series7_shared_combine_reward_deed_republic_gunship:new {

	templateType = VEHICLEDEED,

	controlDeviceObjectTemplate = "object/intangible/vehicle/tcg_republic_gunship_pcd.iff",
	generatedObjectTemplate = "object/mobile/vehicle/tcg_republic_gunship.iff",
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
ObjectTemplates:addTemplate(object_tangible_tcg_series7_combine_reward_deed_republic_gunship, "object/tangible/tcg/series7/combine_reward_deed_republic_gunship.iff")

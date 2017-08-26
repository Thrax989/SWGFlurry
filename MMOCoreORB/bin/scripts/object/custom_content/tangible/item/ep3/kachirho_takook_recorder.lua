
object_tangible_item_ep3_kachirho_takook_recorder = object_tangible_item_ep3_shared_kachirho_takook_recorder:new {
	--templateType = TRAP,
	objectMenuComponent = "DnaExtractorMenuComponent",

	useCount = 12,
	effectiveness = 112,
	attributes = {0, 3, 6},
	
	numberExperimentalProperties = {1, 1, 4, 1},
	experimentalProperties = {"XX", "XX", "OQ", "MA", "DR", "PE", "XX"},
	experimentalWeights = {1, 1, 1, 1, 1, 1, 1},
	experimentalGroupTitles = {"null", "null", "exp_charges", "null"},
	experimentalSubGroupTitles = {"null", "null", "charges", "hitpoints"},
	experimentalMin = {0, 0, 1, 1000},
	experimentalMax = {0, 0, 20, 1000},
	experimentalPrecision = {0, 0, 0, 0},
	experimentalCombineType = {0, 0, 1, 4},
}
ObjectTemplates:addTemplate(object_tangible_item_ep3_kachirho_takook_recorder, "object/tangible/item/ep3/kachirho_takook_recorder.iff")
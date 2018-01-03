object_tangible_deed_vehicle_deed_military_transport_deed = object_tangible_deed_vehicle_deed_shared_military_transport_deed:new {

	templateType = VEHICLEDEED,	

	controlDeviceObjectTemplate = "object/intangible/vehicle/military_transport_pcd.iff",
	generatedObjectTemplate = "object/mobile/vehicle/military_transport.iff",

	numberExperimentalProperties = {1, 1, 1},
	experimentalProperties = {"XX", "XX", "SR"},
	experimentalWeights = {1, 1, 1},
	experimentalGroupTitles = {"null", "null", "exp_durability"},
	experimentalSubGroupTitles = {"null", "null", "hit_points"},
	experimentalMin = {0, 0, 2000},
	experimentalMax = {0, 0, 9500},
	experimentalPrecision = {0, 0, 0},
	experimentalCombineType = {0, 0, 1},

}

ObjectTemplates:addTemplate(object_tangible_deed_vehicle_deed_military_transport_deed, "object/tangible/deed/vehicle_deed/military_transport_deed.iff")

object_building_player_generic_medium_window_s01 = object_building_player_shared_generic_medium_window_s01:new {
	lotSize = 3,
	baseMaintenanceRate = 40,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine", "yavin4", "dathomir", "kaas", "endor"},
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff",
	length = 1,
	width = 1,
	publicStructure = 0,
	skillMods = {
		{"private_safe_logout", 1}
	},
	childObjects = {
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = -6.74469, z = 0.625, y = 7.08765, ow = 0, ox = 0, oz = 0, oy = -1, cellid = 2, containmentType = -1},
			{templateFile = "object/tangible/sign/player/house_address.iff", x = 5.72, z = 2, y = 8, ox = 0, oy = 1, oz = 0, ow = 0, cellid = -1, containmentType = -1}
	},
	shopSigns = {
			{templateFile = "object/tangible/sign/player/house_address.iff", x = 5.72, z = 2, y = 8, ox = 0, oy = 1, oz = 0, ow = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:house_address"},
			{templateFile = "object/tangible/sign/player/shop_sign_s01.iff", x = 11, z = 0.5, y = 11, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_01", suiItem = "@player_structure:shop_sign1"},
			{templateFile = "object/tangible/sign/player/shop_sign_s02.iff", x = 11, z = 0.5, y = 11, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_02", suiItem = "@player_structure:shop_sign2"},
			{templateFile = "object/tangible/sign/player/shop_sign_s03.iff", x = 11, z = 0.5, y = 11, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_03", suiItem = "@player_structure:shop_sign3"},
			{templateFile = "object/tangible/sign/player/shop_sign_s04.iff", x = 11, z = 0.5, y = 11, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_04", suiItem = "@player_structure:shop_sign4"},			
	},	
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_medium_style_01.iff",
}

ObjectTemplates:addTemplate(object_building_player_generic_medium_window_s01, "object/building/player/generic_medium_window_s01.iff")

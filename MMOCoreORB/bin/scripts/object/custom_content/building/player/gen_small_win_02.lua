object_building_player_generic_small_window_s02 = object_building_player_shared_generic_small_window_s02:new {
	lotSize = 2,
	baseMaintenanceRate = 40,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine", "yavin4", "dathomir", "kaas", "endor"},
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_small_style_02.iff",
	length = 1,
	width = 1,
	publicStructure = 0,
	skillMods = {
		{"private_safe_logout", 1}
	},
	childObjects = {
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = -7.10232, z = 0.524003, y = 2.63423, ow = -0.707107, ox = -0, oz = 0, oy = -0.707107, cellid = 1, containmentType = -1},
			{templateFile = "object/tangible/sign/player/house_address.iff", x = -6.40, z = 2.89, y = 6.36, ox = 0, oy = -1, oz = 0, ow = 0, cellid = -1, containmentType = -1}
	},
	shopSigns = {
			{templateFile = "object/tangible/sign/player/house_address.iff", x = -6.40, z = 2.89, y = 6.36, ox = 0, oy = -1, oz = 0, ow = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:house_address"},				
			{templateFile = "object/tangible/sign/player/shop_sign_s01.iff", x = -6.55, z = 0.49, y = 10.56, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_01", suiItem = "@player_structure:shop_sign1"},
			{templateFile = "object/tangible/sign/player/shop_sign_s02.iff", x = -6.55, z = 0.49, y = 10.56, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_02", suiItem = "@player_structure:shop_sign2"},
			{templateFile = "object/tangible/sign/player/shop_sign_s03.iff", x = -6.55, z = 0.49, y = 10.56, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_03", suiItem = "@player_structure:shop_sign3"},
			{templateFile = "object/tangible/sign/player/shop_sign_s04.iff", x = -6.55, z = 0.49, y = 10.56, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_04", suiItem = "@player_structure:shop_sign4"},			
	}
}

ObjectTemplates:addTemplate(object_building_player_generic_small_window_s02, "object/building/player/generic_small_window_s02.iff")

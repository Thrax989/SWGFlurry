object_building_player_generic_small_window_s01 = object_building_player_shared_generic_small_window_s01:new {
	lotSize = 2,
	baseMaintenanceRate = 16,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine", "yavin4", "dathomir", "endor"},
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_small_style_01.iff",
	length = 1,
	width = 1,
	publicStructure = 0,
	skillMods = {
		{"private_medical_rating", 100},
		{"private_buff_mind", 100},
		{"private_med_battle_fatigue", 5},
		{"private_safe_logout", 1},
	},
	childObjects = {
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = -4.55073, z = 0.74, y = -1.81974, ow = -0.707107, ox = 0, oz = 0, oy = 0.707107, cellid = 1, containmentType = -1},
			{templateFile = "object/tangible/sign/player/house_address.iff", x = -7.39, z = 2, y = 2.36, ox = 0, oy = -1, oz = 0, ow = 0, cellid = -1, containmentType = -1}
	},
	shopSigns = {
			{templateFile = "object/tangible/sign/player/house_address.iff", x = -7.39, z = 2, y = 2.36, ox = 0, oy = -1, oz = 0, ow = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:house_address"},			
			{templateFile = "object/tangible/sign/player/shop_sign_s01.iff", x = -7, z = 0.5, y = 11, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_01", suiItem = "@player_structure:shop_sign1"},
			{templateFile = "object/tangible/sign/player/shop_sign_s02.iff", x = -7, z = 0.5, y = 11, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_02", suiItem = "@player_structure:shop_sign2"},
			{templateFile = "object/tangible/sign/player/shop_sign_s03.iff", x = -7, z = 0.5, y = 11, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_03", suiItem = "@player_structure:shop_sign3"},
			{templateFile = "object/tangible/sign/player/shop_sign_s04.iff", x = -7, z = 0.5, y = 11, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_04", suiItem = "@player_structure:shop_sign4"},
--Custom Signs
--Standing
		{templateFile = "object/tangible/tcg/series5/house_sign_tcg_standing.iff", x = -7, z = 0.5, y = 11, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "TCG - Diner Sign Standing"},
		{templateFile = "object/tangible/tcg/series3/house_sign_tcg_s02.iff", x = -7, z = 0.5, y = 11, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "TCG - Oval Standing"},
		{templateFile = "object/tangible/sign/player/wod_sm_banner_sign_02.iff", x = -7, z = 0.5, y = 11, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Nightsister Banner Sign 1"},
		{templateFile = "object/tangible/sign/player/wod_sm_banner_sign_03.iff", x = -7, z = 0.5, y = 11, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Nightsister Banner Sign 2"},
		{templateFile = "object/tangible/sign/player/wod_sm_banner_sign_01.iff", x = -7, z = 0.5, y = 11, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Nightsister Banner Sign 3"},
		{templateFile = "object/tangible/sign/player/wod_sm_standing_sign_01.iff", x = -7, z = 0.5, y = 11, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Nightsister Stone Sign Standing"},
		{templateFile = "object/tangible/sign/player/imperial_empire_day_2009_sign_standing.iff", x = -7, z = 0.5, y = 11, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Imperial Emblem Sign Standing"},
		{templateFile = "object/tangible/sign/player/rebel_remembrance_day_2009_sign_standing.iff", x = -7, z = 0.5, y = 11, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Rebel Sign Standing"},
		{templateFile = "object/tangible/sign/player/pgc_sign_standing.iff", x = -7, z = 0.5, y = 11, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Hologram Sign Standing"},
		{templateFile = "object/tangible/sign/player/efol_standing_sign_01.iff", x = -7, z = 0.5, y = 11, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Heart Sign Standing"},


--Hanging
		{templateFile = "object/tangible/tcg/series5/house_sign_tcg_hanging.iff", x = -7.39, z = 2, y = 2.36, ox = 0, oy = -1, oz = 0, ow = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "TCG - Diner Sign Hanging"},
		{templateFile = "object/tangible/tcg/series3/house_sign_tcg_s01.iff", x = -7.39, z = 2, y = 2.36, ox = 0, oy = -1, oz = 0, ow = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "TCG - Oval Hanging"},
		{templateFile = "object/tangible/sign/player/wod_sm_hanging_sign_01.iff", x = -7.39, z = 2, y = 2.36, ox = 0, oy = -1, oz = 0, ow = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Nightsister Stone Sign Hanging"},
		{templateFile = "object/tangible/sign/player/efol_hanging_sign_01.iff", x = -7.39, z = 2, y = 2.36, ox = 0, oy = -1, oz = 0, ow = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Heart Sign Hanging"},
		{templateFile = "object/tangible/sign/player/house_address_halloween_sign.iff", x = -7.39, z = 2, y = 2.36, ox = 0, oy = -1, oz = 0, ow = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Halloween Sign Hanging"},
		{templateFile = "object/tangible/sign/player/imperial_empire_day_2009_sign_hanging.iff", x = -7.39, z = 2, y = 2.36, ox = 0, oy = -1, oz = 0, ow = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Imperial Emblem Sign Hanging"},
		{templateFile = "object/tangible/sign/player/rebel_remembrance_day_2009_sign_hanging.iff", x = -7.39, z = 2, y = 2.36, ox = 0, oy = -1, oz = 0, ow = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Rebel Emblem Sign Hanging"},
	},

}

ObjectTemplates:addTemplate(object_building_player_generic_small_window_s01, "object/building/player/generic_small_window_s01.iff")

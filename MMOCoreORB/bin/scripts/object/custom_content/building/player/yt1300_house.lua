object_building_player_yt1300_house = object_building_player_shared_yt1300_house:new {
	lotSize = 5,
	baseMaintenanceRate = 80,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine", "yavin4", "dathomir", "endor"},
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff",
	publicStructure = 0,
	length = 1,
	width = 1,
	skillMods = {
		{"private_medical_rating", 100},
		{"private_buff_mind", 100},
		{"private_med_battle_fatigue", 5},
		{"private_safe_logout", 1},
	},
	childObjects = {
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = 13.7399, z = 4.85844, y = 0.0375382, ow = -0.707107, ox = 0, oz = 0, oy = 0.707107, cellid = 1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = -2.57692, z = -0.963074, y = 0.00377454, ow = -0.707107, ox = 0, oz = 0, oy = 0.707107, cellid = 7, containmentType = -1}, --Floor 1
			{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = -2.57692, z = 5.19344, y = 0.00377454, ow = -0.707107, ox = 0, oz = 0, oy = 0.707107, cellid = 7, containmentType = -1}, --floor 2
			{templateFile = "object/tangible/sign/player/house_address.iff", x = -5.96, z = 1.56, y = 1.82, ow = 0.25545, ox = 0, oz = 0, oy = 0.96682, cellid = -1, containmentType = -1}
	},
	shopSigns = {
			{templateFile = "object/tangible/sign/player/house_address.iff", x = -5.96, z = 1.56, y = 1.82, ow = 0.25545, ox = 0, oz = 0, oy = 0.96682, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:house_address"},
			{templateFile = "object/tangible/sign/player/shop_sign_s01.iff", x = -6.05, z = 2.62, y = 0.03, ow = 0.70711, ox = 0, oz = 0.70711, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_01", suiItem = "@player_structure:shop_sign1"},
			{templateFile = "object/tangible/sign/player/shop_sign_s02.iff", x = -6.05, z = 2.62, y = 0.03, ow = 0.70711, ox = 0, oz = 0.70711, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_02", suiItem = "@player_structure:shop_sign2"},
			{templateFile = "object/tangible/sign/player/shop_sign_s03.iff", x = -6.05, z = 2.62, y = 0.03, ow = 0.70711, ox = 0, oz = 0.70711, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_03", suiItem = "@player_structure:shop_sign3"},
			{templateFile = "object/tangible/sign/player/shop_sign_s04.iff", x = -6.05, z = 2.62, y = 0.03, ow = 0.70711, ox = 0, oz = 0.70711, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_04", suiItem = "@player_structure:shop_sign4"},
--Custom Signs
--Standing
		{templateFile = "object/tangible/tcg/series5/house_sign_tcg_standing.iff", x = -6.05, z = 2.62, y = 0.03, ow = 0.70711, ox = 0, oz = 0.70711, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "TCG - Diner Sign Standing"},
		{templateFile = "object/tangible/tcg/series3/house_sign_tcg_s02.iff", x = -6.05, z = 2.62, y = 0.03, ow = 0.70711, ox = 0, oz = 0.70711, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "TCG - Oval Standing"},
		{templateFile = "object/tangible/sign/player/wod_sm_banner_sign_02.iff", x = -6.05, z = 2.62, y = 0.03, ow = 0.70711, ox = 0, oz = 0.70711, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Nightsister Banner Sign 1"},
		{templateFile = "object/tangible/sign/player/wod_sm_banner_sign_03.iff", x = -6.05, z = 2.62, y = 0.03, ow = 0.70711, ox = 0, oz = 0.70711, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Nightsister Banner Sign 2"},
		{templateFile = "object/tangible/sign/player/wod_sm_banner_sign_01.iff", x = -6.05, z = 2.62, y = 0.03, ow = 0.70711, ox = 0, oz = 0.70711, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Nightsister Banner Sign 3"},
		{templateFile = "object/tangible/sign/player/wod_sm_standing_sign_01.iff", x = -6.05, z = 2.62, y = 0.03, ow = 0.70711, ox = 0, oz = 0.70711, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Nightsister Stone Sign Standing"},
		{templateFile = "object/tangible/sign/player/imperial_empire_day_2009_sign_standing.iff", x = -6.05, z = 2.62, y = 0.03, ow = 0.70711, ox = 0, oz = 0.70711, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Imperial Emblem Sign Standing"},
		{templateFile = "object/tangible/sign/player/rebel_remembrance_day_2009_sign_standing.iff", x = -6.05, z = 2.62, y = 0.03, ow = 0.70711, ox = 0, oz = 0.70711, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Rebel Sign Standing"},
		{templateFile = "object/tangible/sign/player/pgc_sign_standing.iff", x = -6.05, z = 2.62, y = 0.03, ow = 0.70711, ox = 0, oz = 0.70711, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Hologram Sign Standing"},
		{templateFile = "object/tangible/sign/player/efol_standing_sign_01.iff", x = -6.05, z = 2.62, y = 0.03, ow = 0.70711, ox = 0, oz = 0.70711, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Heart Sign Standing"},


--Hanging
		{templateFile = "object/tangible/tcg/series5/house_sign_tcg_hanging.iff", x = -5.96, z = 1.56, y = 1.82, ow = 0.25545, ox = 0, oz = 0, oy = 0.96682, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "TCG - Diner Sign Hanging"},
		{templateFile = "object/tangible/tcg/series3/house_sign_tcg_s01.iff", x = -5.96, z = 1.56, y = 1.82, ow = 0.25545, ox = 0, oz = 0, oy = 0.96682, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "TCG - Oval Hanging"},
		{templateFile = "object/tangible/sign/player/wod_sm_hanging_sign_01.iff", x = -5.96, z = 1.56, y = 1.82, ow = 0.25545, ox = 0, oz = 0, oy = 0.96682, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Nightsister Stone Sign Hanging"},
		{templateFile = "object/tangible/sign/player/efol_hanging_sign_01.iff", x = -5.96, z = 1.56, y = 1.82, ow = 0.25545, ox = 0, oz = 0, oy = 0.96682, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Heart Sign Hanging"},
		{templateFile = "object/tangible/sign/player/house_address_halloween_sign.iff", x = -5.96, z = 1.56, y = 1.82, ow = 0.25545, ox = 0, oz = 0, oy = 0.96682, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Halloween Sign Hanging"},
		{templateFile = "object/tangible/sign/player/imperial_empire_day_2009_sign_hanging.iff", x = -5.96, z = 1.56, y = 1.82, ow = 0.25545, ox = 0, oz = 0, oy = 0.96682, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Imperial Emblem Sign Hanging"},
		{templateFile = "object/tangible/sign/player/rebel_remembrance_day_2009_sign_hanging.iff", x = -5.96, z = 1.56, y = 1.82, ow = 0.25545, ox = 0, oz = 0, oy = 0.96682, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Rebel Emblem Sign Hanging"},
	},
}

ObjectTemplates:addTemplate(object_building_player_yt1300_house, "object/building/player/yt1300_house.iff")

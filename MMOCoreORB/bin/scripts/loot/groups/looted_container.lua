looted_container = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		-- Junk/Misc Items (25% chance)
		-- Common
		{itemTemplate = "broken_decryptor", weight = 87719},
		{itemTemplate = "camera", weight = 87719},
		{itemTemplate = "corrupt_datadisk", weight = 87719},
		{itemTemplate = "corsec_id_badge", weight = 87719},
		{itemTemplate = "damaged_datapad", weight = 87719},
		{itemTemplate = "decorative_bowl", weight = 87719},
		{itemTemplate = "decorative_shisa", weight = 87719},
		{itemTemplate = "dermal_analyzer", weight = 87719},
		{itemTemplate = "dud_firework_grey", weight = 87719},
		{itemTemplate = "dud_firework_red", weight = 87719},
		{itemTemplate = "empty_cage", weight = 87719},
		{itemTemplate = "expensive_basket", weight = 87719},
		{itemTemplate = "expired_ticket", weight = 87719},
		{itemTemplate = "hyperdrive_part", weight = 87719},
		{itemTemplate = "ledger", weight = 87719},
		{itemTemplate = "locked_briefcase", weight = 87719},
		{itemTemplate = "locked_container", weight = 87719},
		{itemTemplate = "loudspeaker", weight = 87719},
		{itemTemplate = "palm_frond", weight = 87719},
		{itemTemplate = "photographic_image", weight = 87719},
		{itemTemplate = "recorded_image_1", weight = 87719},
		{itemTemplate = "recording_rod", weight = 87719},
		{itemTemplate = "slave_collar", weight = 87719},
		{itemTemplate = "used_ticket", weight = 87719},
		{itemTemplate = "worklight", weight = 87719},

		-- Uncommon
		{itemTemplate = "force_color_crystal", weight = 43861},
		{itemTemplate = "force_power_crystal", weight = 87722},
		{itemTemplate = "jedi_holocron_dark", weight = 43861},
		{itemTemplate = "jedi_holocron_light", weight = 43861},
		{itemTemplate = "attachment_clothing", weight = 43860},
		{itemTemplate = "attachment_armor", weight = 43860},

		
		
		{groupTemplate = "jedi_robe_s32_group", weight = 300000},
		{groupTemplate = "jedi_robe_s33_group", weight = 300000},
		{groupTemplate = "jedi_robe_s32_h1_group", weight = 300000},
		{groupTemplate = "jedi_robe_s33_h1_group", weight = 300000},
		{groupTemplate = "tiertwo", weight = 700000},
		{groupTemplate = "nge_house_loot_deed_01", weight = 1000000},
		{groupTemplate = "nge_house_loot_deed_windowed", weight = 800000},
		{groupTemplate = "jedi_belt_comp_group", weight = 1000000},
		

		
		{groupTemplate = "jedi_belt_group", weight = 1000000},
		{groupTemplate = "crafted_rugs", weight = 400000},
		{groupTemplate = "banner_imperial", weight = 200000},
		{groupTemplate = "banner_imperial02", weight = 200000},
		{groupTemplate = "banner_rebel", weight = 200000},
		{groupTemplate = "banner_rebel02", weight = 200000},
		{groupTemplate = "command_console", weight = 200000},
		{groupTemplate = "potted_plants_large", weight = 200000},
		{groupTemplate = "potted_plants_small", weight = 200000},
		
	}
}

addLootGroupTemplate("looted_container", looted_container)

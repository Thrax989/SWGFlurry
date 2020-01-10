looted_container = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		-- Junk/Misc Items (25% chance)
		-- Common
		{itemTemplate = "broken_decryptor", weight = 100000},
		{itemTemplate = "camera", weight = 100000},
		{itemTemplate = "corrupt_datadisk", weight = 100000},
		{itemTemplate = "corsec_id_badge", weight = 100000},
		{itemTemplate = "damaged_datapad", weight = 100000},
		{itemTemplate = "decorative_bowl", weight = 100000},
		{itemTemplate = "decorative_shisa", weight = 100000},
		{itemTemplate = "dermal_analyzer", weight = 100000},
		{itemTemplate = "dud_firework_grey", weight = 100000},
		{itemTemplate = "dud_firework_red", weight = 100000},
		{itemTemplate = "empty_cage", weight = 100000},
		{itemTemplate = "expensive_basket", weight = 100000},
		{itemTemplate = "expired_ticket", weight = 100000},
		{itemTemplate = "hyperdrive_part", weight = 100000},
		{itemTemplate = "ledger", weight = 100000},
		{itemTemplate = "locked_briefcase", weight = 100000},
		{itemTemplate = "locked_container", weight = 100000},
		{itemTemplate = "loudspeaker", weight = 100000},
		{itemTemplate = "palm_frond", weight = 100000},
		{itemTemplate = "photographic_image", weight = 100000},
		{itemTemplate = "recorded_image_1", weight = 100000},
		{itemTemplate = "recording_rod", weight = 100000},
		{itemTemplate = "slave_collar", weight = 100000},
		{itemTemplate = "used_ticket", weight = 100000},
		{itemTemplate = "worklight", weight = 100000},

		-- Uncommon
		{itemTemplate = "force_color_crystal", weight = 1000000},
		{itemTemplate = "force_power_crystal", weight = 100000},
		{itemTemplate = "jedi_holocron_dark", weight = 100000},
		{itemTemplate = "jedi_holocron_light", weight = 100000},
		{itemTemplate = "attachment_clothing", weight = 100000},
		{itemTemplate = "attachment_armor", weight = 100000},

		-- Weapons (25% chance)
		{groupTemplate = "weapons_all", weight = 1000000},
		{groupTemplate = "lifeday", weight = 1000000},
		-- Armors (25% chance)
		{groupTemplate = "armor_all", weight = 1000000},
		{groupTemplate = "nge_all", weight = 1000000},
		{groupTemplate = "outbreak", weight = 1000000},

		-- Clothing (25% chance)
		{groupTemplate = "wearables_all", weight = 1000000},
	}
}

addLootGroupTemplate("looted_container", looted_container)

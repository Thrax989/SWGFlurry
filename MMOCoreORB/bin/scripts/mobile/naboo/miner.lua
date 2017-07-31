miner = Creature:new {
	objectName = "@mob/creature_names:miner",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 5,
	chanceHit = 0.25,
	damageMin = 45,
	damageMax = 50,
	baseXp = 85,
	baseHAM = 135,
	baseHAMmax = 165,
	armor = 0,
	resists = {25,25,25,25,25,25,25,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_mand_miner_bith.iff",
		"object/mobile/dressed_mand_miner_aqualish.iff",
		"object/mobile/dressed_mand_miner_hum_01.iff",
		"object/mobile/dressed_mand_miner_hum_02.iff",
		"object/mobile/dressed_mand_miner_hum_03.iff",
		"object/mobile/dressed_commoner_fat_twilek_male_02.iff",
		"object/mobile/dressed_commoner_tatooine_ishitib_male_01.iff",
		"object/mobile/dressed_commoner_tatooine_rodian_male_01.iff",
		"object/mobile/dressed_commoner_tatooine_trandoshan_female_01.iff",
		"object/mobile/dressed_commoner_naboo_moncal_male_02.iff",
		"object/mobile/dressed_commoner_tatooine_nikto_male_02.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 7800000},
				{group = "color_crystals", chance = 200000},
				{group = "tailor_components", chance = 1000000},
				{group = "loot_kit_parts", chance = 1000000}
				
			}
		}
	},
	weapons = {"pirate_weapons_light"},
	attacks = merge(marksmannovice,brawlernovice)
}

CreatureTemplates:addCreatureTemplate(miner, "miner")
cave_dweller = Creature:new {
	-- objectName = "@mob/creature_names:",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "meatlump",
	faction = "",
	level = 300,
	chanceHit = 40.25,
	damageMin = 3750,
	damageMax = 3900,
	baseXp = 175550,
	baseHAM = 112000,
	baseHAMmax = 115000,
	armor = 2,
	resists = {50,50,50,50,50,50,50,50,50},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.15,

	templates = {
		"object/mobile/dressed_criminal_thug_aqualish_female_01.iff",
		"object/mobile/dressed_criminal_thug_aqualish_female_02.iff",
		"object/mobile/dressed_criminal_thug_aqualish_male_01.iff",
		"object/mobile/dressed_criminal_thug_aqualish_male_02.iff",
		"object/mobile/dressed_criminal_thug_human_female_01.iff",
		"object/mobile/dressed_criminal_thug_human_female_02.iff",
		"object/mobile/dressed_criminal_thug_human_male_01.iff",
		"object/mobile/dressed_criminal_thug_human_male_02.iff",
		"object/mobile/dressed_criminal_thug_rodian_female_01.iff",
		"object/mobile/dressed_criminal_thug_rodian_male_01.iff",
		"object/mobile/dressed_criminal_thug_trandoshan_female_01.iff",
		"object/mobile/dressed_criminal_thug_trandoshan_male_01.iff",
		"object/mobile/dressed_criminal_thug_zabrak_female_01.iff",
		"object/mobile/dressed_criminal_thug_zabrak_male_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "cave_dweller", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "cave_dweller", chance = 10000000}
			},
			lootChance = 10000000
		 },
		 {
			groups = {
				{group = "cave_dweller", chance = 10000000}
			},
			lootChance = 10000000
		},
		},	
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(bountyhuntermid,smugglermid,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(cave_dweller, "cave_dweller")

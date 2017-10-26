meatlump_clod = Creature:new {
	objectName = "@mob/creature_names:meatlump_clod",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "meatlump",
	faction = "meatlump",
	level = 8,
	chanceHit = 0.270000,
	damageMin = 70,
	damageMax = 75,
	baseXp = 235,
	baseHAM = 405,
	baseHAMmax = 495,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_criminal_thug_human_female_01.iff",
		"object/mobile/dressed_criminal_thug_human_female_02.iff",
		"object/mobile/dressed_criminal_thug_human_male_01.iff",
		"object/mobile/dressed_criminal_thug_human_male_02.iff",
		"object/mobile/dressed_criminal_thug_rodian_female_01.iff",
		"object/mobile/dressed_criminal_thug_rodian_male_01.iff",
		"object/mobile/dressed_criminal_thug_trandoshan_female_01.iff",
		"object/mobile/dressed_criminal_thug_trandoshan_male_01.iff",
		"object/mobile/dressed_criminal_thug_zabrak_female_01.iff",
		"object/mobile/dressed_criminal_thug_zabrak_male_01.iff",
		"object/mobile/dressed_crook_zabrak_female_01.iff",
		"object/mobile/dressed_crook_zabrak_male_01.iff"},
lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000}				
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "artifact", chance = 10000000}			
		},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "tierone", chance = 10000000}
		},
			lootChance = 750000
		},
		{
			groups = {
				{group = "meatlump_common", chance = 10000000}
		},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000}
		},
			lootChance = 2000000
		}
	},
	weapons = {"pirate_weapons_light"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlernovice,marksmannovice)
}

CreatureTemplates:addCreatureTemplate(meatlump_clod, "meatlump_clod")

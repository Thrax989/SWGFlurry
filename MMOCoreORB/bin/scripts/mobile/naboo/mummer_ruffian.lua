mummer_ruffian = Creature:new {
	objectName = "@mob/creature_names:mummer_ruffian",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "mummer",
	faction = "thug",
	level = 9,
	chanceHit = 0.270000,
	damageMin = 80,
	damageMax = 90,
	baseXp = 292,
	baseHAM = 675,
	baseHAMmax = 825,
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
	creatureBitmask = PACK + HERD,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_mugger.iff",
		"object/mobile/dressed_goon_twk_female_01.iff",
		"object/mobile/dressed_goon_twk_male_01.iff",
		"object/mobile/dressed_gran_thug_male_01.iff",
		"object/mobile/dressed_gran_thug_male_02.iff",
		"object/mobile/dressed_ruffian_zabrak_female_01.iff",
		"object/mobile/dressed_criminal_thug_zabrak_male_01.iff"},

--Static NPC Spawn Reduced Loot
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
				{group = "mummer_common", chance = 10000000}
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

CreatureTemplates:addCreatureTemplate(mummer_ruffian, "mummer_ruffian")

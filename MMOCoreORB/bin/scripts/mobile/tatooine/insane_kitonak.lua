insane_kitonak = Creature:new {
	objectName = "@mob/creature_names:insane_kitonak",
	socialGroup = "self",
	faction = "",
	level = 4,
	chanceHit = 0.240000,
	damageMin = 40,
	damageMax = 45,
	baseXp = 62,
	baseHAM = 113,
	baseHAMmax = 138,
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
	creatureBitmask = STALKER,
	diet = HERBIVORE,
	templates = {"object/mobile/kitonak_male.iff"},

--NPC Printer Parts
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000}				
		},
			lootChance = 7000000
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
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 100000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 50000
		},
		{
			groups = {
				{group = "printer_parts", chance = 10000000}
		},
			lootChance = 2000000
		}
	},
	weapons = {"rebel_weapons_light"},
	reactionStf = "@npc_reaction/townperson",
	attacks = merge(marksmannovice,brawlernovice)
}

CreatureTemplates:addCreatureTemplate(insane_kitonak, "insane_kitonak")

student_force1 = Creature:new {
	--objectName = "@mob/creature_names:",
	customName = "Wandering Apprentice",
	socialGroup = "dark_jedi",
	faction = "",
	level = 300,
	chanceHit = 30.00,
	damageMin = 500,
	damageMax = 1200,
	baseXp = 27849,
	baseHAM = 150000,
	baseHAMmax = 250000,
	armor = 0,
	resists = {25,25,25,25,25,25,25,25,25},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 1,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.0,
	templates = {"object/mobile/dressed_jedi_trainer_old_human_male_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 5000000},
				{group = "armor_all", chance = 2500000},
				{group = "weapons_all", chance = 2500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "redeed1", chance = 10000000}
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "jedi_bracelets", chance = 10000000}
			},
			lootChance = 100000
		},
		{
			groups = {
				{group = "jedi_earings", chance = 10000000}
			},
			lootChance = 100000
		},
		{
			groups = {
				{group = "jedi_neck", chance = 10000000}
			},
			lootChance = 100000
		},
		{
			groups = {
				{group = "jedi_rings", chance = 10000000}
			},
			lootChance = 100000
		},
		{
			groups = {
				{group = "holo_token1", chance = 10000000}			},
			lootChance = 1000000
		},
		},
	weapons = {"dark_jedi_weapons_gen4"},
	outfit = "student_of_the_force_outfit",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(student_force1, "student_force1")

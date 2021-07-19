student_force1 = Creature:new {
	--objectName = "@mob/creature_names:",
	customName = "Student of the force",
	socialGroup = "mercenary",
	faction = "",
	level = 300,
	chanceHit = 75.00,
	damageMin = 1200,
	damageMax = 1800,
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
	scale = 0.8,
	templates = {"object/mobile/dressed_jedi_trainer_old_human_male_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "ancient_force_bread", chance = 10000000}
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "trash_common", chance = 10000000}
			},
			lootChance = 10000000
		},
	},
	weapons = {"dark_jedi_weapons_gen4"},
	outfit = "student_of_the_force_outfit",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(student_force1, "student_force1")

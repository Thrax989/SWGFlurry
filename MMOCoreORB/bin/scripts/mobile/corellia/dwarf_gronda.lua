dwarf_gronda = Creature:new {
	objectName = "@mob/creature_names:dwarf_gronda",
	socialGroup = "gronda",
	faction = "",
	level = 13,
	chanceHit = 0.29,
	damageMin = 130,
	damageMax = 140,
	baseXp = 514,
	baseHAM = 1200,
	baseHAMmax = 1400,
	armor = 0,
	resists = {120,120,0,0,0,0,0,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 280,
	hideType = "hide_leathery",
	hideAmount = 170,
	boneType = "bone_mammal",
	boneAmount = 90,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/dwarf_gronda.iff"},
	scale = 0.8,
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000}				},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "artifact", chance = 10000000}			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "tierone", chance = 10000000}			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 500000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(dwarf_gronda, "dwarf_gronda")

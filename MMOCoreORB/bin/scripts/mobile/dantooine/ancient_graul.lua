ancient_graul = Creature:new {
	objectName = "@mob/creature_names:ancient_graul",
	socialGroup = "graul",
	faction = "",
	level = 50,
	chanceHit = 0.47,
	damageMin = 370,
	damageMax = 450,
	baseXp = 4825,
	baseHAM = 9700,
	baseHAMmax = 11900,
	armor = 1,
	resists = {160,145,170,170,170,-1,0,0,-1},
	meatType = "meat_carnivore",
	meatAmount = 950,
	hideType = "hide_leathery",
	hideAmount = 875,
	boneType = "bone_mammal",
	boneAmount = 775,
	milk = 0,
	tamingChance = 0,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/graul_hue.iff"},
	scale = 1.15,

--Creature Default Loot Template
	lootGroups = {
		{
			groups = {
				{group = "artifact", chance = 10000000}			
		},
			lootChance = 100000
		},
		{
			groups = {
				{group = "tierone", chance = 10000000}
		},
			lootChance = 50000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 25000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 10000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack",""},
		{"blindattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(ancient_graul, "ancient_graul")

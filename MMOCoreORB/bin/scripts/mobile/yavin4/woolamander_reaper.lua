woolamander_reaper = Creature:new {
	objectName = "@mob/creature_names:woolamander_reaper",
	socialGroup = "woolamander",
	faction = "",
	level = 47,
	chanceHit = 0.48,
	damageMin = 375,
	damageMax = 460,
	baseXp = 4643,
	baseHAM = 9800,
	baseHAMmax = 12000,
	armor = 0,
	resists = {35,35,0,170,170,170,0,0,0},
	meatType = "meat_carnivore",
	meatAmount = 35,
	hideType = "hide_wooly",
	hideAmount = 20,
	boneType = "bone_mammal",
	boneAmount = 20,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	templates = {"object/mobile/woolamander_hue.iff"},
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
		{"creatureareadisease",""},
		{"intimidationattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(woolamander_reaper, "woolamander_reaper")

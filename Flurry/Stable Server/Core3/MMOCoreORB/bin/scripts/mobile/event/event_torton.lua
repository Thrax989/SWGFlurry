event_torton = Creature:new {
	customName = "Massive Escaped Torton",
	socialGroup = "torton",
	faction = "",
	level = 100,
	chanceHit = 0.35,
	damageMin = 270,
	damageMax = 280,
	baseXp = 2443,
	baseHAM = 120000,
	baseHAMmax = 120000,
	armor = 1,
	resists = {10,10,10,-1,-1,-1,-1,145,-1},
	meatType = "meat_carnivore",
	meatAmount = 100000,
	hideType = "hide_wooly",
	hideAmount = 100000,
	boneType = "bone_mammal",
	boneAmount = 100000,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/torton.iff"},
	scale = 2,

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
		{"knockdownattack",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(event_torton, "event_torton")

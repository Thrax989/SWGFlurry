event_peko_peko = Creature:new {
	customName = "Massive Escaped Peko Peko",
	socialGroup = "peko",
	faction = "",
	level = 100,
	chanceHit = 0.35,
	damageMin = 210,
	damageMax = 220,
	baseXp = 2219,
	baseHAM = 120000,
	baseHAMmax = 120000,
	armor = 0,
	resists = {10,125,150,-1,-1,150,-1,-1,-1},
	meatType = "meat_avian",
	meatAmount = 100000,
	hideType = "hide_wooly",
	hideAmount = 100000,
	boneType = "bone_avian",
	boneAmount = 100000,
	milk = 0,
	tamingChance = 0,
	ferocity = 8,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/giant_peko_peko.iff"},
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
		{"dizzyattack",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(event_peko_peko, "event_peko_peko")

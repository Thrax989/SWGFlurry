feral_forest_mite_king = Creature:new {
	objectName = "@mob/creature_names:feral_forest_mite_king",
	socialGroup = "mite",
	faction = "",
	level = 27,
	chanceHit = 0.35,
	damageMin = 230,
	damageMax = 240,
	baseXp = 2822,
	baseHAM = 6800,
	baseHAMmax = 8300,
	armor = 0,
	resists = {10,140,-1,150,-1,150,150,-1,-1},
	meatType = "meat_insect",
	meatAmount = 20,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/forest_mite.iff"},
	scale = 1.25,

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
	weapons = {"creature_spit_small_yellow"},
	conversationTemplate = "",
	attacks = {
		{"blindattack",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(feral_forest_mite_king, "feral_forest_mite_king")

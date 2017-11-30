blister_rot_mite_queen = Creature:new {
	objectName = "@mob/creature_names:blister_rot_queen",
	socialGroup = "mite",
	faction = "",
	level = 15,
	chanceHit = 0.3,
	damageMin = 160,
	damageMax = 170,
	baseXp = 960,
	baseHAM = 2000,
	baseHAMmax = 2400,
	armor = 0,
	resists = {0,0,0,0,110,0,110,-1,-1},
	meatType = "meat_insect",
	meatAmount = 10,
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

	templates = {"object/mobile/blister_rot_queen.iff"},
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
	weapons = {"creature_spit_small_red"},
	conversationTemplate = "",
	attacks = {
		{"mediumdisease",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(blister_rot_mite_queen, "blister_rot_mite_queen")

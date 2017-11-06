stintaril_prowler = Creature:new {
	objectName = "@mob/creature_names:stintaril_prowler",
	socialGroup = "stinaril",
	faction = "",
	level = 83,
	chanceHit = 0.85,
	damageMin = 595,
	damageMax = 900,
	baseXp = 7945,
	baseHAM = 12000,
	baseHAMmax = 15000,
	armor = 1,
	resists = {40,40,40,40,40,40,40,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 9,
	hideType = "hide_bristley",
	hideAmount = 7,
	boneType = "bone_mammal",
	boneAmount = 6,
	milk = 0,
	tamingChance = 0,
	ferocity = 3,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/stintaril_hue.iff"},
	scale = 1.5,

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
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(stintaril_prowler, "stintaril_prowler")

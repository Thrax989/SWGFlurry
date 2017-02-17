cyborg_bol = Creature:new {
	objectName = "@mob/creature_names:warren_cyborg_bol",
	socialGroup = "warren_cyborg",
	faction = "",
	level = 36,
	chanceHit = 0.42,
	damageMin = 325,
	damageMax = 360,
	baseXp = 3551,
	baseHAM = 8900,
	baseHAMmax = 10900,
	armor = 0,
	resists = {145,0,-1,0,0,-1,0,-1,-1},
	meatType = "meat_wild",
	meatAmount = 200,
	hideType = "hide_leathery",
	hideAmount = 320,
	boneType = "bone_mammal",
	boneAmount = 200,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/warren_cyborg_bol.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "wearables_all", chance = 5000000},
				{group = "loot_kit_parts", chance = 2500000},
				{group = "tailor_components", chance = 2500000}
			},
			lootChance = 10000000
		},
		},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack",""},
		{"intimidationattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(cyborg_bol, "cyborg_bol")

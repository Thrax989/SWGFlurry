thune_herd_leader = Creature:new {
	objectName = "@mob/creature_names:thune_herd_leader",
	socialGroup = "thune",
	faction = "",
	level = 48,
	chanceHit = 0.48,
	damageMin = 375,
	damageMax = 460,
	baseXp = 4734,
	baseHAM = 9800,
	baseHAMmax = 12000,
	armor = 0,
	resists = {140,160,0,-1,-1,0,0,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 135,
	hideType = "hide_wooly",
	hideAmount = 150,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/thune_herd_leader.iff"},
	scale = 1.15,
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
		{"dizzyattack",""},
		{"posturedownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(thune_herd_leader, "thune_herd_leader")

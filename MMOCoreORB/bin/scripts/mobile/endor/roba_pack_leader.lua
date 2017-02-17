roba_pack_leader = Creature:new {
	objectName = "@mob/creature_names:roba_pack_leader",
	socialGroup = "roba",
	faction = "",
	level = 30,
	chanceHit = 0.39,
	damageMin = 310,
	damageMax = 330,
	baseXp = 3005,
	baseHAM = 8100,
	baseHAMmax = 9900,
	armor = 0,
	resists = {20,20,20,160,-1,160,-1,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 15,
	hideType = "hide_leathery",
	hideAmount = 30,
	boneType = "bone_mammal",
	boneAmount = 15,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/roba_hue.iff"},
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
		{"blindattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(roba_pack_leader, "roba_pack_leader")

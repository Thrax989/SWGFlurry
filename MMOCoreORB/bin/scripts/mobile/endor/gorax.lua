gorax = Creature:new {
	objectName = "@mob/creature_names:gorax",
	socialGroup = "gorax",
	faction = "",
	level = 85,
	chanceHit = 8.5,
	damageMin = 1245,
	damageMax = 1900,
	baseXp = 13367,
	baseHAM = 110000,
	baseHAMmax = 125000,
	armor = 0,
	resists = {185,185,175,175,175,175,175,175,155},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/gorax.iff"},
	lootGroups = {
		{
			groups = {
				{group = "gorax_common", chance = 6000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "gorax_common", chance = 10000000},
			},
			lootChance = 8500000
		},
		},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareaknockdown",""},
		{"creatureareaattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(gorax, "gorax")

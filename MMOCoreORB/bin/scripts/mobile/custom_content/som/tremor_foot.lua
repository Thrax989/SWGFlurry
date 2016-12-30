tremor_foot = Creature:new {
	customName = "Tremor Foot",
	socialGroup = "mustafar",
	pvpFaction = "",
	faction = "",
	level = 225,
	chanceHit = 30,
	damageMin = 2050,
	damageMax = 3200,
	baseXp = 12500,
	baseHAM = 275000,
	baseHAMmax = 395000,
	armor = 3,
	resists = {195,195,195,195,165,195,195,195,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/tremor_foot.iff"},
	scale = 3.5,
	lootGroups = {
		{
	        groups = {
					{group = "clothing_attachments",  chance = 3000000},
					{group = "armor_attachments", chance = 3000000},
					{group = "holocron_dark",  chance = 1000000},
					{group = "holocron_light",  chance = 1000000},
					{group = "crystal_prowess_of_plo_koon", chance = 1000000},
					{group = "crystal_sunriders_destiny", chance = 1000000},
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"creatureareaknockdown","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(tremor_foot, "tremor_foot")

som_kenobi_historian_dark_jedi = Creature:new {
	customName = "Dark Jedi Templar",
	socialGroup = "dark_jedi",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 85.00,
	damageMin = 1800,
	damageMax = 3310,
	baseXp = 278490,
	baseHAM = 421000,
	baseHAMmax = 1092000,
	armor = 3,
	resists = {95,95,95,95,95,95,95,95,95},
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
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/som_kenobi_historian_dark_jedi.iff"},
	lootGroups = {
		{
			groups = {
					{group = "holocron_dark", chance = 3000000},
					{group = "armor_attachments", chance = 3000000},
					{group = "pearls_flawless", chance = 3000000},
					{group = "clothing_attachments", chance = 1000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
					{group = "holocron_dark", chance = 3000000},
					{group = "armor_attachments", chance = 3000000},
					{group = "pearls_flawless", chance = 3000000},
					{group = "clothing_attachments", chance = 1000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
					{group = "holocron_dark", chance = 3000000},
					{group = "armor_attachments", chance = 3000000},
					{group = "pearls_flawless", chance = 3000000},
					{group = "clothing_attachments", chance = 1000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "saberhand24", chance = 10000000}
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "saberhand25", chance = 10000000}
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "saberhand26", chance = 10000000}
			},
			lootChance = 1000000
		},
	},
	weapons = {"dark_jedi_weapons_gen3"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(som_kenobi_historian_dark_jedi, "som_kenobi_historian_dark_jedi")

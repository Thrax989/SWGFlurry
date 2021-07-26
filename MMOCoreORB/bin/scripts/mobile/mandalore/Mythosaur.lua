mythosaur = Creature:new {
	objectName = "",
	customName = "Mythosaur",
	socialGroup = "kimogila",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 30.0,
	damageMin = 2270,
	damageMax = 4250,
	baseXp = 25000,
	baseHAM = 410000,
	baseHAMmax = 501000,
	armor = 2,
	resists = {195,195,195,195,165,195,195,195,135},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 1000,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
    scale = 1.5,
	templates = {"object/mobile/giant_dune_kimogila.iff"},
	lootGroups = {
		{
			groups = {
				{group = "krayt_pearls_flawless", chance = 10000000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "vehicledeedsrare", chance = 10000000},
			},
			lootChance = 100000
		},
		{
			groups = {
				{group = "mythosaur_common", chance = 10000000},
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "mythosaur_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "tierone", chance = 2000000},
				{group = "tiertwo", chance = 4000000},
				{group = "tierthree", chance = 2000000},
				{group = "tierdiamond", chance = 2000000},
			},
			lootChance = 8000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"creatureareaknockdown","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(mythosaur, "mythosaur")

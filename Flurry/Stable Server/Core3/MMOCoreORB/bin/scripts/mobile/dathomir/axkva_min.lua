axkva_min = Creature:new {
	objectName = "@mob/creature_names:axkva_min",
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 300,
	chanceHit = 30,
	damageMin = 1645,
	damageMax = 3000,
	specialDamageMult = 7.5,
	baseXp = 28549,
	baseHAM = 385000,
	baseHAMmax = 471000,
	armor = 3,
	resists = {100,135,135,100,100,100,100,100,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_nightsister_axkva.iff"},
	lootGroups = {
		{
			groups = {
				{group = "power_crystals", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "nightsister_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "pistols", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "rifles", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "carbines", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "melee_weapons", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "wearables_rare", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "nge_all", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "axkva_min", chance = 10000000},
			},
			lootChance = 5000000
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(fencermaster,swordsmanmaster,tkamaster,pikemanmaster,brawlermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(axkva_min, "axkva_min")

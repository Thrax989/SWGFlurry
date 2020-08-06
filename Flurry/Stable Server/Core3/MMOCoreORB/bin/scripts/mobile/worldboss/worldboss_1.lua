worldboss_1 = Creature:new {
	customName = "Draco",
	socialGroup = "krayt",
	faction = "",
	level = 300,
	chanceHit = 50.0,
	damageMin = 3000,
	damageMax = 6000,
	baseXp = 28549,
	baseHAM = 990000,
	baseHAMmax = 1000000,
	armor = 3,
	resists = {175,175,175,175,175,175,175,175,175},
	meatType = "meat_carnivore",
	meatAmount = 1500,
	hideType = "hide_bristley",
	hideAmount = 1500,
	boneType = "bone_mammal",
	boneAmount = 1500,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED + INTERESTING,
	diet = CARNIVORE,
	scale = 3.0,

	templates = {"object/mobile/krayt_dragon_hue.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	lootGroups = {
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 1000000
		},	
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "weapons_all", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "worldbosscrate", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "boss_rare", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "boss_rare", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"creatureareaknockdown","stateAccuracyBonus=100"},
		{"posturedownattack","stateAccuracyBonus=100"},
		{"creatureareacombo","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(worldboss_1, "worldboss_1")

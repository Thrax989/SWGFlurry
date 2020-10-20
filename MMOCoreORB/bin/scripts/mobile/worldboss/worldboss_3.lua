worldboss_3 = Creature:new {
	customName = "Mutant Acklay Guardian",
	socialGroup = "",
	faction = "",
	level = 300,
	chanceHit = 90.0,
	damageMin = 6000,
	damageMax = 8000,
	baseXp = 28549,
	baseHAM = 990000,
	baseHAMmax = 1000000,
	armor = 3,
	resists = {175,175,175,175,175,175,150,175,160},
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

	templates = {"object/mobile/mutant_acklay.iff"},
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
			lootChance = 10000000
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
			lootChance = 5000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 5000000
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
				{group = "worldbosscrate", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "boss_rare", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "boss_rare", chance = 10000000},
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
		{"creatureareaknockdown","stateAccuracyBonus=100"},
		{"posturedownattack","stateAccuracyBonus=100"},
    {"creatureareadisease","DiseaseChance=100"},
    {"creatureareableeding","BleedChance=100"},    
		{"creatureareacombo","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(worldboss_3, "worldboss_3")

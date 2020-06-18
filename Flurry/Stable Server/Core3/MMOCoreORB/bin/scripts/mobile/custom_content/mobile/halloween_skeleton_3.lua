halloween_skeleton_3 = Creature:new {
	customName = "Undead Skeleton",
	--objectName = "",
	--randomNameType = NAME_GENERIC_TAG,
	socialGroup = "halloween",
	faction = "halloween",
	level = 300,
	chanceHit = 23.5,
	damageMin = 1645,
	damageMax = 3000,
	baseXp = 25167,
	baseHAM = 261000,
	baseHAMmax = 320000,
	armor = 3,
	resists = {85,80,35,100,20,30,45,80,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.00,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/halloween_skeleton_3.iff"},
	lootGroups = {
		{
			groups = {
				{group = "tierone", chance = 10000000},
			},
			lootChance = 4000000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000},
			},
			lootChance = 4000000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000},
			},
			lootChance = 4000000
		},
		{
			groups = {
				{group = "tierdiamond", chance = 10000000},
			},
			lootChance = 4000000
		},
		{
			groups = {
				{group = "halloween", chance = 10000000},
			},
			lootChance = 4000000
		},
		{
			groups = {
				{group = "power_crystals", chance = 10000000},
			},
			lootChance = 4000000
		},
		{
			groups = {
				{group = "nightsister1", chance = 10000000},
			},
			lootChance = 4000000
		},
		{
			groups = {
				{group = "nightsister2", chance = 10000000},
			},
			lootChance = 4000000
		},
		{
			groups = {
				{group = "nightsister3", chance = 10000000},
			},
			lootChance = 4000000
		},
		{
			groups = {
				{group = "nightsister4", chance = 10000000},
			},
			lootChance = 4000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 4000000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000},
			},
			lootChance = 4000000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(halloween_skeleton_3, "halloween_skeleton_3")


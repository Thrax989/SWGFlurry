halloween_skeleton_1 = Creature:new {
	customName = "Undead Skeleton",
	--objectName = "",
	--randomNameType = NAME_GENERIC_TAG,
	socialGroup = "halloween",
	faction = "halloween",
	level = 150,
	chanceHit = 15.75,
	damageMin = 1070,
	damageMax = 2050,
	baseXp = 21630,
	baseHAM = 208000,
	baseHAMmax = 254000,
	armor = 1,
	resists = {185,185,135,200,10,130,145,180,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/halloween_skeleton_1.iff"},
	lootGroups = {
		{
			groups = {
				{group = "tierone", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "tierdiamond", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "halloween", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "power_crystals", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "nightsister1", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "nightsister2", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "nightsister3", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "nightsister4", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000},
			},
			lootChance = 2500000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(halloween_skeleton_1, "halloween_skeleton_1")


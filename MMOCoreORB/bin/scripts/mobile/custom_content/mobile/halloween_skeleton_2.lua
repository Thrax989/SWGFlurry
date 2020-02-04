halloween_skeleton_2 = Creature:new {
	customName = "Undead Skeleton",
	--objectName = "",
	--randomNameType = NAME_GENERIC_TAG,
	socialGroup = "halloween",
	faction = "halloween",
	level = 250,
	chanceHit = 19.75,
	damageMin = 1270,
	damageMax = 2250,
	baseXp = 21630,
	baseHAM = 208000,
	baseHAMmax = 254000,
	armor = 2,
	resists = {185,185,135,200,10,130,145,180,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/halloween_skeleton_2.iff"},
	lootGroups = {
		{
			groups = {
				{group = "tierone", chance = 10000000},
			},
			lootChance = 3000000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000},
			},
			lootChance = 3000000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000},
			},
			lootChance = 3000000
		},
		{
			groups = {
				{group = "tierdiamond", chance = 10000000},
			},
			lootChance = 3000000
		},
		{
			groups = {
				{group = "halloween", chance = 10000000},
			},
			lootChance = 3000000
		},
		{
			groups = {
				{group = "power_crystals", chance = 10000000},
			},
			lootChance = 3000000
		},
		{
			groups = {
				{group = "nightsister1", chance = 10000000},
			},
			lootChance = 3000000
		},
		{
			groups = {
				{group = "nightsister2", chance = 10000000},
			},
			lootChance = 3000000
		},
		{
			groups = {
				{group = "nightsister3", chance = 10000000},
			},
			lootChance = 3000000
		},
		{
			groups = {
				{group = "nightsister4", chance = 10000000},
			},
			lootChance = 3000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 3000000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000},
			},
			lootChance = 3000000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(halloween_skeleton_2, "halloween_skeleton_2")


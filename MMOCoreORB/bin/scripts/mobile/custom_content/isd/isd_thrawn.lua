isd_thrawn = Creature:new {
	--objectName = "",
	customName = "\\#00ff00<<< General Thrawn >>> \\#ff0000[lvl 300]",
	socialGroup = "mercenary",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 90.00,
	damageMin = 7000,
	damageMax = 8500,
	specialDamageMult = 7.5,
	baseXp = 28549,
	baseHAM = 600000,
	baseHAMmax = 800000,
	armor = 2,
	resists = {180,180,180,180,180,180,180,180,165},
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
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED + INTERESTING,
	diet = HERBIVORE,
	scale = 1.3,


	templates = {"object/mobile/naboo_npc/thrawn.iff"},

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
	weapons = {"imperial_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(isd_thrawn, "isd_thrawn")

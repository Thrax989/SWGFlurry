palpatine_elder = Creature:new {
	-- objectName = "@mob/creature_names:",
	customName = "Palpatine (Boss)",
	socialGroup = "dark_jedi",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 95.00,
	damageMin = 1800,
	damageMax = 3310,
	baseXp = 278490,
	baseHAM = 421000,
	baseHAMmax = 4092000,
	armor = 0,
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
	templates = {"object/mobile/palpatine.iff"},
	lootGroups = {
		{
			groups = {
				{group = "saberhand3", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "nge1", chance = 10000000}
			},
			lootChance = 10000000
		 },
		{
			groups = {
				{group = "nge2", chance = 10000000}
			},
			lootChance = 10000000
		 },
		{
			groups = {
				{group = "nge3", chance = 10000000}
			},
			lootChance = 10000000
		 },
		{
			groups = {
				{group = "weapons_all", chance = 10000000}
			},
			lootChance = 10000000
		 },
		{
			groups = {
				{group = "melee_weapons", chance = 10000000}
			},
			lootChance = 10000000
		 },
		{
			groups = {
				{group = "saberhand3", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "saberhand1", chance = 5000000},
				{group = "saberhand2", chance = 5000000}
			},
			lootChance = 10000000
		},
		},	
	weapons = {"dark_jedi_weapons_gen4"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(palpatine_elder, "palpatine_elder")

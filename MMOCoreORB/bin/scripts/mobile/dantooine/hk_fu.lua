hk_fu = Creature:new {
	-- objectName = "@mob/creature_names:",
	customName = "hk_fu (Meatbag Popper)",
	socialGroup = "self",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 75,
	damageMin = 7900,
	damageMax = 8100,
	baseXp = 435409,
	baseHAM = 25000000,
	baseHAMmax = 26000000,
	armor = 0,
	resists = {90,90,90,90,90,90,90,90,90},
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
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED + INTERESTING,
	diet = HERBIVORE,

templates = {"object/mobile/som/hk47.iff"},

	lootGroups = {
		{
			groups = {
				{group = "hk_fu", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "hk_fu", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "hk_fu", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "hk_fu", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "hk_fu", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "hk_fu", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "hk_fu", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "hk_fu", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "hk_fu", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "hk_fu", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "hk_fu", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "hk_fu", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "hk_fu", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "hk_fu", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "hk_fu", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "hk_fu", chance = 10000000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "barc_speeder_deed_group", chance = 10000000}
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "barc_speeder_deed_group", chance = 10000000}
			},
			lootChance = 1000000
		 },
			{
			groups = {
				{group = "hk_fu", chance = 10000000}
			},
			lootChance = 10000000
		 },
		{
			groups = {
				{group = "hk_fu", chance = 10000000}
			},
			lootChance = 10000000
		 },
		{
			groups = {
				{group = "hk_fu", chance = 10000000}
			},
			lootChance = 10000000
		 },
		},	
	reactionStf = "@npc_reaction/slang",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "creaturerangedattack"
}

CreatureTemplates:addCreatureTemplate(hk_fu, "hk_fu")

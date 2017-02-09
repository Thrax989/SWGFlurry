ep3_clone_relics_leia = Creature:new {
	customName = "Princess Leia",
	--randomNameType = NAME_GENERIC_TAG,
	socialGroup = "",
	faction = "",
	level = 300,
	chanceHit = 75.00,
	damageMin = 1800,
	damageMax = 3310,
	baseXp = 278490,
	baseHAM = 421000,
	baseHAMmax = 892000,
	armor = 3,
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
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/ep3/ep3_clone_relics_leia.iff"},
		lootGroups = {
		{
			groups = {
				{group = "saberhand3", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "nge1", chance = 10000000}
			},
			lootChance = 5000000
		 },
		 {
			groups = {
				{group = "barc_speeder_deed_group", chance = 10000000}
			},
			lootChance = 100000
		},
		{
			groups = {
				{group = "wearables_all", chance = 10000000}
			},
			lootChance = 10000000
		 },
		{
			groups = {
				{group = "wearables_rare", chance = 10000000}
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
			lootChance = 5000000
		},
		},	
	weapons = {"luke_skywalker_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,marksmanmaster,lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(ep3_clone_relics_leia, "ep3_clone_relics_leia")

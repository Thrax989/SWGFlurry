donkuwah_tribesman = Creature:new {
	objectName = "@mob/creature_names:donkuwah_tribesman",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "donkuwah_tribe",
	faction = "donkuwah_tribe",
	level = 300,
	chanceHit = 75.00,
  specialDamageMult = 2.5,
	damageMin = 5050,
	damageMax = 8050,
	baseXp = 13273,
	baseHAM = 150000,
	baseHAMmax = 200000,
	armor = 3,
	resists = {45,65,25,80,80,80,25,35,45},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dulok_male.iff",
		"object/mobile/dulok_female.iff"},
	lootGroups = {
		{
			groups = {
				{group = "trash_common", chance = 8000000},
 				{group = "trash_rare", chance = 2000000},       
			},
			lootChance = 10000000
		},		
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 8000000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000},
			},
			lootChance = 8000000
		},
		{
			groups = {
				{group = "donkuwah_common", chance = 10000000},
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
			lootChance = 5000000
		},
	},
	weapons = {"donkuwah_weapons"},
	conversationTemplate = "",
	attacks = brawlermid
}

CreatureTemplates:addCreatureTemplate(donkuwah_tribesman, "donkuwah_tribesman")

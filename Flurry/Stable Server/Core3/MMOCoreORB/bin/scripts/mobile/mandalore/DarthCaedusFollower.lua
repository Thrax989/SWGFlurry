darth_caedus_follower = Creature:new {
	customName = "Caedus Follower",
	socialGroup = "Dark Jedi",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 75.00,
	damageMin = 1750,
	damageMax = 3750,
	specialDamageMult = 7.5,  
	baseXp = 15000,
	baseHAM = 115000,
	baseHAMmax = 125000,
	armor = 3,
	resists = {170,170,170,170,170,170,170,170,170},
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
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_dark_jedi_human_male_01.iff",
		"object/mobile/dressed_dark_jedi_human_female_01.iff"},
  
	lootGroups = {
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "jedi_comp_group", chance = 10000000},
			},
			lootChance = 200000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
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
			lootChance = 3000000
     }
   },
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(darth_caedus_follower, "darth_caedus_follower")

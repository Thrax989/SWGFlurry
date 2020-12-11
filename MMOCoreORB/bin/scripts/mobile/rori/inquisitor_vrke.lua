inquisitor_vrke = Creature:new {
	customName = "Inquisitor Vrke",
	socialGroup = "Dark Jedi",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 65.00,
	damageMin = 2450,
	damageMax = 3250,
	specialDamageMult = 7.5,  
	baseXp = 25000,
	baseHAM = 350000,
	baseHAMmax = 425000,
	armor = 2,
	resists = {195,170,170,170,-1,170,170,-1,100}, -- Vulnerable to Stun and Cold attacks.
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
	scale = 1.5;

	templates = {"object/mobile/dressed_imperial_inquisitor_human_male_02.iff"}, --Red Robed Inquisitor Model
  
	lootGroups = {
		{
			groups = {
				{group = "trash_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "trash_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "trash_rare", chance = 10000000},
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
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(inquisitor_vrke, "inquisitor_vrke")

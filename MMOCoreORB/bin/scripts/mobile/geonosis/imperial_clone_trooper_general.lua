imperial_clone_trooper_general = Creature:new {
	customName = "Clone Trooper General \\#ff0000[Imperial]",
	socialGroup = "",
	faction = "",
	level = 100,
	chanceHit = 1.0,
	damageMin = 500,
	damageMax = 1500,
	baseXp = 128549,
	baseHAM = 100000,
	baseHAMmax = 110000,
	armor = 3,
	resists = {90,90,90,90,90,90,90,90,50},--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = NONE,
	scale = 1.0,
	templates = {"object/mobile/halloween_skeleton_1.iff"},
	outfit = "clone_trooper_imperial_general_outfit",
	lootGroups = {
		{
			groups = {
				{group = "jedi_comp_group", chance = 10000000},
			},
			lootChance = 500000
		},	
		{
			groups = {
				{group = "holocron_dark", chance = 2000000},
				{group = "holocron_light", chance = 2000000},
				{group = "power_crystals", chance = 1000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "dark_jedi_common", chance = 1000000}
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
		{
			groups = {
				{group = "vehicledeedsrare", chance = 10000000},
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "nge_all", chance = 10000000},
			},
			lootChance = 10000000
		}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(imperial_clone_trooper_general, "imperial_clone_trooper_general")


ig_battledroid = Creature:new {
	customName = "Ig Battle Droid",
	socialGroup = "mercenary",
	faction = "",
	level = 300,
	chanceHit = 50.00,
	damageMin = 700,
	damageMax = 1200,
	baseXp = 400000,
	baseHAM = 200000,
	baseHAMmax = 300000,
	armor = 1,
	resists = {140,150,150,150,150,150,150,150,130},--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
	scale = 1.40,

	templates = {"object/mobile/death_watch_battle_droid_02.iff"},
	lootGroups = {
		{
			groups = {
				{group = "trash_common", chance = 10000000},
			},
			lootChance = 800000
		},
		{
			groups = {
				{group = "trash_rare", chance = 10000000},
			},
			lootChance = 600000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 500000
		}
	},
	weapons = {"battle_droid_weapons"},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,carbineermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(ig_battledroid, "ig_battledroid")

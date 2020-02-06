ig_battledroid = Creature:new {
	customName = "Ig Battle Droid",
	socialGroup = "mercenary",
	faction = "",
	level = 300,
	chanceHit = 25.00,
	damageMin = 250,
	damageMax = 350,
	baseXp = 400000,
	baseHAM = 430000,
	baseHAMmax = 430000,
	armor = 0,
	resists = {70,70,70,70,70,70,70,70,70},--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
	lootGroups = {},
	weapons = {"battle_droid_weapons"},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,carbineermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(ig_battledroid, "ig_battledroid")

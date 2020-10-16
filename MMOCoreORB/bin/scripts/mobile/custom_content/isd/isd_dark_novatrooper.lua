isd_dark_novatrooper = Creature:new {
	customName = "\\#00ff00<<< Dark Novatrooper >>> \\#ff0000[lvl 300]",
	socialGroup = "mercenary",
	faction = "",
	level = 300,
	chanceHit = 80.0,
	damageMin = 3000,
	damageMax = 4500,
	baseXp = 21700,
	baseHAM = 50000,
	baseHAMmax = 80000,
	armor = 2,
	resists = {140,160,160,160,160,160,160,160,150},--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = NONE,
	scale = 1.3,

	templates = {"object/mobile/dressed_stormtrooper_black_black.iff"},
	lootGroups = {},
	weapons = {"dark_trooper_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/stormtrooper",
	attacks = merge(riflemanmaster,fencermaster)
}

CreatureTemplates:addCreatureTemplate(isd_dark_novatrooper, "isd_dark_novatrooper")
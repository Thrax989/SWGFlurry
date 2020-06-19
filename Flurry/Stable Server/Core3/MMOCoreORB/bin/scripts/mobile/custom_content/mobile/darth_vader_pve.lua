darth_vader_pve = Creature:new {
	objectName = "",
	customName = "Darth Vader <Dark Lord of the Sith>",
	socialGroup = "Dark Jedi",
	pvpFaction = "",
	faction = "",
	level = 50,
	chanceHit = 300,
	damageMin = 245,
	damageMax = 300,
	baseXp = 28549,
	baseHAM = 90000,
	baseHAMmax = 100000,
	armor = 2,
	resists = {20,20,20,20,20,20,20,20,1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
<<<<<<< HEAD
	tamingChance = 0.0,
=======
	tamingChance = 0.00,
>>>>>>> 49dba15ebfe4217b8d3cb3ced3b2bd5d52e08bf9
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/darth_vader.iff"},
	scale = 1.4,	
	lootGroups = {},
	weapons = {"darth_vader_weapons"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(darth_vader_pve, "darth_vader_pve")

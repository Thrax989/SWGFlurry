bolotaur = Creature:new {--	customName = "Bolotaur",	--randomNameType = NAME_GENERIC,	--randomNameTag = true,
  objectName = "@mob/creature_names:bolotaur",	socialGroup = "townsperson",--	faction = "townsperson",	level = 11,
	chanceHit = 0.28,
	damageMin = 90,
	damageMax = 110,
	baseXp = 514,
	baseHAM = 810,
	baseHAMmax = 990,
	armor = 0,
	resists = {10,5,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,	optionsBitmask = AIENABLED,	diet = HERBIVORE,	templates = {"object/mobile/bolotaur.iff"},	lootGroups = {},	weapons = {},	conversationTemplate = "",	attacks = {	}}CreatureTemplates:addCreatureTemplate(bolotaur, "bolotaur")
urnsoris_young = Creature:new {
	customName = "urnsoris_young",
  objectName = "@mob/creature_names:urnsoris_young",	
--  randomNameType = NAME_GENERIC,
--	randomNameTag = true,
	socialGroup = "townsperson",
	-- faction = "townsperson",

	level = 35,
	chanceHit = 0.39,
	damageMin = 215,
	damageMax = 350,
	baseXp = 497,
	baseHAM = 3700,
	baseHAMmax = 5400,
	armor = 0,
	resists = {20,20,20,20,20,20,20,20,-1},
	meatType = "meat_insect",
	meatAmount = 22,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD + HEALER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/urnsoris_young.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(urnsoris_young, "urnsoris_young")

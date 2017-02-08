rep_transitpilot = Creature:new {
	--objectName = "@mob/creature_names:Transitpilot",
     customName = "Transitpilot",
	socialGroup = "rebel",
	pvpFaction = "rebel",
	faction = "rebel",
	level = 80,
	chanceHit = 20,
	damageMin = 150,
	damageMax = 550,
	baseXp = 1470,
	baseHAM = 4000,
	baseHAMmax = 4000,
	armor = 1,
	resists = {30,30,30,30,35,35,20,20,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_rebel_pilot_human_male_01.iff"},
	lootGroups = {},
	weapons = {"imperial_weapons_light"},
	conversationTemplate = "gcw_transit_pilot_template"
    attacks = merge(riflemanmaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(rep_transitpilot, "rep_transitpilot")

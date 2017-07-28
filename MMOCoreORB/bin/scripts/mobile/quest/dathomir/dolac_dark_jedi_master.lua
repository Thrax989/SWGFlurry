dolac_dark_jedi_master = Creature:new {
	objectName = "@mob/creature_names:dark_jedi_master",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "dark_jedi",
	faction = "",
	level = 291,
	chanceHit = 27.25,
	damageMin = 1800,
	damageMax = 3310,
	baseXp = 27849,
	baseHAM = 321000,
	baseHAMmax = 392000,
	armor = 3,
	resists = {90,90,90,90,90,90,90,90,-1},
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
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED + CONVERSABLE,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_dark_jedi_human_male_01.iff",
		"object/mobile/dressed_dark_jedi_human_female_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "holocron_dark", chance = 1000000},
				{group = "holocron_light", chance = 1000000},
				{group = "power_crystals", chance = 1000000},
				{group = "junk", chance = 3000000},
				{group = "tailor_components", chance = 1000000},
				{group = "loot_kit_parts", chance = 2000000}
				{group = "dark_jedi_common", chance = 1000000}
			}
		}
	},
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "dolac_legasi_mission_target_convotemplate",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(dolac_dark_jedi_master, "dolac_dark_jedi_master")

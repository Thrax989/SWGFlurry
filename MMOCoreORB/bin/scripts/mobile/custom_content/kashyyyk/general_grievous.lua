general_grievous = Creature:new {
	--objectName = "@mob/creature_names:ep3_general_grievous",
	customName = "N-K Necrosis",
	socialGroup = "droids",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = .90,
	damageMin = 1245,
	damageMax = 2400,
	baseXp = 16884,
	baseHAM = 485000,
	baseHAMmax = 685000,
	armor = 2,
	resists = {90,90,90,90,90,90,90,90,90},
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
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.5,

	templates = {"object/mobile/ep3/general_grievous.iff"},
	lootGroups = {
	 	{
	        groups = {
				{group = "crystal_banes_heart", chance = 2500000},
				{group = "g_lance_staff_magna_guard", chance = 2500000},
				{group = "g_hangar_house_loot_deed", chance = 2500000},
				{group = "barc_speeder_deed_group", chance = 2500000}
			}
		}
	},
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(general_grievous, "general_grievous")

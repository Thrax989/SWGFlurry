crackdown_stormtrooper_medic = Creature:new {
	objectName = "@mob/creature_names:crackdown_stormtrooper_medic",
	randomNameType = NAME_STORMTROOPER,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 1,
	chanceHit = 0.36,
	damageMin = 240,
	damageMax = 250,
	baseXp = 45,
	baseHAM = 7200,
	baseHAMmax = 8800,
	armor = 0,
	resists = {0,0,40,0,0,0,0,-1,-1},
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
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.05,

	templates = {"object/mobile/dressed_stormtrooper_medic_m.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 200000},
				{group = "junk", chance = 8300000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 500000},
				{group = "junk", chance = 500000}
			},
			lootChance = 2800000
		}						
	},
	weapons = {"stormtrooper_weapons"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(crackdown_stormtrooper_medic, "crackdown_stormtrooper_medic")

imprisoned_jabba_employee = Creature:new {
	objectName = "@mob/creature_names:imprisoned_jabba_employee",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "jabba",
	faction = "jabba",
	level = 12,
	chanceHit = 0.29,
	damageMin = 130,
	damageMax = 140,
	baseXp = 430,
	baseHAM = 1200,
	baseHAMmax = 1400,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
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
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_tatooine_jabba_thief.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 7800000},
				{group = "junk", chance = 600000},
				{group = "junk", chance = 400000},
				{group = "junk", chance = 200000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 500000},
				
			}
		}
	},
	weapons = {"pirate_weapons_light"},
	conversationTemplate = "",
	attacks = merge(brawlermid,marksmanmid)
}

CreatureTemplates:addCreatureTemplate(imprisoned_jabba_employee, "imprisoned_jabba_employee")

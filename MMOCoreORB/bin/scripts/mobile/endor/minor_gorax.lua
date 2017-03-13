minor_gorax = Creature:new {
	objectName = "@mob/creature_names:minor_gorax",
	socialGroup = "gorax",
	faction = "",
	level = 85,
	chanceHit = 8.5,
	damageMin = 745,
	damageMax = 1200,
	baseXp = 12424,
	baseHAM = 89000,
	baseHAMmax = 109000,
	armor = 0,
	resists = {165,165,150,150,150,150,150,150,150},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/gorax.iff"},
	scale = 0.75,
	lootGroups = {
	    {
	        groups = {
				{group = "minor_gorax", chance = 6000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000}
			},
			lootChance = 3620000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareaattack",""},
		{"creatureareaknockdown",""}
	}
}

CreatureTemplates:addCreatureTemplate(minor_gorax, "minor_gorax")

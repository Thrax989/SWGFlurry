weak_mercenary = Creature:new {
	objectName = "@mob/creature_names:mercenary_weak",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "lok_mercenaries",
	faction = "lok_mercenaries",
	level = 34,
	chanceHit = 0.41,
	damageMin = 315,
	damageMax = 340,
	baseXp = 3460,
	baseHAM = 8700,
	baseHAMmax = 10700,
	armor = 0,
	resists = {30,20,20,20,20,20,-1,-1,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	templates = {
		"object/mobile/dressed_mercenary_weak_hum_m.iff",
		"object/mobile/dressed_mercenary_weak_hum_f.iff",
		"object/mobile/dressed_mercenary_weak_rod_m.iff"
	},
	
	--NPC with AA/CA Template Generic
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000},
		},
			lootChance = 500000 

		},
		{
			groups = {
				{group = "artifact", chance = 10000000}			
		},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "tierone", chance = 10000000}
		},
			lootChance = 750000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 100000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 50000
		},
		
	},
	weapons = {"rebel_weapons_medium"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(riflemanmaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(weak_mercenary, "weak_mercenary")

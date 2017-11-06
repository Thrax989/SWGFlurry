mercenary_messenger = Creature:new {
	objectName = "@mob/creature_names:mercenary_messanger",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "lok_mercenaries",
	faction = "lok_mercenaries",
	level = 21,
	chanceHit = 0.33,
	damageMin = 190,
	damageMax = 200,
	baseXp = 1803,
	baseHAM = 5900,
	baseHAMmax = 7200,
	armor = 0,
	resists = {20,0,0,0,0,0,-1,-1,-1},
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
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_mercenary_messanger_hum_f.iff",
		"object/mobile/dressed_mercenary_messanger_hum_m.iff",
		"object/mobile/dressed_mercenary_messanger_rod_m.iff",
		"object/mobile/dressed_mercenary_messanger_sullustan_m.iff"},
	
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
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(mercenary_messenger, "mercenary_messenger")

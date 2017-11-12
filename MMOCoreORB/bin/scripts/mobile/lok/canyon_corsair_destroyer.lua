canyon_corsair_destroyer = Creature:new {
	objectName = "@mob/creature_names:canyon_corsair_destroyer",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "canyon_corsair",
	faction = "canyon_corsair",
	level = 40,
	chanceHit = 0.43,
	damageMin = 355,
	damageMax = 420,
	baseXp = 4006,
	baseHAM = 8800,
	baseHAMmax = 10800,
	armor = 0,
	resists = {25,60,25,25,-1,25,25,-1,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_corsair_destroyer_hum_f.iff",
		"object/mobile/dressed_corsair_destroyer_hum_m.iff",
		"object/mobile/dressed_corsair_destroyer_wee_m.iff",
		"object/mobile/dressed_corsair_destroyer_zab_m.iff"},

	--NPC with AA/CA Template Canyon Corsair Generic
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000},
		},
			lootChance = 500000 

		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
		},
			lootChance = 100000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
		},
			lootChance = 100000
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
		{
			groups = {
				{group = "canyon_corsair_common", chance = 10000000}
		},
			lootChance = 3000000
		},
	},
	weapons = {"canyon_corsair_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(swordsmanmaster,carbineermaster,tkamaster,brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(canyon_corsair_destroyer, "canyon_corsair_destroyer")

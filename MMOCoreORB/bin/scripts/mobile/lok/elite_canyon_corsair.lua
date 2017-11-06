elite_canyon_corsair = Creature:new {
	objectName = "@mob/creature_names:elite_canyon_corsair",
	socialGroup = "canyon_corsair",
	faction = "canyon_corsair",
	level = 45,
	chanceHit = 0.47,
	damageMin = 370,
	damageMax = 450,
	baseXp = 4461,
	baseHAM = 9700,
	baseHAMmax = 11900,
	armor = 1,
	resists = {20,45,0,0,-1,0,0,-1,-1},
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
		"object/mobile/dressed_corsair_pirate_elite_hum_f.iff",
		"object/mobile/dressed_corsair_pirate_elite_hum_m.iff",
		"object/mobile/dressed_corsair_pirate_elite_nikto_m.iff",
		"object/mobile/dressed_corsair_pirate_elite_rod_m.iff",
		"object/mobile/dressed_corsair_pirate_elite_wee_m.iff",
		"object/mobile/dressed_corsair_pirate_elite_zab_m.iff"},

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
			lootChance = 10000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
		},
			lootChance = 10000000
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

CreatureTemplates:addCreatureTemplate(elite_canyon_corsair, "elite_canyon_corsair")

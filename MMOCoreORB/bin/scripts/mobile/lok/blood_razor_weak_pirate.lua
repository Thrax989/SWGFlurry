blood_razor_weak_pirate = Creature:new {
	objectName = "@mob/creature_names:blood_razor_pirate_weak",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "bloodrazor",
	faction = "bloodrazor",
	level = 21,
	chanceHit = 0.33,
	damageMin = 230,
	damageMax = 240,
	baseXp = 2006,
	baseHAM = 2900,
	baseHAMmax = 3500,
	armor = 0,
	resists = {10,25,10,10,-1,-1,10,-1,-1},
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
		"object/mobile/dressed_blood_razor_pirate_weak_hum_f.iff",
		"object/mobile/dressed_blood_razor_pirate_weak_hum_m.iff",
		"object/mobile/dressed_blood_razor_pirate_weak_nikto_m.iff",
		"object/mobile/dressed_blood_razor_pirate_weak_rod_m.iff",
		"object/mobile/dressed_blood_razor_pirate_weak_wee_m.iff",
		"object/mobile/dressed_blood_razor_pirate_weak_zab_m.iff"},

	--NPC with AA/CA Template Bloodrazor Generic
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
				{group = "bloodrazor_common", chance = 10000000}
		},
			lootChance = 3000000
		},
	},
	weapons = {"blood_razer_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(blood_razor_weak_pirate, "blood_razor_weak_pirate")

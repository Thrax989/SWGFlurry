fbase_rebel_army_captain = Creature:new {
	objectName = "@mob/creature_names:fbase_rebel_army_captain",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 31,
	chanceHit = 0.4,
	damageMin = 300,
	damageMax = 310,
	baseXp = 3100,
	baseHAM = 8500,
	baseHAMmax = 10500,
	armor = 0,
	resists = {10,10,10,10,10,10,10,-1,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED + CONVERSABLE,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_rebel_army_captain_bothan_male.iff",
		"object/mobile/dressed_rebel_army_captain_human_male_01.iff",
		"object/mobile/dressed_rebel_army_captain_moncal_male_01.iff",
		"object/mobile/dressed_rebel_army_captain_trandoshan_female.iff",
		"object/mobile/dressed_rebel_army_captain_twk_male.iff",
		"object/mobile/dressed_rebel_army_captain_zabrak_female.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 9000000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 500000},					
			},
			lootChance = 10000000 
			},
			{
			groups = {
				{group = "g_imperial_credit", chance = 10000000},
				},
			lootChance = 20000 
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
				{group = "imppoints", chance = 10000000},
				},
			lootChance = 100000 
			}
	},
	weapons = {"rebel_weapons_medium"},
	conversationTemplate = "rebelRecruiterConvoTemplate",
	reactionStf = "@npc_reaction/military",
	attacks = merge(brawlermaster,marksmanmaster,teraskasinovice,carbineernovice)
}

CreatureTemplates:addCreatureTemplate(fbase_rebel_army_captain, "fbase_rebel_army_captain")

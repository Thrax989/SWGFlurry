halloween_skeleton_1 = Creature:new {
	customName = "Skeleton",
	--objectName = "",
	--randomNameType = NAME_GENERIC_TAG,
	socialGroup = "townsperson",
	faction = "",
	level = 100,
	chanceHit = 10.0,
	damageMin = 445,
	damageMax = 600,
	baseXp = 5830,
	baseHAM = 11000,
	baseHAMmax = 14000,
	armor = 1,
	resists = {40,40,40,40,40,40,40,40,40},
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

	templates = {"object/mobile/halloween_skeleton_1.iff"},
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
				{group = "artifact", chance = 10000000}			
			},
			lootChance = 1000000
			},
			{
			groups = {
				{group = "tierone", chance = 10000000}
			},
			lootChance = 1000000
			},
			{
			groups = {
				{group = "tiertwo", chance = 10000000}
			},
			lootChance = 500000
			},
			{
			groups = {
				{group = "tierthree", chance = 10000000}
			},
			lootChance = 100000
			},
			{
			groups = {
				{group = "halloween", chance = 10000000},
				},
			lootChance = 1500000 
			},
	},
	weapons = {},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(tkamaster,brawlermaster,fencermaster,swordsmanmaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(halloween_skeleton_1, "halloween_skeleton_1")


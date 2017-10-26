halloween_skeleton_king = Creature:new {
	customName = "Skeleton King",
	--objectName = "",
	--randomNameType = NAME_GENERIC_TAG,
	socialGroup = "townsperson",
	faction = "",
	level = 300,
	chanceHit = 30,
	damageMin = 1645,
	damageMax = 3000,
	specialDamageMult = 7.5,
	baseXp = 28549,
	baseHAM = 385000,
	baseHAMmax = 471000,
	armor = 3,
	resists = {75,75,75,75,75,75,75,75,75},
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
  	outfit = "custom_halloween_outfit",
	scale = 2.0,
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
			}
	},
	weapons = {},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(tkamaster,brawlermaster,fencermaster,swordsmanmaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(halloween_skeleton_king, "halloween_skeleton_king")


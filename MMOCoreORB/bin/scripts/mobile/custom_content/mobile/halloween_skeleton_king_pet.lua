halloween_skeleton_king_pet = Creature:new {
	customName = "Skeleton King's Pet",
	--objectName = "",
	--randomNameType = NAME_GENERIC_TAG,
	socialGroup = "townsperson",
	faction = "",
	level = 300,
	chanceHit = 15,
	damageMin = 1645,
	damageMax = 3000,
	specialDamageMult = 7.5,
	baseXp = 28549,
	baseHAM = 385000,
	baseHAMmax = 471000,
	armor = 3,
	resists = {35,35,35,35,35,35,35,35,35},
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

	templates = {"object/mobile/halloween_skeleton_2.iff"},
	scale = 3.0,
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
			lootChance = 10000000
			},
			{
			groups = {
				{group = "tierone", chance = 10000000}
			},
			lootChance = 10000000
			},
			{
			groups = {
				{group = "tiertwo", chance = 10000000}
			},
			lootChance = 10000000
			},
			{
			groups = {
				{group = "tierthree", chance = 10000000}
			},
			lootChance = 10000000
			},
			{
			groups = {
				{group = "halloween", chance = 10000000},
				},
			lootChance = 10000000
			}
	},
	weapons = {},
	conversationTemplate = "",
	attacks= merge(tkamaster,brawlermaster,fencermaster,swordsmanmaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(halloween_skeleton_king_pet, "halloween_skeleton_king_pet")


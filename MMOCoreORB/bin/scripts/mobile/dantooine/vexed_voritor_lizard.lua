vexed_voritor_lizard = Creature:new {
	objectName = "@mob/creature_names:vexed_voritor_lizard",
	socialGroup = "voritor",
	faction = "",
	level = 52,
	chanceHit = 0.5,
	damageMin = 465,
	damageMax = 640,
	baseXp = 5007,
	baseHAM = 11000,
	baseHAMmax = 14000,
	armor = 1,
	resists = {135,-1,5,5,-1,-1,5,5,-1},
	meatType = "meat_carnivore",
	meatAmount = 50,
	hideType = "hide_leathery",
	hideAmount = 50,
	boneType = "bone_avian",
	boneAmount = 50,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/vexed_voritor_lizard.iff"},
	scale = 1.15,

--Creature with special loot Default Template 
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000}				
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
--Change this group to special loot group
		{
			groups = {
				{group = "voritor_lizard_common", chance = 10000000}
		},
			lootChance = 1000000
		},
		
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(vexed_voritor_lizard, "vexed_voritor_lizard")

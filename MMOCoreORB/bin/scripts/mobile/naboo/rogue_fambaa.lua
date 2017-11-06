rogue_fambaa = Creature:new {
	objectName = "@mob/creature_names:rogue_fambaa",
	socialGroup = "self",
	faction = "",
	level = 37,
	chanceHit = 0.42,
	damageMin = 330,
	damageMax = 370,
	baseXp = 3551,
	baseHAM = 9000,
	baseHAMmax = 11000,
	armor = 0,
	resists = {25,25,25,25,160,160,-1,25,-1},
	meatType = "meat_reptilian",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 700,
	boneType = "bone_mammal",
	boneAmount = 675,
	milkType = "milk_wild",
	milk = 400,
	tamingChance = 0,
	ferocity = 9,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/fambaa_hue.iff"},
	scale = 1.1,

--Creature with special loot Default Template 
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000}				
		},
			lootChance = 7000000
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
				{group = "fambaa_common", chance = 10000000}
		},
			lootChance = 1000000
		},
		
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(rogue_fambaa, "rogue_fambaa")

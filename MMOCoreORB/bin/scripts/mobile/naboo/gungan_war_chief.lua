gungan_war_chief = Creature:new {
	objectName = "@mob/creature_names:gungan_war_chief",
	socialGroup = "gungan",
	faction = "gungan",
	level = 20,
	chanceHit = 0.33,
	damageMin = 190,
	damageMax = 200,
	baseXp = 1803,
	baseHAM = 5000,
	baseHAMmax = 6100,
	armor = 0,
	resists = {10,10,10,-1,25,-1,-1,-1,-1},
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
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/gungan_male.iff"},

--NPC (Faction Loot) Default Template with Lootkit Drops
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
--Change this group to Faction loot group
		{
			groups = {
				{group = "gungan_common", chance = 10000000}
		},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000}
		},
			lootChance = 2000000
		}
	},
	weapons = {"rebel_weapons_medium"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(gungan_war_chief, "gungan_war_chief")

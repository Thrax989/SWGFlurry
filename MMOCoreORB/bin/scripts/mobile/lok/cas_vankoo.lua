cas_vankoo = Creature:new {
	objectName = "@mob/creature_names:cas_vankoo",
	socialGroup = "kimogila",
	faction = "bandit",
	level = 117,
	chanceHit = 3.4,
	damageMin = 725,
	damageMax = 1160,
	baseXp = 11109,
	baseHAM = 50000,
	baseHAMmax = 59000,
	armor = 2,
	resists = {75,75,0,10,10,10,10,0,0},
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

	templates = {"object/mobile/dressed_lok_cas_vankoo.iff"},

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
		
	},
	weapons = {"cas_vankoo_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/townperson",
	attacks = merge(pistoleermaster,pikemanmaster,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(cas_vankoo, "cas_vankoo")

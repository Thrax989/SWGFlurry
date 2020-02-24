janta_chieftain = Creature:new {
	customName = "<<< Janta Chieftain >>>",
	socialGroup = "janta_tribe",
	faction = "janta_tribe",
	level = 300,
	chanceHit = 60.00,
	damageMin = 1000,
	damageMax = 1500,
	specialDamageMult = 1.5,
	baseXp = 27849,
	baseHAM = 500000,
	baseHAMmax = 600000,
	armor = 1,
	resists = {70,70,70,70,70,70,70,70,80,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 2.0,

	templates = {"object/mobile/dantari_male.iff"},

--Mini Boss Template
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000}				
		},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "nge_all", chance = 10000000}			
		},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "tierone", chance = 10000000}
		},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 5000000
		},
{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 5000000
		},
{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "janta_common", chance = 10000000}
		},
			lootChance = 5000000
		},
},
weapons = {"melee_weapons"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(tkamaster,swordsmanmaster,fencermaster,pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(janta_chieftain, "janta_chieftain")

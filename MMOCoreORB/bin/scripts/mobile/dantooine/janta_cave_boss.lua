janta_cave_boss = Creature:new {
	  customName = "<<< Janta King >>>",
	  socialGroup = "janta_tribe",
	  faction = "janta_tribe",
	  level = 300,
	  chanceHit = 60.00,
	  damageMin = 1500,
	  damageMax = 2500,
	  specialDamageMult = 2.0,
	  baseXp = 0,
	  baseHAM = 1000000,
	  baseHAMmax = 1000000,
	  armor = 3,
	  resists = {90,90,90,90,90,90,90,90,-1},
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
	  Scale = 2.0,	

	templates = {"object/mobile/tusken_raider.iff"},

--Mini Boss Template
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000}				
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "nge_all", chance = 10000000}			
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
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "janta_common", chance = 10000000}
		},
			lootChance = 10000000
		},
},
weapons = {"dark_jedi_weapons_gen4"},
reactionStf = "@npc_reaction/fancy",
attacks = merge(lightsabermaster,forcewielder,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(janta_cave_boss, "janta_cave_boss")

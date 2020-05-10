baxter_stockman = Creature:new {
	-- objectName = "@mob/creature_names:",
	customName = "\\#00ff00<<< Baxter Stockman (Mad Scientist) >>> \\",
	socialGroup = "mercenary",
	faction = "",
	level = 1,
	chanceHit = 35.0,
	damageMin = 1800,
	damageMax = 2500,
	baseXp = 28549,
	baseHAM = 250000,
	baseHAMmax = 300000,
	armor = 2,
	resists = {80,80,80,80,80,80,80,80,80},
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED + INTERESTING,
	diet = HERBIVORE,
	scale = 1.5,
  
	templates = {
		"object/mobile/warren_research_scientist.iff"},
	lootGroups = {},
  
	weapons = {"imperial_weapons_heavy"},
	reactionStf = "@npc_reaction/slang",
	attacks = { merge (bountyhuntermaster,marksmanmaster,brawlermaster,pikemanmaster,fencermaster,swordsmanmaster,tkamaster,pistoleermaster,commandomaster)
    }
 }

CreatureTemplates:addCreatureTemplate(baxter_stockman, "baxter_stockman")
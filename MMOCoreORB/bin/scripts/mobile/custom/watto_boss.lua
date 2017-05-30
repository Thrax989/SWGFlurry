watto_boss = Creature:new {
  customName = "Watto The Junk Dealer",
  socialGroup = "self",
  pvpFaction = "",
  faction = "",
  level = 300,
  chanceHit = 50.00,
  damageMin = 625,
  damageMax = 1250,
  baseXp = 12000,
  baseHAM = 300000,
  baseHAMmax = 400000,
  armor = 2,
  resists = {70,70,70,70,70,70,70,70,35},
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

  templates = {"object/mobile/watto.iff"},
  lootGroups = {
  {
      groups = {
        {group = "cyberhand_lg", chance = 10000000}
  },
      lootChance = 5000000
  },
  {
      groups = {
        {group = "backpacks_b01", chance = 5000000},
        {group = "backpacks_b02", chance = 5000000}
  },
      lootChance = 5000000
  },
  {
      groups = {
        {group = "wings_lg", chance = 10000000}
  },
      lootChance = 5000000
  },
  {
	  groups = {
		{group = "stun_weapons", chance = 5000000},
		{group = "stun_ranged", chance = 5000000}

  },
			lootChance = 2500000
  },
  {
      groups = {
        {group = "hologram_lg1", chance = 5000000},
        {group = "hologram_lg2", chance = 5000000}
  },
      lootChance = 2500000
  },
  },
weapons = {"dark_trooper_weapons"},
reactionStf = "@npc_reaction/fancy",
attacks = merge(riflemanmaster,marksmanmaster,fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(watto_boss, "watto_boss")
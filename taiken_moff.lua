taiken_moff = Creature:new {
  objectName = "",
  customName = "Moff Cody",
  socialGroup = "geonosian",
  level = 300,
  chanceHit = 4.37,
  damageMin = 370,
  damageMax = 580,
  baseXp = 0,
  baseHAM = 55000,
  baseHAMmax = 100000,
  armor = 2,
  resists = {100,60,20,60,10,10,50,10,0},
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
  creatureBitmask = KILLER + STALKER,
  optionsBitmask = AIENABLED,
  diet = HERBIVORE,

  templates = {"object/mobile/dressed_death_watch_gold.iff"},
  lootGroups = {
		{
			groups = {
				{group = "junk", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "color_crystals", chance = 25000002500000},
				{group = "power_crystals", chance = 2500000}

			},
      lootChance = 10000000
		},
    {
      groups = {
        {group = "junk", chance = 5000000},
				{group = "pearls_flawless", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}

			},
			lootChance = 10000000
	   },
  },
  weapons = {"imperial_weapons_heavy"},
  conversationTemplate = "",
  reactionStf = "@npc_reaction/military",
  personalityStf = "@hireling/hireling_military",
  attacks = merge(riflemanmaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(taiken_moff, "taiken_moff")

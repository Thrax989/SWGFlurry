taiken_bunker_boss = Creature:new {
  customName = "Darth Savage",
  socialGroup = "geonosian",
  level = 300,
  chanceHit = 4.5,
  damageMin = 395,
  damageMax = 695,
  baseXp = 0,
  baseHAM = 222000,
  baseHAMmax = 230000,
  armor = 3,
  resists = {90,90,90,90,90,90,90,90,-1},
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

  templates = {
    "object/mobile/dressed_lord_nyax.iff"},
    lootGroups = {
  		{
  			groups = {
  				{group = "armor_attachments", chance = 1500000},
  				{group = "clothing_attachments", chance = 1500000},
  				{group = "color_crystals", chance = 2000000},
  				{group = "power_crystals", chance = 5000000}

  			},
        lootChance = 10000000
  		},
      {
        groups = {
  				{group = "krayt_pearls", chance = 3000000},
  				{group = "armor_attachments", chance = 1500000},
  				{group = "clothing_attachments", chance = 1500000},
          {group = "g_named_crystals", chance = 2000000}

  			},
  			lootChance = 8000000
  	},
    {
      groups = {
        {group = "armor_all", chance = 3000000},
				{group = "weapons_all", chance = 3000000},
        {group = "armor_attachments", chance = 1000000},
        {group = "clothing_attachments", chance = 1000000}

      },
      lootChance = 8000000
        },
    },
  weapons = {"dark_jedi_weapons_gen4"},
  conversationTemplate = "",
  reactionStf = "@npc_reaction/fancy",
  attacks = merge(lightsabermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(taiken_bunker_boss, "taiken_bunker_boss")

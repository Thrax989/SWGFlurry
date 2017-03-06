taiken_dark_apprentice = Creature:new {
  customName = "Dark Apprentice",
  socialGroup = "geonosian",
  level = 200,
  chanceHit = 2.95,
  damageMin = 206,
  damageMax = 420,
  baseXp = 0,
  baseHAM = 81000,
  baseHAMmax = 99000,
  armor = 1,
  resists = {60,60,60,60,60,60,60,60,-1},
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
    "object/mobile/dressed_dark_jedi_human_male_01.iff",
    "object/mobile/dressed_dark_jedi_human_female_01.iff"},
    lootGroups = {
  		{
  			groups = {
  				{group = "junk", chance = 4000000},
          {group = "armor_all", chance = 1000000},
  				{group = "weapons_all", chance = 1000000},
  				{group = "armor_attachments", chance = 1000000},
  				{group = "clothing_attachments", chance = 1000000},
          {group = "power_crystals", chance = 2000000}

  			},
        lootChance = 10000000
  		},
      {
        groups = {
          {group = "junk", chance = 3000000},
  				{group = "armor_attachments", chance = 1500000},
  				{group = "clothing_attachments", chance = 1500000}

  			},
  			lootChance = 6000000
       },
    },
  weapons = {"dark_jedi_weapons_gen2"},
  conversationTemplate = "",
  attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(taiken_dark_apprentice,"taiken_dark_apprentice")

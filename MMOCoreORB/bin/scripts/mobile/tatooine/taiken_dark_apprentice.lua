taiken_dark_apprentice = Creature:new {
  customName = "Dark Apprentice",
  socialGroup = "geonosian",
  level = 200,
  chanceHit = 15.00,
  damageMin = 600,
  damageMax = 1200,
  baseXp = 0,
  baseHAM = 90000,
  baseHAMmax = 100000,
  armor = 1,
  resists = {60,60,20,60,20,60,60,60,15},
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
          {group = "wearables_rare", chance = 4000000},
  				{group = "weapons_all", chance = 4000000},
  				{group = "Junk", chance = 2000000},
  			},
        lootChance = 10000000
  		},
      {
        groups = {
  				{group = "armor_attachments", chance = 10000000},
  				{group = "clothing_attachments", chance = 10000000}
  			},
  			lootChance = 6000000
       },
       {
         groups = {
          {group = "looted_container", chance = 10000000},
        },
        lootChance = 2000000
        },
    },
  weapons = {"dark_jedi_weapons_gen2"},
  reactionStf = "@npc_reaction/slang",
  attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(taiken_dark_apprentice,"taiken_dark_apprentice")

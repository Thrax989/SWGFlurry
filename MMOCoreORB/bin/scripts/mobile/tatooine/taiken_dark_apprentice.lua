taiken_dark_apprentice = Creature:new {
  customName = "Dark Apprentice",
  socialGroup = "",
  level = 300,
  chanceHit = 0.95,
  damageMin = 26,
  damageMax = 120,
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
  pvpBitmask = ENEMY + ATTACKABLE,
  creatureBitmask = PACK + KILLER + HEALER,
  optionsBitmask = 128,
  diet = HERBIVORE,

  templates = {
    "object/mobile/dressed_dark_jedi_human_male_01.iff",
    "object/mobile/dressed_dark_jedi_human_female_01.iff"},
  lootGroups = {
    {
      groups = {
        {group = "holocron_dark", chance = 5000000},
      },
    },
    {
     groups = {
     {group = "pearl_flawless", chance = 5000000},
     },
     },
     {
     groups = {
     {group = "clothing_attachments", chance = 10000000},
      },
      },
     {
     groups = {
     {group = "armor_attachments", chance = 10000000},
      },
      },
  },
  weapons = {"dark_jedi_weapons_gen2"},
  conversationTemplate = "",
  attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(taiken_dark_apprentice, "taiken_dark_apprentice")

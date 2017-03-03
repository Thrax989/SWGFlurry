taiken_count_doku = Creature:new {
  customName = "Darth Savage",
  socialGroup = "imperial",
  level = 400,
  chanceHit = 1.5,
  damageMin = 295,
  damageMax = 595,
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
  pvpBitmask = ENEMY + ATTACKABLE,
  creatureBitmask = PACK + KILLER,
  optionsBitmask = 128,
  diet = HERBIVORE,

  templates = {
    "object/mobile/dressed_lord_nyax.iff"},
  lootGroups = {
    {
      groups = {
        {group = "holocron_dark", chance = 6000000},
      },
    },
    {
     groups = {
     {group = "pearls_flawless", chance = 6000000},
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
  weapons = {"dark_jedi_weapons_gen4"},
  conversationTemplate = "",
  reactionStf = "@npc_reaction/fancy",
  attacks = merge(lightsabermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(taiken_count_doku, "taiken_count_doku")

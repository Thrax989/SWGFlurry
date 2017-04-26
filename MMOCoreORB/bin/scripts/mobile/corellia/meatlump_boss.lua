meatlump_king = Creature:new {
  customName = "<<<< Meatlump King >>>>",
  socialGroup = "geonosian",
  level = 300,
  chanceHit = 100.00,
  damageMin = 4000,
  damageMax = 6000,
  baseXp = 0,
  baseHAM = 1500000,
  baseHAMmax = 1500000,
  specialDamageMult = 5.0,
  armor = 3,
  resists = {95,95,95,95,95,95,95,95,90},
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

  templates = {"object/mobile/mos_taike_guard_old.iff"},
  outfit = "custom_armor_meatlump_outfit",
  lootGroups = {
    {
      groups = {
        {group = "armor_attachments", chance = 5000000},
        {group = "clothing_attachments", chance = 5000000}
  },
      lootChance = 10000000
  },
  {
      groups = {
        {group = "armor_attachments", chance = 5000000},
        {group = "clothing_attachments", chance = 5000000}
  },
      lootChance = 10000000
  },
  {
      groups = {
        {group = "armor_attachments", chance = 5000000},
        {group = "clothing_attachments", chance = 5000000}
  },
      lootChance = 10000000
  },
  {
      groups = {
        {group = "non_jedi_ring_crafter", chance = 10000000}
  },
      lootChance = 8000000
  },
  {
      groups = {
        {group = "neck_crafter", chance = 10000000}
  },
      lootChance = 5000000
  },
  {
      groups = {
        {group = "non_jedi_ring_crafter_second", chance = 10000000}
  },
      lootChance = 8000000
  },
  {
      groups = {
        {group = "g_named_crystals", chance = 10000000}
  },
      lootChance = 10000000
  },
  {
      groups = {
        {group = "saberhand27", chance = 10000000}
  },
      lootChance = 10000000
  },
  },
  weapons = {"dark_jedi_weapons_gen4"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(meatlump_king, "meatlump_king")

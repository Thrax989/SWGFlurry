meatlump_king = Creature:new {
  customName = "<<<< Meatlump King >>>>",
  socialGroup = "geonosian",
  level = 300,
  chanceHit = 100.00,
  damageMin = 2500,
  damageMax = 4000,
  baseXp = 0,
  baseHAM = 1500000,
  baseHAMmax = 1500000,
  specialDamageMult = 5.0,
  armor = 3,
  resists = {95,95,95,95,95,95,95,95,-1},
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
      lootChance = 100000
  },
  {
      groups = {
        {group = "neck_crafter", chance = 10000000}
  },
      lootChance = 100000
  },
  {
      groups = {
        {group = "non_jedi_ring_crafter_second", chance = 10000000}
  },
      lootChance = 100000
  },
  {
      groups = {
        {group = "g_named_crystals", chance = 10000000}
  },
      lootChance = 5000000
  },
  {
      groups = {
        {group = "saberhand27", chance = 10000000}
  },
      lootChance = 100000
  },
  {
      groups = {
        {group = "skill_buffs", chance = 10000000}
  },
      lootChance = 10000000
  },
  {
      groups = {
        {group = "nectar_buff_f01", chance = 10000000}
  },
     lootChance = 10000000
  },
  {
      groups = {
        {group = "backpacks_b01", chance = 5000000},
        {group = "backpacks_b02", chance = 5000000}
  },
      lootChance = 10000000
  },
  },
  weapons = {"dark_trooper_weapons"},
reactionStf = "@npc_reaction/slang",
attacks = merge(fencermaster,riflemanmaster,brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(meatlump_king, "meatlump_king")

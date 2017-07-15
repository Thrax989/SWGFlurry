meatlump_boss_other = Creature:new {
  customName = "<<<< Meatlump King >>>>",
  socialGroup = "geonosian",
  level = 300,
  chanceHit = 35.00,
  damageMin = 1500,
  damageMax = 3000,
  baseXp = 0,
  baseHAM = 1500000,
  baseHAMmax = 1500000,
  specialDamageMult = 3.0,
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

  templates = {"object/mobile/meatlump_king.iff"},
  
  lootGroups = {
    {
      groups = {
        {group = "armor_attachments", chance = 5000000},
        {group = "clothing_attachments", chance = 5000000}
  },
      lootChance = 8000000
  },
  {
      groups = {
        {group = "armor_attachments", chance = 5000000},
        {group = "clothing_attachments", chance = 5000000}
  },
      lootChance = 8000000
  },
  {
      groups = {
        {group = "armor_attachments", chance = 5000000},
        {group = "clothing_attachments", chance = 5000000}
  },
      lootChance = 8000000
  },
  {
      groups = {
        {group = "non_jedi_ring_crafter", chance = 10000000}
  },
      lootChance = 1000000
  },
  {
      groups = {
        {group = "neck_crafter", chance = 10000000}
  },
      lootChance = 1000000
  },
  {
      groups = {
        {group = "non_jedi_ring_crafter_second", chance = 10000000}
  },
      lootChance = 1000000
  },
  {
      groups = {
        {group = "g_named_crystals", chance = 10000000}
  },
      lootChance = 2000000
  },
  {
      groups = {
        {group = "saberhand27", chance = 10000000}
  },
      lootChance = 8000000
  },
  {
      groups = {
        {group = "skill_buffs", chance = 10000000}
  },
      lootChance = 8000000
  },
  {
      groups = {
        {group = "nectar_buff_f01", chance = 10000000}
  },
     lootChance = 5000000
  },
  {
      groups = {
        {group = "backpacks_b01", chance = 5000000},
        {group = "backpacks_b02", chance = 5000000}
  },
      lootChance = 8000000
  },
  {
      groups = {
        {group = "stun_weapons", chance = 5000000},
        {group = "stun_ranged", chance = 5000000}
  },
      lootChance = 5000000
  },
  },
weapons = {"dark_jedi_weapons_gen3"},
reactionStf = "@npc_reaction/slang",
attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(meatlump_boss_other, "meatlump_boss_other")

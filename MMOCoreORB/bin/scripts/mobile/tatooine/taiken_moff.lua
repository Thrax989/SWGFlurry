taiken_moff = Creature:new {
  objectName = "",
  customName = "Moff Cody",
  socialGroup = "",
  level = 200,
  chanceHit = 0.37,
  damageMin = 270,
  damageMax = 480,
  baseXp = 0,
  baseHAM = 55000,
  baseHAMmax = 100000,
  armor = 1,
  resists = {100,50,50,50,50,50,50,50,30},
  meatType = "",
  meatAmount = 0,
  hideType = "",
  hideAmount = 0,
  boneType = "",
  boneAmount = 0,
  milk = 0,
  tamingChance = 0,
  ferocity = 0,
  pvpBitmask = ATTACKABLE + ENEMY,
  creatureBitmask = PACK + KILLER,
  optionsBitmask = 128,
  diet = HERBIVORE,

  templates = {"object/mobile/dressed_imperial_moff_m.iff"},
  lootGroups = {
    {
      groups = {
        {group = "color_crystals", chance = 100000},
        {group = "junk", chance = 6650000},
        {group = "rifles", chance = 550000},
        {group = "pistols", chance = 550000},
        {group = "melee_weapons", chance = 550000},
        {group = "carbines", chance = 550000},
        {group = "clothing_attachments", chance = 25000},
        {group = "armor_attachments", chance = 25000},
        {group = "wearables_common", chance = 1000000}
      }
    }
  },
  weapons = {"imperial_weapons_heavy"},
  conversationTemplate = "",
  reactionStf = "@npc_reaction/military",
  personalityStf = "@hireling/hireling_military",
  attacks = merge(riflemanmaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(taiken_moff, "taiken_moff")

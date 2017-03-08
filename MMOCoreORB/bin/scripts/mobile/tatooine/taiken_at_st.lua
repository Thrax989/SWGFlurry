taiken_at_st = Creature:new {
  objectName = "@mob/creature_names:fbase_at_st",
  socialGroup = "geonosian",
  level = 100,
  chanceHit = 10.5,
  damageMin = 470,
  damageMax = 652,
  baseXp = 0,
  baseHAM = 90000,
  baseHAMmax = 130000,
  armor = 3,
  resists = {200,200,-1,200,-1,200,200,-1,50},
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
  diet = NONE,

  templates = {"object/mobile/atst.iff"},
  lootGroups = {
    {
      groups = {
        {group = "junk", chance = 5000000},
        {group = "armor_attachments", chance = 2500000},
        {group = "clothing_attachments", chance = 2500000}
      },
      lootChance = 10000000
    },
  },
  conversationTemplate = "",
  defaultAttack = "defaultdroidattack",
  defaultWeapon = "object/weapon/ranged/vehicle/vehicle_atst_ranged.iff",
}

CreatureTemplates:addCreatureTemplate(taiken_at_st, "taiken_at_st")

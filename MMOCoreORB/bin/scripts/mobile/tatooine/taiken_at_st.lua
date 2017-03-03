taiken_at_st = Creature:new {
  objectName = "@mob/creature_names:fbase_at_st",
  socialGroup = "",
  level = 200,
  chanceHit = 11.5,
  damageMin = 170,
  damageMax = 452,
  baseXp = 0,
  baseHAM = 90000,
  baseHAMmax = 130000,
  armor = 3,
  resists = {200,200,-1,200,200,200,200,200,25},
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
  diet = NONE,

  templates = {"object/mobile/atst.iff"},
    lootGroups = {
     {
     groups = {
     {group = "clothing_attachments", chance = 9000000},
      },
      },
     {
     groups = {
     {group = "armor_attachments", chance = 9000000},
      },
      },
  },
  lootGroups = {},
  conversationTemplate = "",
  defaultAttack = "defaultdroidattack",
  defaultWeapon = "object/weapon/ranged/vehicle/vehicle_atst_ranged.iff",
}

CreatureTemplates:addCreatureTemplate(taiken_at_st, "taiken_at_st")

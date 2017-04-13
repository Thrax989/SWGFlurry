hydra_xt_bt = Creature:new {
  customName = "a XT BT",
  socialGroup = "geonosian",
  level = 300,
  chanceHit = 100.00,
  damageMin = 1000,
  damageMax = 1500,
  baseXp = 0,
  baseHAM = 100000,
  baseHAMmax = 100000,
  armor = 2,
  resists = {95,95,-1,95,-1,95,95,-1,-1},
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

  templates = {"object/mobile/atxt.iff"},
  lootGroups = {
{
                groups = {
                {group = "junk", chance = 5000000},
                {group = "armor_attachments", chance = 2500000},
                {group = "clothing_attachments", chance = 2500000}
},
                lootChance = 10000000
},
{
                groups = {
                {group = "junk", chance = 5000000},
                {group = "armor_attachments", chance = 2500000},
                {group = "clothing_attachments", chance = 2500000}
},
                lootChance = 10000000
},
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

CreatureTemplates:addCreatureTemplate(hydra_xt_bt, "hydra_xt_bt")

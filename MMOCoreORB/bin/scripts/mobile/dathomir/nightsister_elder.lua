nightsister_elder = Creature:new {
objectName = "@mob/creature_names:nightsister_elder",
randomNameType = NAME_GENERIC,
randomNameTag = true,
socialGroup = "nightsister",
faction = "",
level = 300,
chanceHit = 68.75,
damageMin = 3850,
damageMax = 3950,
baseXp = 26654,
baseHAM = 400000,
baseHAMmax = 410000,
armor = 3,
resists = {200,200,200,200,200,200,200,200,50},
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
creatureBitmask = PACK + HEALER,
optionsBitmask = AIENABLED,
diet = HERBIVORE,

        templates = {"object/mobile/dressed_dathomir_nightsister_elder.iff"},
         lootGroups = {
                 {
                         groups = {
                                 {group = "crystals_premium", chance = 800000},
                                {group = "nightsister_common", chance = 2200000},
                                  {group = "junk", chance = 1000000},
                                 {group = "armor_attachments", chance = 500000},
                                  {group = "clothing_attachments", chance = 500000},
                                  {group = "pistols", chance = 800000},
                                  {group = "rifles", chance = 800000},
                                  {group = "carbines", chance = 900000},
                                  {group = "melee_weapons", chance = 2000000},
                                  {group = "wearables_scarce", chance = 500000}
                          }
                  }
          },
          weapons = {"mixed_force_weapons"},
         conversationTemplate = "",
         attacks = merge(tkamaster,swordsmanmaster,fencermaster,pikemanmaster,brawlermaster,forcepowermaster)
 }
 
  CreatureTemplates:addCreatureTemplate(nightsister_elder, "nightsister_elder")
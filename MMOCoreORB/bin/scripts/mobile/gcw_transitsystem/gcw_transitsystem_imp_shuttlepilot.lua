imp_transitpilot = Creature:new {
   objectName = "@mob/creature_names:Transitpilot",
   customName = "Transitpilot",
   socialGroup = "imperial",
   pvpFaction = "imperial",
   faction = "imperial",
   level = 75,
   chanceHit = 0.90,
   damageMin = 200,
   damageMax = 550,
   baseXp = 5000,
   baseHAM = 12000,
   baseHAMmax = 19000,
   armor = 2,
   resists = {40,40,60,35,55,70,35,40,-1},
   meatType = "",
   meatAmount = 0,
   hideType = "",
   hideAmount = 0,
   boneType = "",
   boneAmount = 0,
   milk = 0,
   tamingChance = 0,
   ferocity = 0,
   pvpBitmask = NONE,
   creatureBitmask = NONE,
   optionsBitmask = 264, --for conversation
   diet = HERBIVORE,

   templates = {"object/mobile/dressed_imperial_lieutenant_m.iff"},
   lootGroups = {},
   weapons = {},
   conversationTemplate = "transitconvo_template",
   attacks = {
   }
}

CreatureTemplates:addCreatureTemplate(imp_transitpilot, "imp_transitpilot")

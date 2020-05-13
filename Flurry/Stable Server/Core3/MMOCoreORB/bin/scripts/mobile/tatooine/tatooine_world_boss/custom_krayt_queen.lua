    krayt_queen = Creature:new {
    customName = "Krayt Queen",
    socialGroup = "krayt",
    faction = "",
    level = 300,
    chanceHit = 50,
    damageMin = 1645,
	damageMax = 3000,
    baseXp = 28490,
    baseHAM = 900000,
    baseHAMmax = 1000000,
    armor = 3,
    resists = {90,90,90,90,90,90,90,90,45},
    meatType = "meat_carnivore",
    meatAmount = 2000,
    hideType = "hide_bristley",
    hideAmount = 1550,
    boneType = "bone_mammal",
    boneAmount = 1275,
    milk = 0,
    tamingChance = 0,
    ferocity = 20,
    pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
    creatureBitmask = PACK + KILLER + STALKER,
    optionsBitmask = AIENABLED,
    diet = CARNIVORE,
 
    templates = {"object/mobile/krayt_dragon.iff"},
    scale = 3.0;
  lootGroups = {
        {
            groups = {
                    {group = "krayt_pearls", chance = 5000000},
                    {group = "krayt_pearls", chance = 5000000}
		},
                lootChance = 10000000
		},
        {
            groups = {
                    {group = "krayt_pearls", chance = 5000000},
                    {group = "krayt_pearls", chance = 5000000}
		},
                lootChance = 10000000
		},
        {
            groups = {
                    {group = "krayt_pearls", chance = 5000000},
                    {group = "krayt_pearls", chance = 5000000}
		},
                lootChance = 10000000
		},
		{
            groups = {
                    {group = "krayt_pearls", chance = 5000000},
                    {group = "krayt_pearls", chance = 5000000}
		},
                lootChance = 10000000
		},
        {
            groups = {
                {group = "krayt_tissue_rare", chance = 2500000},
                    {group = "armor_attachments", chance = 2500000},
                    {group = "clothing_attachments", chance = 5000000}
        },
            lootChance = 7000000
        },
        {
            groups = {
                {group = "krayt_tissue_rare", chance = 5000000},
                    {group = "armor_attachments", chance = 2500000},
                    {group = "clothing_attachments", chance = 2500000}
        },
            lootChance = 7000000
        },
 
    },
    weapons = {},
    conversationTemplate = "",
    attacks = {
        {"creatureareacombo","stateAccuracyBonus=50"},
        {"creatureareaknockdown","stateAccuracyBonus=50"},
        {"knockdownattack","KnockdownChance=50"},
        {"creatureareaknockdown","KnockdownChance=50"},
        {"dizzyattack","DizzyChance=50"},
        {"stunattack","StunChance=50"},
        {"intimidationattack","IntimidationChance=50"},
        {"creatureareaattack",""}
		}
}
 
CreatureTemplates:addCreatureTemplate(krayt_queen, "krayt_queen")

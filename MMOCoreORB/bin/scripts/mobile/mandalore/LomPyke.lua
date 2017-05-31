lom_pyke = Creature:new {
	objectName = "",
	customName = "Lom Pyke",
	socialGroup = "death_watch",
	pvpFaction = "death_watch",
	faction = "",
	level = 300,
	chanceHit = 75.00,
	damageMin = 2000,
	damageMax = 4000,
	baseXp = 10000,
	baseHAM = 1000000,
	baseHAMmax = 1300000,
	armor = 3,
	resists = {75,75,75,75,75,75,75,75,50},
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
	creatureBitmask = KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_black_sun_henchman.iff"},
	scale = 2.5,
	lootGroups = {
  		{
  			      groups = {
  				            {group = "armor_attachments", chance = 1000000},
  				            {group = "clothing_attachments", chance = 1000000},
  				            {group = "crystals_premium", chance = 4000000},
  				            {group = "pearls_flawless", chance = 4000000}
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
                    {group = "krayt_tissue_rare", chance = 10000000}
},
                    lootChance = 10000000
},
{
             groups = {
                    {group = "nge2", chance = 10000000}
},
                    lootChance = 5000000
},
{
          		groups = {
            			{group = "apocalypse", chance = 10000000}
},
              		        lootChance = 10000000
},
},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,pistoleermaster,carbineermaster,brawlermaster,commandomaster)
}

CreatureTemplates:addCreatureTemplate(lom_pyke, "lom_pyke")

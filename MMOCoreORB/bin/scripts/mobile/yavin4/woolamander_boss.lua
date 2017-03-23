woolamander_boss = Creature:new {
	customName = "Woolamander King",
	socialGroup = "woolamander",
	faction = "",
	level = 300,
	chanceHit = 60.00,
	damageMin = 4000,
	damageMax = 6000,
	baseXp = 0,
	baseHAM = 1000000,
	baseHAMmax = 1000000,
	armor = 2,
	resists = {150,150,150,150,150,150,150,150,90},
	meatType = "meat_carnivore",
	meatAmount = 20,
	hideType = "hide_wooly",
	hideAmount = 20,
	boneType = "bone_mammal",
	boneAmount = 20,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
  	Scale = 1.5,

	templates = {"object/mobile/woolamander.iff"},
	lootGroups = {
{
			        groups = {
				        {group = "harrower_bone", chance = 10000000}
},
			                lootChance = 10000000
},
{
			        groups = {
				        {group = "harrower_bone", chance = 10000000}
},
			                lootChance = 10000000
},
{
			        groups = {
				        {group = "harrower_bone", chance = 10000000}
},
			                lootChance = 10000000
},
{
			        groups = {
				        {group = "acklay", chance = 10000000}
},
			                lootChance = 10000000
},
{
          			groups = {
            				{group = "fire_breathing_spider", chance = 10000000}
},
              				lootChance = 10000000
},
{
          			groups = {
            				{group = "wearables_rare", chance = 10000000}
},
              				lootChance = 10000000
},
{
          			groups = {
            				{group = "weapons_all", chance = 10000000}
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
},
	weapons = {"creature_spit_heavy_flame"},
	attacks = {
		{"creatureareacombo","StateAccuracyBonus=100"},
		{"creatureareaknockdown","StateAccuracyBonus=100"},
		{"knockdownattack","KnockdownChance=100"},
		{"creatureareaknockdown","KnockdownChance=100"},
		{"dizzyattack","DizzyChance=100"},
		{"stunattack","StunChance=100"},
		{"intimidationattack","IntimidationChance=100"},
		{"creatureareapoison","PoisonChance=100"},
		{"strongpoison","PoisonChance=100"},
    		{"strongdisease","DiseaseChance=100"},
		{"creatureareaattack","StateAccuracyBonus=100"},
	    	{"creatureareadisease","DiseaseChance=100"},
    		{"creatureareableeding","BleedChance=100"}
	}
}

CreatureTemplates:addCreatureTemplate(woolamander_boss, "woolamander_boss")

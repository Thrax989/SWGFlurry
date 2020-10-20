isd_at_at = Creature:new {
	customName = "\\#00ff00<<< AT-AT 1 >>> \\#ff0000[lvl 300]",
	socialGroup = "mercenary",
	faction = "",
	level = 300,
	chanceHit = 80.0,
	damageMin = 6000,
	damageMax = 8000,
	baseXp = 21728,
	baseHAM = 100000,
	baseHAMmax = 150000,
	armor = 2,
	resists = {150,175,175,175,175,175,175,175,160},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = NONE,
	scale = 0.5,  

	templates = {"object/mobile/atat.iff"},
 	lootGroups = {
		{
			groups = {
				{group = "trash_common", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "trash_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "trash_rare", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 3000000
		}
	}, 
	conversationTemplate = "",
	defaultAttack = "defaultdroidattack",
	defaultWeapon = "object/weapon/ranged/vehicle/vehicle_atst_ranged.iff",
}

CreatureTemplates:addCreatureTemplate(isd_at_at, "isd_at_at")
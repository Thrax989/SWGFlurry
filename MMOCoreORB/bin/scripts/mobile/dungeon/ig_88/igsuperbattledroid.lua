igsuperbattledroid = Creature:new {
	customName = "Supper Battle Droid",
	socialGroup = "mercenary",
	faction = "",
	level = 300,
	chanceHit = 25.0,
	damageMin = 250,
	damageMax = 350,
	baseXp = 400000,
	baseHAM = 430000,
	baseHAMmax = 430000,
	armor = 3,
	resists = {70,70,70,70,70,70,70,70,70},--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
	optionsBitmask = AIENABLED,
	diet = NONE,
	scale = 1.40,

	templates = {
		"object/mobile/super_battle_droid.iff",
	},
	lootGroups = {
	},
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "creaturerangedattack"
}

CreatureTemplates:addCreatureTemplate(igsuperbattledroid, "igsuperbattledroid")

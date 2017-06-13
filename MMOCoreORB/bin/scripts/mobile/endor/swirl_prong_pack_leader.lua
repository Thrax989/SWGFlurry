swirl_prong_pack_leader = Creature:new {
	objectName = "@mob/creature_names:swirl_prong_pack_leader",
	socialGroup = "prong",
	faction = "",
	level = 32,
	chanceHit = 0.4,
	damageMin = 305,
	damageMax = 320,
	baseXp = 3188,
	baseHAM = 8600,
	baseHAMmax = 10500,
	armor = 0,
	resists = {135,15,15,15,-1,-1,-1,15,-1},
	meatType = "meat_herbivore",
	meatAmount = 500,
	hideType = "hide_leathery",
	hideAmount = 500,
	boneType = "bone_mammal",
	boneAmount = 500,
	milkType = "milk_wild",
	milk = 500,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/swirl_prong_hue.iff"},
	scale = 1.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(swirl_prong_pack_leader, "swirl_prong_pack_leader")

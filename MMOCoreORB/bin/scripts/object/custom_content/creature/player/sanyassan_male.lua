object_creature_player_sanyassan_male = object_creature_player_shared_sanyassan_male:new {
	baseHAM = { 100, 100, 100, 100, 100, 100, 100, 100, 100 },
	gameObjectType = 1033,
	zoneComponent = "PlayerZoneComponent",
	objectMenuComponent = "PlayerObjectMenuComponent",
	containerComponent = "PlayerContainerComponent",
	pvpStatusBitmask = PLAYER,
	templateType = PLAYERCREATURE,
	childObjects = {
		{templateFile = "object/tangible/inventory/character_inventory.iff", x = 0, z = 0, y = 0, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = 4},
		{templateFile = "object/tangible/datapad/character_datapad.iff", x = 0, z = 0, y = 0, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = 4},
		{templateFile = "object/player/player.iff", x = 0, z = 0, y = 0, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = 4},
		{templateFile = "object/tangible/bank/character_bank.iff", x = 0, z = 0, y = 0, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = 4},
		{templateFile = "object/tangible/mission_bag/mission_bag.iff", x = 0, z = 0, y = 0, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = 4},
		{templateFile = "object/weapon/melee/unarmed/unarmed_default_player.iff", x = 0, z = 0, y = 0, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = 4}
		
	},
	defaultLanguage = 1,
	startingItems = { },
	startingSkills = { "species_sanyassan", "social_language_basic_comprehend", "social_language_basic_speak" }
}

ObjectTemplates:addTemplate(object_creature_player_sanyassan_male, "object/creature/player/sanyassan_male.iff")

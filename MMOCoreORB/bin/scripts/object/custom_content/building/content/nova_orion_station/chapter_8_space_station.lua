object_building_content_nova_orion_station_chapter_8_space_station = object_building_content_nova_orion_station_shared_chapter_8_space_station:new {
	customName = "Nova Station",
	spawningPoints = {
            { x = 90.598, z = 0.8, y = -46.243, ow = 0.891006, ox = 0, oz = 0, oy = -0.45399, cellid = 8 },
	},
	templateType = CLONINGBUILDING,
	planetMapCategory = "cloningfacility",
	facilityType = CLONER_STANDARD,

	gameObjectType = 521,
	childObjects = {
		{templateFile = "object/tangible/terminal/terminal_travel.iff", x = 90.598, z = 0.8, y = -46.243, ox = 0, oy = -0.45399, oz = 0, ow = 0.891006, cellid = 8, containmentType = -1},
		{templateFile = "object/tangible/travel/ticket_collector/ticket_collector.iff", x = 89.1, z = .8, y = -46.8, ox = 0, oy = -0.38268, oz = 0, ow = 0.92388, cellid = 8, containmentType = -1},
		{templateFile = "object/creature/npc/theme_park/player_transport_theed_hangar.iff", x = 70, z = 0, y = -50, ox = 0, oy = 0.88701, oz = 0, ow = 0.46175, cellid = 8, containmentType = -1}
	}



}
ObjectTemplates:addTemplate(object_building_content_nova_orion_station_chapter_8_space_station, "object/building/content/nova_orion_station/chapter_8_space_station.iff")

object_building_mustafar_structures_must_new_mining_facility = object_building_mustafar_structures_shared_must_new_mining_facility:new {


	customName = "Mustafar Mining Facility",
	spawningPoints = {
            { x = -111, z = 10.3, y = 122, ow = 0, ox = 0, oz = 0, oy = 0, cellid = 11 },
	},
	templateType = CLONINGBUILDING,
	planetMapCategory = "cloningfacility",
	facilityType = CLONER_STANDARD,


	gameObjectType = 521,
	childObjects = {
		{templateFile = "object/tangible/terminal/terminal_travel.iff", x = -54, z = 31.5, y = -122, ox = 0, oy = 0, oz = 0, ow = 0, cellid = 29, containmentType = -1},
		{templateFile = "object/tangible/travel/ticket_collector/ticket_collector.iff", x = -50, z = 30.7, y = -140, ox = 0, oy = 0.707107, oz = 0, ow = 0.707107, cellid = -1, containmentType = -1},
		{templateFile = "object/mobile/player_transport.iff", x = -50, z = 31, y = -150, ox = 0, oy = 0.70711, oz = 0, ow = 0.70711, cellid = -1, containmentType = -1}
	}





}
ObjectTemplates:addTemplate(object_building_mustafar_structures_must_new_mining_facility, "object/building/mustafar/structures/must_new_mining_facility.iff")

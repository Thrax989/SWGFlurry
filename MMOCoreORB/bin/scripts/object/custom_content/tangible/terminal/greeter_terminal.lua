object_tangible_terminal_greeter_terminal = object_tangible_terminal_shared_greeter_terminal:new {
	customObjectName = "Restuss Clone Point",
	spawningPoints = {
			{ x = 0, z = 0, y = 0, ow = 0, ox = 0, oz = 0, oy = 0, cellid = 0 },
			},
	templateType = CLONINGBUILDING,
	planetMapCategory = "cloningfacility",
	facilityType = CLONER_STANDARD,
}
ObjectTemplates:addTemplate(object_tangible_terminal_greeter_terminal, "object/tangible/terminal/greeter_terminal.iff")

object_tangible_terminal_terminal_quad_screen = object_tangible_terminal_shared_terminal_quad_screen:new {
	gameObjectType = 16400,

	maxCondition = 0,

	customName = "Character Appearance Service",

	templateType = CHARACTERBUILDERTERMINAL,

	itemList = {
		        "Character Appearances",
		   {
			"Normal Character Appearance (100 Credits)", "switch_normal_loadout",
			"Royal Guard Appearance (100 Credits)", "royal_guard_appearance",
		   },
	}
}
ObjectTemplates:addTemplate(object_tangible_terminal_terminal_quad_screen, "object/tangible/terminal/terminal_quad_screen.iff")

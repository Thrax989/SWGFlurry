treeTeleportOneConvoTemplate = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "treeTeleportOneConvoHandler",
	screens = {}
}

first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Greeting friend. Which level of the Great Tree would you like to go to?",
	stopConversation = "false",
	options = {
				{"Ground", "ground"},
				{"Level Two", "level_two"},
				{"Level Three", "level_three"},
	}
}
treeTeleportOneConvoTemplate:addScreen(first_screen);

ground = ConvoScreen:new {
  id = "ground",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
treeTeleportOneConvoTemplate:addScreen(ground);

level_two = ConvoScreen:new {
  id = "level_two",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
treeTeleportOneConvoTemplate:addScreen(level_two);

level_three = ConvoScreen:new {
  id = "level_three",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
treeTeleportOneConvoTemplate:addScreen(level_three);

addConversationTemplate("treeTeleportOneConvoTemplate", treeTeleportOneConvoTemplate);

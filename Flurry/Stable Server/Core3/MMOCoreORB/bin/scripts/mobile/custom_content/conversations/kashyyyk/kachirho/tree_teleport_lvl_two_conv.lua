treeTeleportTwoConvoTemplate = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "treeTeleportTwoConvoHandler",
	screens = {}
}

first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Greeting friend. Which level of the Great Tree would you like to go to?",
	stopConversation = "false",
	options = {
				{"Ground", "ground"},
				{"Level One", "level_one"},
				{"Level Three", "level_three"},
	}
}
treeTeleportTwoConvoTemplate:addScreen(first_screen);

ground = ConvoScreen:new {
  id = "ground",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
treeTeleportTwoConvoTemplate:addScreen(ground);

level_one = ConvoScreen:new {
  id = "level_one",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
treeTeleportTwoConvoTemplate:addScreen(level_one);

level_three = ConvoScreen:new {
  id = "level_three",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
treeTeleportTwoConvoTemplate:addScreen(level_three);

addConversationTemplate("treeTeleportTwoConvoTemplate", treeTeleportTwoConvoTemplate);

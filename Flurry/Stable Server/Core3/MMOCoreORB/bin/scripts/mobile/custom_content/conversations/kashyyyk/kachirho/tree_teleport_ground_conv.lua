treeTeleportGroundConvoTemplate = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "treeTeleportGroundConvoHandler",
	screens = {}
}

first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Greeting friend. Which level of the Great Tree would you like to go to?",
	stopConversation = "false",
	options = {
				{"Level One", "level_one"},
				{"Level Two", "level_two"},
				{"Level Three", "level_three"},
	}
}
treeTeleportGroundConvoTemplate:addScreen(first_screen);

level_one = ConvoScreen:new {
  id = "level_one",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
treeTeleportGroundConvoTemplate:addScreen(level_one);

level_two = ConvoScreen:new {
  id = "level_two",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
treeTeleportGroundConvoTemplate:addScreen(level_two);

level_three = ConvoScreen:new {
  id = "level_three",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
treeTeleportGroundConvoTemplate:addScreen(level_three);

addConversationTemplate("treeTeleportGroundConvoTemplate", treeTeleportGroundConvoTemplate);

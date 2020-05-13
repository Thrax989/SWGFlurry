treeTeleportThreeConvoTemplate = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "treeTeleportThreeConvoHandler",
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
				{"Level Two", "level_two"},
	}
}
treeTeleportThreeConvoTemplate:addScreen(first_screen);

ground = ConvoScreen:new {
  id = "ground",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
treeTeleportThreeConvoTemplate:addScreen(ground);

level_one = ConvoScreen:new {
  id = "level_one",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
treeTeleportThreeConvoTemplate:addScreen(level_one);

level_two = ConvoScreen:new {
  id = "level_two",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
treeTeleportThreeConvoTemplate:addScreen(level_two);

addConversationTemplate("treeTeleportThreeConvoTemplate", treeTeleportThreeConvoTemplate);

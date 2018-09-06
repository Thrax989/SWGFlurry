hanStartConvoTemplate = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "hanStartConvoHandler",
	screens = {}
}

--Part 1

first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "@conversation/npe_station_han_start:s_196",--Great work up there kid.
	stopConversation = "false",
	options = {
				{"@conversation/npe_station_han_start:s_197", "thanks"},
	}
}
hanStartConvoTemplate:addScreen(first_screen);

thanks = ConvoScreen:new {
  id = "thanks",
  leftDialog = "@conversation/npe_station_han_start:s_200",
  stopConversation = "false",
  options = { 
  }
}
hanStartConvoTemplate:addScreen(thanks);

--Part 2******************************************************

thanks = ConvoScreen:new {
  id = "thanks",
  leftDialog = "@conversation/npe_station_han_start:s_200",
  stopConversation = "false",
  options = { 
  }
}
hanStartConvoTemplate:addScreen(thanks);


addConversationTemplate("hanStartConvoTemplate", hanStartConvoTemplate);

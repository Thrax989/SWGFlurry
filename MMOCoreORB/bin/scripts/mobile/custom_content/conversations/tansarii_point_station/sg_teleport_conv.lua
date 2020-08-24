sgTeleportConvoTemplate = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "sgTeleportConvoHandler",
	screens = {}
}

first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "This shuttle is used to travel back and forth from Station Gamma. If your sure you would like to travel now, click 'OK'",
	stopConversation = "false",
	options = {
				{"OK", "ok"},
	}
}
sgTeleportConvoTemplate:addScreen(first_screen);

ok = ConvoScreen:new {
  id = "ok",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
sgTeleportConvoTemplate:addScreen(ok);

addConversationTemplate("sgTeleportConvoTemplate", sgTeleportConvoTemplate);

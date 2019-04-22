tps_inaldraConvoTemplate = ConvoTemplate:new {
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
tps_inaldraConvoTemplate:addScreen(first_screen);

ok = ConvoScreen:new {
  id = "ok",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
tps_inaldraConvoTemplate:addScreen(ok);

addConversationTemplate("tps_inaldraConvoTemplate", tps_inaldraConvoTemplate);

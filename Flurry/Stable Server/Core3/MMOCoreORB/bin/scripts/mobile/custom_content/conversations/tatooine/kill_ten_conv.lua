killTenConvoTemplate = ConvoTemplate:new {
	 initialScreen = "first_screen",
	 templateType = "Lua",
	 luaClassHandler = "killTenConvoHandler",
	 screens = {}
}

first_screen = ConvoScreen:new {
	 id = "first_screen",
	leftDialog = "",
	customDialogText = "You go kill 10 Worts and I'll pay you!",
	stopConversation = "false",
	options = {
		 {"Why","why"},
		 {"OK, I'll do it now","ok"}
	 }
 }
killTenConvoTemplate:addScreen("first_screen");

why = ConvoScreen:new {
	 id = "why",
	leftDialog = "",
	customDialogText = "Coz I want you too, ok.",
	stopConversation = "false",
	options = {
		 {"OK, I'll do it now","ok"}
	 }
 }
killTenConvoTemplate:addScreen("why");




ok = ConvoScreen:new {
	 id = "ok",
	leftDialog = "",
	customDialogText = "And be quik about it!",
	stopConversation = "true",
	options = {
	 }
 }
killTenConvoTemplate:addScreen("ok");


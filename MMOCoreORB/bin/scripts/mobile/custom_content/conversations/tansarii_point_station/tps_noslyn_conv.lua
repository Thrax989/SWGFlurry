tpsNoslynConvoTemplate = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "tpsNoslynConvoHandler",
	screens = {}
}

first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Han was telling me your pretty handy in a fight. Well you look like you could do with some training! Want to earn some credits and toughen up a little?",
	stopConversation = "false",
	options = {
				{"OK", "ok"},
	}
}
tpsNoslynConvoTemplate:addScreen(first_screen);

ok = ConvoScreen:new {
  id = "ok",
  leftDialog = "",
  customDialogText = "As a Brawler, you have the choice to use various blades or lances. I prefer my bare hands, tell me how you like to do your killin' and i can help.",
  stopConversation = "true",
  options = { 
				{"Unarmed", "unarmed"},
				{"One handed swords", "oneswords"},
				{"two handed swords", "twoswords"},
				{"Pikes & lances", "pikes"},
  }
}
tpsNoslynConvoTemplate:addScreen(ok);

unarmed = ConvoScreen:new {
	id = "unarmed",
	leftDialog = "",
	customDialogText = "Around the station are plenty of ",
	stopConversation = "false",
	options = {
				{"OK", "ok"},
	}
}
tpsNoslynConvoTemplate:addScreen(unarmed);

addConversationTemplate("tpsNoslynConvoTemplate", tpsNoslynConvoTemplate);

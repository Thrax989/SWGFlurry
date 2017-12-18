costume_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "costume_convo_handler",
	screens = {}
}
costume_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Greetings. I can apply a costume on you",
	stopConversation = "false",
	options = {
	{"I need a Costume !", "select_costume"},
	{"Sorry was looking for something else...", "deny_quest"},
	}
}
costume_template:addScreen(costume_first_screen);

costume_deny_quest = ConvoScreen:new {
	id = "deny_quest",
	leftDialog = "",
	customDialogText = "Don't waste my time then",
	stopConversation = "true",
	options = {
	}
}
costume_template:addScreen(costume_deny_quest);

costume_buffs = ConvoScreen:new {
	id = "select_costume",
	leftDialog = "",
	customDialogText = "Thank You",
	stopConversation = "false",
	options = {
		{"A Jawa", "costume_jawa"},
		{"A Morag", "costume_morag"},
		{"Borvo the Hutt", "costume_borvo"},
		{"A Gamorrean", "costume_gamorrean"},
		{"A Muftak", "costume_nightsister"},
		{"Max Reboo", "costume_maxreboo"},
		{"Royal Guard", "costume_royalguard"},
		{"A Tusken", "costume_tusken"},
		{"Boba Fett", "costume_boba"},
		{"Obi Wan !", "costume_obiwan"},
		{"A Muftak", "costume_muftak"},
		{"A Strange old Men", "costume_santa"},
		{"A Wichtel", "costume_wichtel"},
		{"No Thanks", "deny_quest"},
	}
}
costume_template:addScreen(costume_buffs);

costume_insufficient_funds = ConvoScreen:new {
	id = "insufficient_funds",
	leftDialog = "",
	customDialogText = "Sorry, but you don't have enough credits with you to pay that.",
	stopConversation = "true",
	options = {
	}
}
costume_template:addScreen(costume_insufficient_funds);

addConversationTemplate("costume_template",costume_template);
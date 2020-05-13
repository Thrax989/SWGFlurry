--- boba's conversaion
sample_quest_boba_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "sample_quest_boba_handler",
	screens = {}
}


sample_quest_boba_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "What do you want?",
	stopConversation = "false",
	options = {
		{"Solo", "quest_solo"},
		{"Sorry, wrong guy", "quest_exit"}
		
	}
}

sample_quest_boba_template:addScreen(sample_quest_boba_first_screen);

sample_quest_boba_quest_solo = ConvoScreen:new {
	id = "quest_solo",
	leftDialog = "",
	stopConversation = "false",
	customDialogText = "Solo.  Yeah.  Jabba wants him dead.  For real this time.",
	options = {
		{"No you aren't, I'm here to stop you", "stop_boba"},
		
	}
}

sample_quest_boba_template:addScreen(sample_quest_boba_quest_solo);

sample_quest_stop_boba = ConvoScreen:new {
	id = "stop_boba",
	leftDialog = "",
	stopConversation = "false",
	customDialogText = "Hahaha.  You and what Army.",
	options = {
		{"Me and my credits.I'll give you half the credits Jabba offered you, and you won't have to get your hands dirty", "fight_boba"},
		{"Me and my blaster", "fight_boba"},
	}
}

sample_quest_boba_template:addScreen(sample_quest_stop_boba);

sample_quest_fight_boba = ConvoScreen:new {
	id = "fight_boba",
	leftDialog = "",
	stopConversation = "true",
	customDialogText = "You're going down sucker!",
	options = {
	
	}
}

sample_quest_boba_template:addScreen(sample_quest_fight_boba);

sample_quest_boba_go_away = ConvoScreen:new {
	id = "boba_go_away",
	leftDialog = "",
	stopConversation = "true",
	customDialogText = "Go away",
	options = {
	
	}
}

sample_quest_boba_template:addScreen(sample_quest_boba_go_away);

addConversationTemplate("sample_quest_boba_template", sample_quest_boba_template);
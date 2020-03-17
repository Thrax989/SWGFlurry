sample_quest_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "sample_quest_convo_handler",
	screens = {}
}



sample_quest_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Help me please.  Boba Fett is out to get me.  Jabba has placed a bounty on my head.  I need someone to take him out.  Will you help?",
	stopConversation = "false",
	options = {
		{"YES", "accept_quest"},
		{"NO", "deny_quest"},
	
	}
}

sample_quest_template:addScreen(sample_quest_first_screen);

sample_quest_accept_quest = ConvoScreen:new {
	id = "accept_quest",
	leftDialog = "",
	customDialogText = "He's in the theed cantina.  Go talk to him.  See what you can do",
	stopConversation = "true",
	options = {
		
	}
}

sample_quest_template:addScreen(sample_quest_accept_quest);

sample_quest_quest_status = ConvoScreen:new {
	id = "quest_status",
	leftDialog = "",
	customDialogText = "",
	stopConversation = "true",
	options = {
		
	}
}

sample_quest_template:addScreen(sample_quest_quest_status);

sample_quest_not_yet= ConvoScreen:new {
	id = "not_yet",
	leftDialog = "",
	customDialogText = "Hey he's not dead yet?  I don't have much time.",
	stopConversation = "true",
	options = {
		
	}
}

sample_quest_template:addScreen(sample_quest_not_yet);

sample_quest_thank_you = ConvoScreen:new {
	id = "thank_you",
	leftDialog = "",
	customDialogText = "Thanks kid.  Here's 10,000 Galactic Credits.  Don't spend it all in one place",
	stopConversation = "true",
	options = {
		
	}
}

sample_quest_template:addScreen(sample_quest_thank_you);


sample_quest_completed = ConvoScreen:new {
	id = "completed",
	leftDialog = "",
	customDialogText = "Thanks again for the help with Boba.",
	stopConversation = "false",
	options = {
		
	}
}

sample_quest_template:addScreen(sample_quest_completed);
	
sample_quest_quest_reset = ConvoScreen:new {
	id = "quest_reset",
	leftDialog = "",
	customDialogText = "",
	stopConversation = "true",
	options = {
		
	}
}

sample_quest_template:addScreen(sample_quest_quest_reset);

addConversationTemplate("sample_quest_template", sample_quest_template);


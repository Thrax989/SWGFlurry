mission_quest_template = ConvoTemplate:new {
	initialScreen = "start",
	templateType = "Lua",
	luaClassHandler = "mission_quest_convo_handler",
	screens = {}
}


mission_start_quest = ConvoScreen:new {
	id = "start",
	customDialogText = "Hello, how may I help you today?",
	stopConversation = "false",
	options = {
		{ "I am looking for some work, is there any available?", "intro" },
		{ "Goodbye, I'm not interested in what you have to say.", "bye" },
	}
}
mission_quest_template:addScreen(mission_start_quest);
-----------------

mission_intro = ConvoScreen:new {
	id = "intro",
	customDialogText = "ah yes, there is much work to be done around here, are you sure you would like to get your hands dirty?",
	stopConversation = "false",
	options = {
		{ "Sure I can help what do you need me to do?", "intro2" },
		{ "I'm sorry, I'm on the sidelines of this.", "bye" },
	}
}
mission_quest_template:addScreen(mission_intro);
-----------------
--------------------

mission_intro2 = ConvoScreen:new {
	id = "intro2",
	customDialogText = "First you will need a speeder, you will have to travel across the planet , are you able to do this?",
	stopConversation = "false",
	options = {
		{ "yea Im sure how difficult can it be?.", "intro3" },
		{ "I'm sorry, I am not up to the challange.", "bye" },
	}
}
mission_quest_template:addScreen(mission_intro2);

-------------

mission_intro3 = ConvoScreen:new {
	id = "intro3",
  customDialogText = "You would be surprised, the guy that you are tracking down has many tricks up his sleeve, make sure you bring a weapon with you, maybe even a friend or two just to be safe.",
	stopConversation = "false",
	options = {
		{ "This sounds dangerous I think I can handle it though", "intro4" },
		{ "I'm leaving, I'm not up to the challenge.", "bye" },
	}
}
mission_quest_template:addScreen(mission_intro3);
-------------

mission_intro4 = ConvoScreen:new {
	id = "intro4",
customDialogText = "Very well if you do defeat him, bring back what he has taken from me, I will reward you for your efforts.",
	stopConversation = "false",
	options = {
		{ "what type of reward are you offering?", "intro5" },
		{ "No ... I don't think its worth dieing over.", "bye" },
	}
}
mission_quest_template:addScreen(mission_intro4);
----------------

mission_intro5 = ConvoScreen:new {
  id = "intro5",
  customDialogText = "Well if you are able to complete the job I can give you a fair amount of Credits along with some Rare valuable Items.",
  stopConversation = "false",
  options = {
		{ "I need the work.", "intro6" },
		{ "I am sorry I have to go.", "bye" },
	}
}
mission_quest_template:addScreen(mission_intro5);
----------------


mission_intro6 = ConvoScreen:new {
  id = "intro6",
  customDialogText = "Sounds good lets get you started, here are the directions for your task",
  stopConversation = "false",
  options = {
		{ "Take directions", "intro7" },
		{ "I do not want to know more. Goodbye.", "bye" },
	}
}
mission_quest_template:addScreen(mission_intro6);

mission_intro7 = ConvoScreen:new {
  id = "intro7",
  customDialogText = "You will be traveling across planet to the fort tusken region, make sure you keep your guard up it can be very dangerous around there.",
  stopConversation = "false",
  options = {
		{ "All right. I'll come back once the job is complete.", "intro8" },
		{ "I think that's your thing. I'll get out of here while I still can.", "bye3" },
	}
}
mission_quest_template:addScreen(mission_intro7);

mission_intro8 = ConvoScreen:new {
  id = "intro8",
  customDialogText = "Dont Forget, your target is the ... The Tusken Executioner",
  stopConversation = "false",
  options = {
		{ "I'm ready...", "accept_quest" },
		{ "The tusken Executioner??!. I have things to do!. Goodbye!.", "bye" },
	}
}
mission_quest_template:addScreen(mission_intro8);

mission_bye = ConvoScreen:new {
  id = "bye",
  customDialogText = "Goodbye.",
  stopConversation = "true",
  options = {}
}
mission_quest_template:addScreen(mission_bye);

mission_bye2 = ConvoScreen:new {
  id = "bye2",
  customDialogText = "maybe another time",
  stopConversation = "true",
  options = {}
}
mission_quest_template:addScreen(mission_bye2);

mission_bye3 = ConvoScreen:new {
  id = "bye3",
  customDialogText = "Come back if you change your mind.",
  stopConversation = "true",
  options = {}
}
mission_quest_template:addScreen(mission_bye3);

mission_quest_accept_quest = ConvoScreen:new {
	id = "accept_quest",
	customDialogText = "Good luck your going to need it.",
	stopConversation = "true",
	options = {}
}
mission_quest_template:addScreen(mission_quest_accept_quest);

mission_quest_quest_status = ConvoScreen:new {
	id = "quest_status",
	customDialogText = "",
	stopConversation = "true",
	options = {}
}
mission_quest_template:addScreen(mission_quest_quest_status);

mission_quest_not_yet= ConvoScreen:new {
	id = "not_yet",
	customDialogText = "Did not you have something to do? The tusken king is still alive ... I can still feel him on the planet tatooine.",
	stopConversation = "false",
	options = {
		{"Yes. It is true...", "bye2"},
		{"I've thought about it, I do not want to do this until I am ready or have friends to help.", "quest_reset"},
	}
}
mission_quest_template:addScreen(mission_quest_not_yet);

mission_quest_thank_you = ConvoScreen:new {
	id = "thank_you",
	customDialogText = "I will remember what you have done for me. Keep this present as a token of my sincere gratitude.",
	stopConversation = "true",
	options = {}
}
mission_quest_template:addScreen(mission_quest_thank_you);

mission_quest_completed = ConvoScreen:new {
	id = "completed",
	customDialogText = "I feel that you managed to defeat the tusken executioner ...",
	stopConversation = "true",
	options = {}
}
mission_quest_template:addScreen(mission_quest_completed);

mission_quest_reset = ConvoScreen:new {
	id = "quest_reset",
	customDialogText = "Come back if you change your mind ...",
	stopConversation = "true",
	options = {}
}
mission_quest_template:addScreen(mission_quest_reset);

----- There is no place in the inventory to give the reward ---
mission_no_space = ConvoScreen:new {
  id = "no_space",
  customDialogText = "It seems as if you have to make room in your inventory before receiving your reward.",
  stopConversation = "true",
  options = {}
}
mission_quest_template:addScreen(mission_no_space);

addConversationTemplate("mission_quest_template", mission_quest_template);

vryyyrConvoTemplate = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "vryyyrConvoHandler",
	screens = {}
}

first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "@conversation/ep3_vryyyr:s_450", -- WRRROARRRR! 
	stopConversation = "false",
	options = {
				{"@conversation/ep3_vryyyr:s_452", "whatwant"}, -- roar roar?
	}
}
vryyyrConvoTemplate:addScreen(first_screen);

whatwant = ConvoScreen:new {
	id = "whatwant",
	leftDialog = "@conversation/ep3_vryyyr:s_454", -- What do you want outsider! 
	stopConversation = "false",
	options = {
				{"@conversation/ep3_vryyyr:s_456", "ihunter"}, -- i am a hunter?
				{"@conversation/ep3_vryyyr:s_484", "facerip"}, -- evil empire??
				{"@conversation/ep3_vryyyr:s_488", "doomfall"} -- doomed to fall?
	}
}
vryyyrConvoTemplate:addScreen(whatwant);

ihunter = ConvoScreen:new {
	id = "ihunter",
	leftDialog = "@conversation/ep3_vryyyr:s_458", -- You're not a hunter
	stopConversation = "false",
	options = {
				{"@conversation/ep3_vryyyr:s_460", "dangerous"}, -- Kachirho?
				{"@conversation/ep3_vryyyr:s_468", "courage"}, -- what is rryatt?
				{"@conversation/ep3_vryyyr:s_480", "etyyy"} -- whats so terrifying?
	}
}
vryyyrConvoTemplate:addScreen(ihunter);

dangerous = ConvoScreen:new {
	id = "dangerous",
	leftDialog = "@conversation/ep3_vryyyr:s_462", -- The city can be dangerous
	stopConversation = "false",
	options = {
				{"@conversation/ep3_vryyyr:s_464", "farewell"}, -- Thank you
	}
}
vryyyrConvoTemplate:addScreen(dangerous);

thankyou = ConvoScreen:new {
	id = "thankyou",
	leftDialog = "@conversation/ep3_vryyyr:s_446", -- Thank you
	stopConversation = "false",
	options = {
				{"@conversation/ep3_vryyyr:s_466", "farewell"} -- farewell
	}
}
vryyyrConvoTemplate:addScreen(thankyou);

farewell = ConvoScreen:new {
	id = "farewell",
	leftDialog = "@conversation/ep3_vryyyr:s_466", -- Farewell
	stopConversation = "true",
	options = {
	}
}
vryyyrConvoTemplate:addScreen(farewell);

courage = ConvoScreen:new {
	id = "courage",
	leftDialog = "@conversation/ep3_vryyyr:s_470", -- So you have the courage
	stopConversation = "false",
	options = {
				{"@conversation/ep3_vryyyr:s_472", "wastetime"}, -- I have the skill
	}
}
vryyyrConvoTemplate:addScreen(courage);

wastetime = ConvoScreen:new {
	id = "wastetime",
	leftDialog = "@conversation/ep3_vryyyr:s_474", -- Then dont waste your time talking to me
	stopConversation = "false",
	options = {
				{"@conversation/ep3_vryyyr:s_476", "farewell"},
	}
}
vryyyrConvoTemplate:addScreen(wastetime);

etyyy = ConvoScreen:new {
	id = "etyyy",
	leftDialog = "@conversation/ep3_vryyyr:s_482", -- Honestly, the Rodians disturb me
	stopConversation = "true",
	options = {
	}
}
vryyyrConvoTemplate:addScreen(etyyy);

facerip = ConvoScreen:new {
	id = "facerip",
	leftDialog = "@conversation/ep3_vryyyr:s_486", -- facerip
	stopConversation = "true",
	options = {
	}
}
vryyyrConvoTemplate:addScreen(facerip);

doomfall = ConvoScreen:new {
	id = "doomfall",
	leftDialog = "@conversation/ep3_vryyyr:s_490", -- Stand up to the empire!
	stopConversation = "true",
	options = {
	}
}
vryyyrConvoTemplate:addScreen(doomfall);

addConversationTemplate("vryyyrConvoTemplate", vryyyrConvoTemplate);

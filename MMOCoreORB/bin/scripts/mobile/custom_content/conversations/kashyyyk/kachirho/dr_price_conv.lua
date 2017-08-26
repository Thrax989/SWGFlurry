kachirhoDrPriceConvoTemplate = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "kashDrPriceConvoHandler",
	screens = {}
}

first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "@conversation/ep3_imp_dr_price:s_382", -- My home...
	stopConversation = "false",
	options = {
				{"@conversation/ep3_imp_dr_price:s_384", "great_tree"}, -- I'm looking for adventure
				{"@conversation/ep3_imp_dr_price:s_396", "starport"}, -- Modern?
				{"@conversation/ep3_imp_dr_price:s_444", "really"}, -- Ah, the wars not so bad
	}
}
kachirhoDrPriceConvoTemplate:addScreen(first_screen);

great_tree = ConvoScreen:new {
	id = "great_tree",
	leftDialog = "@conversation/ep3_imp_dr_price:s_386", -- Have you visited the great tree
	stopConversation = "false",
	options = {
				{"@conversation/ep3_imp_dr_price:s_388", "vryyyr"}, -- Good idea
				{"@conversation/ep3_imp_dr_price:s_392", "vryyyrtwo"}, -- No
	}
}
kachirhoDrPriceConvoTemplate:addScreen(great_tree);

vryyyr = ConvoScreen:new {
	id = "vryyyr",
	leftDialog = "@conversation/ep3_imp_dr_price:s_390", -- You should also talk to my friend here
	stopConversation = "true",
	options = {
	}
}
kachirhoDrPriceConvoTemplate:addScreen(vryyyr);

vryyyrtwo = ConvoScreen:new {
	id = "vryyyrtwo",
	leftDialog = "@conversation/ep3_imp_dr_price:s_394", -- then I recommend you should talk to my friend here
	stopConversation = "true",
	options = {
	}
}
kachirhoDrPriceConvoTemplate:addScreen(vryyyrtwo);

starport = ConvoScreen:new {
	id = "starport",
	leftDialog = "@conversation/ep3_imp_dr_price:s_398", -- Sure
	stopConversation = "false",
	options = {
				{"@conversation/ep3_imp_dr_price:s_400", "sickened"}, -- You dislike technology
				{"@conversation/ep3_imp_dr_price:s_440", "your_right"}, -- this place looks primative
	}
}
kachirhoDrPriceConvoTemplate:addScreen(starport);

sickened = ConvoScreen:new {
	id = "sickened",
	leftDialog = "@conversation/ep3_imp_dr_price:s_402", -- OFC not
	stopConversation = "false",
	options = {
				{"@conversation/ep3_imp_dr_price:s_404", "good_thing"}, -- The Empire will win this war
				{"@conversation/ep3_imp_dr_price:s_420", "hope_so"}, -- The Empire is doomed
				{"@conversation/ep3_imp_dr_price:s_436", "fortunate"}, -- I don't care about the war
	}
}
kachirhoDrPriceConvoTemplate:addScreen(sickened);

good_thing = ConvoScreen:new {
	id = "good_thing",
	leftDialog = "@conversation/ep3_imp_dr_price:s_406", -- My home...
	stopConversation = "false",
	options = {
				{"@conversation/ep3_imp_dr_price:s_408", "own_opinion"}, -- The best thing
				{"@conversation/ep3_imp_dr_price:s_412", "ruined"}, -- No it will ruin us all
				{"@conversation/ep3_imp_dr_price:s_416", "whatwant"}, -- Glare at him
	}
}
kachirhoDrPriceConvoTemplate:addScreen(good_thing);

own_opinion = ConvoScreen:new {
	id = "own_opinion",
	leftDialog = "@conversation/ep3_imp_dr_price:s_410", -- You are free to have your own opinion
	stopConversation = "true",
	options = {
	}
}
kachirhoDrPriceConvoTemplate:addScreen(own_opinion);

your_right = ConvoScreen:new {
	id = "your_right",
	leftDialog = "@conversation/ep3_imp_dr_price:s_442", -- Yes, you are right
	stopConversation = "true",
	options = {
	}
}
kachirhoDrPriceConvoTemplate:addScreen(your_right);

really = ConvoScreen:new {
	id = "really",
	leftDialog = "@conversation/ep3_imp_dr_price:s_446", -- Really, what makes you say that?
	stopConversation = "false",
	options = {
				{"@conversation/ep3_imp_dr_price:s_404", "good_thing"}, -- The Empire will win this war
				{"@conversation/ep3_imp_dr_price:s_420", "hope_so"}, -- The Empire is doomed
				{"@conversation/ep3_imp_dr_price:s_436", "fortunate"}, -- I don't care about the war
	}
}
kachirhoDrPriceConvoTemplate:addScreen(really);

hope_so = ConvoScreen:new {
	id = "hope_so",
	leftDialog = "@conversation/ep3_imp_dr_price:s_422", -- I do hope so
	stopConversation = "true",
	options = {
	}
}
kachirhoDrPriceConvoTemplate:addScreen(hope_so);

ruined = ConvoScreen:new {
	id = "ruined",
	leftDialog = "@conversation/ep3_imp_dr_price:s_414", -- They have ruined my people
	stopConversation = "true",
	options = {
	}
}
kachirhoDrPriceConvoTemplate:addScreen(ruined);

fortunate = ConvoScreen:new {
	id = "fortunate",
	leftDialog = "@conversation/ep3_imp_dr_price:s_438", -- Fortunate for you
	stopConversation = "true",
	options = {
	}
}
kachirhoDrPriceConvoTemplate:addScreen(fortunate);

politics = ConvoScreen:new {
	id = "politics",
	leftDialog = "@conversation/ep3_imp_dr_price:s_418", -- Maybe we should'nt talk politics
	stopConversation = "true",
	options = {
	}
}
kachirhoDrPriceConvoTemplate:addScreen(politics);

addConversationTemplate("kachirhoDrPriceConvoTemplate", kachirhoDrPriceConvoTemplate);

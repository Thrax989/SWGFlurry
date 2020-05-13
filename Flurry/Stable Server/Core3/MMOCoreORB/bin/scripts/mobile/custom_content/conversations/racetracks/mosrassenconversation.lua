mosrassen_conversationtemplate = ConvoTemplate:new {
	initialScreen = "mosrassen_initial",
	templateType = "Lua",
	luaClassHandler = "mosrassen_racetrack_convo_handler",
	screens = {}
}

mosrassen_initial = ConvoScreen:new {
	id = "mosrassen_initial",
	leftDialog = "@conversation/racing_mos_rassen:s_55824ba",
	stopConversation = "false",
	options = {
		{"@conversation/racing_mos_rassen:s_dffdee4b","cs_jsPlumb_1_90"},
		{"@conversation/racing_mos_rassen:s_1736e216","cs_jsPlumb_1_29"},
		{"@conversation/racing_mos_rassen:s_838e4ffb","cs_jsPlumb_1_181"},
		{"@conversation/racing_mos_rassen:s_2492930f","cs_jsPlumb_1_207"}
	}
}
mosrassen_conversationtemplate:addScreen(mosrassen_initial);
cs_jsPlumb_1_29 = ConvoScreen:new {
	id = "cs_jsPlumb_1_29",
	leftDialog = "@conversation/racing_mos_rassen:s_392149e8",
	stopConversation = "false",
	options = {
		{"@conversation/racing_mos_rassen:s_e460e3d3","cs_jsPlumb_1_233"},
		{"@conversation/racing_mos_rassen:s_fbd55d9d",""}
	}
}
mosrassen_conversationtemplate:addScreen(cs_jsPlumb_1_29);
cs_jsPlumb_1_90 = ConvoScreen:new {
	id = "cs_jsPlumb_1_90",
	leftDialog = "@conversation/racing_mos_rassen:s_d24f3595",
	stopConversation = "false",
	options = {
		{"@conversation/racing_mos_rassen:s_2528fad7","cs_jsPlumb_1_116"},
		{"@conversation/racing_mos_rassen:s_262e8687","cs_jsPlumb_1_142"}
	}
}
mosrassen_conversationtemplate:addScreen(cs_jsPlumb_1_90);
cs_jsPlumb_1_116 = ConvoScreen:new {
	id = "cs_jsPlumb_1_116",
	leftDialog = "@conversation/racing_mos_rassen:s_b2acc217",
	stopConversation = "true",
	options = {
	}
}
mosrassen_conversationtemplate:addScreen(cs_jsPlumb_1_116);
cs_jsPlumb_1_142 = ConvoScreen:new {
	id = "cs_jsPlumb_1_142",
	leftDialog = "@conversation/racing_mos_rassen:s_c0918d6",
	stopConversation = "true",
	options = {
	}
}
mosrassen_conversationtemplate:addScreen(cs_jsPlumb_1_142);
cs_jsPlumb_1_181 = ConvoScreen:new {
	id = "cs_jsPlumb_1_181",
	leftDialog = "@conversation/racing_mos_rassen:s_abd9745d",
	stopConversation = "true",
	options = {
	}
}
mosrassen_conversationtemplate:addScreen(cs_jsPlumb_1_181);
cs_jsPlumb_1_207 = ConvoScreen:new {
	id = "cs_jsPlumb_1_207",
	leftDialog = "@conversation/racing_mos_rassen:s_abd9745d",
	stopConversation = "true",
	options = {
	}
}
mosrassen_conversationtemplate:addScreen(cs_jsPlumb_1_207);
mosrassen_jsPlumb_1_233 = ConvoScreen:new {
	id = "cs_jsPlumb_1_233",
	leftDialog = "@conversation/racing_mos_rassen:s_4b4fb2b7",
	stopConversation = "true",
	options = {
	}
}
mosrassen_conversationtemplate:addScreen(cs_jsPlumb_1_233);
addConversationTemplate("mosrassen_conversationtemplate", mosrassen_conversationtemplate);

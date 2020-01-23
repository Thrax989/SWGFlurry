shaeyKayrConvoTemplate = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "shaeyKayrConvoHandler",
	screens = {}
}

first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "@conversation/ep3_forest_npc_greeter:s_4", -- [Shaey nods to you.] Looks like you're a little lost...
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_npc_greeter:s_6", "introduce_myself"}, -- Yeah. I'm new to this area.
	}
}
shaeyKayrConvoTemplate:addScreen(first_screen);

introduce_myself = ConvoScreen:new {
	id = "introduce_myself",
	leftDialog = "@conversation/ep3_forest_npc_greeter:s_8", -- Ah, I see. Let me introduce myself. [Shaey bows.] I am Shaey Kayr
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_npc_greeter:s_10", "forest_areas"}, -- Alright, Shaey Kayr. Tell me about this place.
	}
}
shaeyKayrConvoTemplate:addScreen(introduce_myself);

forest_areas = ConvoScreen:new {
	id = "forest_areas",
	leftDialog = "@conversation/ep3_forest_npc_greeter:s_78", -- There's certain areas of the Kkowir Forest that make up its cold charm.
	stopConversation = "false",
	options = {
                {"@conversation/ep3_forest_npc_greeter:s_79", "dead_forest"}, -- Tell me about the Dead Forest.
                {"@conversation/ep3_forest_npc_greeter:s_80", "webweaver_caves"}, -- Tell me about the Webweaver Caves.
                {"@conversation/ep3_forest_npc_greeter:s_81", "kerritamba_village"}, -- Tell me about the Kerritamba Village.
                {"@conversation/ep3_forest_npc_greeter:s_82", "the_great_tree"}, -- Tell me about the Great Tree.
                {"@conversation/ep3_forest_npc_greeter:s_83", "the_myyydril_caverns"}, -- Tell me about the Myyydril Caverns.
                {"@conversation/ep3_forest_npc_greeter:s_84", "forest_areas_five"}, -- I know about the areas. Where do I go next?
                {"@conversation/ep3_forest_npc_greeter:s_176", "be_safe"}, -- Thank you for the information. I'm going to explore.
	}
}
shaeyKayrConvoTemplate:addScreen(forest_areas);

dead_forest = ConvoScreen:new {
	id = "dead_forest",
	leftDialog = "@conversation/ep3_forest_npc_greeter:s_106", -- The Dead Forest is a dangerous place. I don't recommend going there.
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_npc_greeter:s_107", "forest_areas_two"}, -- Hmm.
	}
}
shaeyKayrConvoTemplate:addScreen(dead_forest);

forest_areas_two = ConvoScreen:new {
	id = "forest_areas_two",
	leftDialog = "@conversation/ep3_forest_npc_greeter:s_108", -- What other area do you want to learn about?
	stopConversation = "false",
	options = {
                {"@conversation/ep3_forest_npc_greeter:s_79", "dead_forest"}, -- Tell me about the Dead Forest.
                {"@conversation/ep3_forest_npc_greeter:s_80", "webweaver_caves"}, -- Tell me about the Webweaver Caves.
                {"@conversation/ep3_forest_npc_greeter:s_81", "kerritamba_village"}, -- Tell me about the Kerritamba Village.
                {"@conversation/ep3_forest_npc_greeter:s_82", "the_great_tree"}, -- Tell me about the Great Tree.
                {"@conversation/ep3_forest_npc_greeter:s_83", "the_myyydril_caverns"}, -- Tell me about the Myyydril Caverns.
                {"@conversation/ep3_forest_npc_greeter:s_84", "forest_areas_five"}, -- I know about the areas. Where do I go next?
                {"@conversation/ep3_forest_npc_greeter:s_176", "be_safe"}, -- Thank you for the information. I'm going to explore.
	}
}
shaeyKayrConvoTemplate:addScreen(forest_areas_two);

webweaver_caves = ConvoScreen:new {
	id = "webweaver_caves",
	leftDialog = "@conversation/ep3_forest_npc_greeter:s_109", -- As expected, webweaver spiders live there, guarded by their Outcast friends
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_npc_greeter:s_110", "forest_areas_two"}, -- Is anything pleasant here?
	}
}
shaeyKayrConvoTemplate:addScreen(webweaver_caves);

forest_areas_two = ConvoScreen:new {
	id = "forest_areas_two",
	leftDialog = "@conversation/ep3_forest_npc_greeter:s_111", -- Not likely. What other area do you want to learn about?
	stopConversation = "false",
	options = {
                {"@conversation/ep3_forest_npc_greeter:s_79", "dead_forest"}, -- Tell me about the Dead Forest.
                {"@conversation/ep3_forest_npc_greeter:s_80", "webweaver_caves"}, -- Tell me about the Webweaver Caves.
                {"@conversation/ep3_forest_npc_greeter:s_81", "kerritamba_village"}, -- Tell me about the Kerritamba Village.
                {"@conversation/ep3_forest_npc_greeter:s_82", "the_great_tree"}, -- Tell me about the Great Tree.
                {"@conversation/ep3_forest_npc_greeter:s_83", "the_myyydril_caverns"}, -- Tell me about the Myyydril Caverns.
                {"@conversation/ep3_forest_npc_greeter:s_84", "forest_areas_five"}, -- I know about the areas. Where do I go next?
                {"@conversation/ep3_forest_npc_greeter:s_176", "be_safe"}, -- Thank you for the information. I'm going to explore.
	}
}
shaeyKayrConvoTemplate:addScreen(forest_areas_two);

kerritamba_village = ConvoScreen:new {
	id = "kerritamba_village",
	leftDialog = "@conversation/ep3_forest_npc_greeter:s_103", -- Ahh... the Kerritamba village. The Kerritamba village is led by Chief Kerritamba
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_npc_greeter:s_104", "forest_areas_three"}, -- I see. Thank you for the information.
	}
}
shaeyKayrConvoTemplate:addScreen(kerritamba_village);

forest_areas_three = ConvoScreen:new {
	id = "forest_areas_three",
	leftDialog = "@conversation/ep3_forest_npc_greeter:s_111", -- Not likely. What other area do you want to learn about?
	stopConversation = "false",
	options = {
                {"@conversation/ep3_forest_npc_greeter:s_79", "dead_forest"}, -- Tell me about the Dead Forest.
                {"@conversation/ep3_forest_npc_greeter:s_80", "webweaver_caves"}, -- Tell me about the Webweaver Caves.
                {"@conversation/ep3_forest_npc_greeter:s_81", "kerritamba_village"}, -- Tell me about the Kerritamba Village.
                {"@conversation/ep3_forest_npc_greeter:s_82", "the_great_tree"}, -- Tell me about the Great Tree.
                {"@conversation/ep3_forest_npc_greeter:s_83", "the_myyydril_caverns"}, -- Tell me about the Myyydril Caverns.
                {"@conversation/ep3_forest_npc_greeter:s_84", "forest_areas_five"}, -- I know about the areas. Where do I go next?
                {"@conversation/ep3_forest_npc_greeter:s_176", "be_safe"}, -- Thank you for the information. I'm going to explore.
	}
}
shaeyKayrConvoTemplate:addScreen(forest_areas_three);

the_great_tree = ConvoScreen:new {
	id = "the_great_tree",
	leftDialog = "@conversation/ep3_forest_npc_greeter:s_112", -- The Great Tree, also known to the Kerritamba people as Nyenthi'Oris
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_npc_greeter:s_168", "forest_areas_four"}, -- I wonder if I can help somehow.
	}
}
shaeyKayrConvoTemplate:addScreen(the_great_tree);

forest_areas_four = ConvoScreen:new {
	id = "forest_areas_four",
	leftDialog = "@conversation/ep3_forest_npc_greeter:s_169", -- You'll have to speak with him about that.
	stopConversation = "false",
	options = {
                {"@conversation/ep3_forest_npc_greeter:s_79", "dead_forest"}, -- Tell me about the Dead Forest.
                {"@conversation/ep3_forest_npc_greeter:s_80", "webweaver_caves"}, -- Tell me about the Webweaver Caves.
                {"@conversation/ep3_forest_npc_greeter:s_81", "kerritamba_village"}, -- Tell me about the Kerritamba Village.
                {"@conversation/ep3_forest_npc_greeter:s_82", "the_great_tree"}, -- Tell me about the Great Tree.
                {"@conversation/ep3_forest_npc_greeter:s_83", "the_myyydril_caverns"}, -- Tell me about the Myyydril Caverns.
                {"@conversation/ep3_forest_npc_greeter:s_84", "forest_areas_five"}, -- I know about the areas. Where do I go next?
                {"@conversation/ep3_forest_npc_greeter:s_176", "be_safe"}, -- Thank you for the information. I'm going to explore.
	}
}
shaeyKayrConvoTemplate:addScreen(forest_areas_four);

the_myyydril_caverns = ConvoScreen:new {
	id = "the_myyydril_caverns",
	leftDialog = "@conversation/ep3_forest_npc_greeter:s_170", -- The Myyydril Caverns is a mystery to those not living within its cold, damp walls.
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_npc_greeter:s_171", "the_myyydril_caverns_two"}, -- How do I get there?
	}
}
shaeyKayrConvoTemplate:addScreen(the_myyydril_caverns);

the_myyydril_caverns_two = ConvoScreen:new {
	id = "the_myyydril_caverns_two",
	leftDialog = "@conversation/ep3_forest_npc_greeter:s_172", -- You must go north, past the Kerritamba village, to the Chenataa river.
	stopConversation = "false",
	options = {
				{"@conversation/ep3_forest_npc_greeter:s_173", "forest_areas_two"}, -- I see.
	}
}
shaeyKayrConvoTemplate:addScreen(the_myyydril_caverns_two);

forest_areas_five = ConvoScreen:new {
	id = "forest_areas_five",
	leftDialog = "@conversation/ep3_forest_npc_greeter:s_175", -- Well, you have several options.
	stopConversation = "false",
	options = {
                {"@conversation/ep3_forest_npc_greeter:s_79", "dead_forest"}, -- Tell me about the Dead Forest.
                {"@conversation/ep3_forest_npc_greeter:s_80", "webweaver_caves"}, -- Tell me about the Webweaver Caves.
                {"@conversation/ep3_forest_npc_greeter:s_81", "kerritamba_village"}, -- Tell me about the Kerritamba Village.
                {"@conversation/ep3_forest_npc_greeter:s_82", "the_great_tree"}, -- Tell me about the Great Tree.
                {"@conversation/ep3_forest_npc_greeter:s_83", "the_myyydril_caverns"}, -- Tell me about the Myyydril Caverns.
                {"@conversation/ep3_forest_npc_greeter:s_84", "forest_areas_five"}, -- I know about the areas. Where do I go next?
                {"@conversation/ep3_forest_npc_greeter:s_176", "be_safe"}, -- Thank you for the information. I'm going to explore.
	}
}
shaeyKayrConvoTemplate:addScreen(forest_areas_five);

be_safe = ConvoScreen:new {
	id = "be_safe",
	leftDialog = "@conversation/ep3_forest_npc_greeter:s_177", -- I hope you'll be safe. [Shaey bows and waves.]
	stopConversation = "true",
	options = {}
}
shaeyKayrConvoTemplate:addScreen(be_safe);

addConversationTemplate("shaeyKayrConvoTemplate", shaeyKayrConvoTemplate);


dathomir_poi_waypoints_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "dathomir_poi_waypoints_convo_handler",
   screens = {}
}


dathomir_poi_waypoints_items_screen = ConvoScreen:new {
   id = "items_screen",
   leftDialog = "",
   customDialogText = "Please select a POI to visit.",
   stopConversation = "false",
   options = {
      {"Badge:Crashed Ship", "1"},
      {"Badge:Escape Pod", "2"},
      {"Badge:Imperial Prison", "3"},
      {"Badge:Misty Falls 1", "4"},
      {"Badge:Misty Falls 2", "5"},
      {"Badge:Sarlacc", "6"},
      {"Badge:Tarpit", "7"},
      }
}
dathomir_poi_waypoints_template:addScreen(dathomir_poi_waypoints_items_screen);
dathomir_poi_waypoints_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "Welcome to the Points Of Intrest Service.",
   stopConversation = "false",
   options = {
      {"dathomir Points Of Intrest", "items_screen"},
      }
}
dathomir_poi_waypoints_template:addScreen(dathomir_poi_waypoints_first_screen);
dathomir_poi_waypoints_end_quest = ConvoScreen:new {
   id = "end",
   leftDialog = "",
   customDialogText = "Thank you Hero for using the points of intrest Service!",
   stopConversation = "true",
   options = {   
   }
}
dathomir_poi_waypoints_template:addScreen(dathomir_poi_waypoints_end_quest);
dathomir_poi_waypoints_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "try again!.",
   stopConversation = "true",
   options = {   
   }
}
dathomir_poi_waypoints_template:addScreen(dathomir_poi_waypoints_deny_quest);
dathomir_poi_waypoints_insufficient_funds = ConvoScreen:new {
   id = "insufficient_funds",
   leftDialog = "",
   customDialogText = "try again!.",
   stopConversation = "true",
   options = {   
   }
}
dathomir_poi_waypoints_template:addScreen(dathomir_poi_waypoints_insufficient_funds);
dathomir_poi_waypoints_insufficient_space = ConvoScreen:new {
   id = "insufficient_space",
   leftDialog = "",
   customDialogText = "Sorry, but you don't have enough space in your inventory to accept the item. Please make some space and try again.",
   stopConversation = "true",
   options = {   
   }
}
dathomir_poi_waypoints_template:addScreen(dathomir_poi_waypoints_insufficient_space);
dathomir_poi_waypoints_insufficient_item = ConvoScreen:new {
   id = "insufficient_item",
   leftDialog = "",
   customDialogText = "try again!.",
   stopConversation = "true",
   options = {   
   }
}
dathomir_poi_waypoints_template:addScreen(dathomir_poi_waypoints_insufficient_item);
addConversationTemplate("dathomir_poi_waypoints_template", dathomir_poi_waypoints_template);

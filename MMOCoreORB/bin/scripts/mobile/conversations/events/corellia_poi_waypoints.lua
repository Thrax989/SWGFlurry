
corellia_poi_waypoints_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "corellia_poi_waypoints_convo_handler",
   screens = {}
}


corellia_poi_waypoints_items_screen = ConvoScreen:new {
   id = "items_screen",
   leftDialog = "",
   customDialogText = "Please select a POI to visit.",
   stopConversation = "false",
   options = {
      {"Badge:Agrilat Swap", "1"},
      {"Badge:Bela Vistal Fountain", "2"},
      {"Badge:Rebel Hideout", "3"},
      {"Badge:Rogue Corsec Base", "4"},
      {"Badge:Tyrena Theater", "5"},
      }
}
corellia_poi_waypoints_template:addScreen(corellia_poi_waypoints_items_screen);
corellia_poi_waypoints_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "Welcome to the Points Of Intrest Service.",
   stopConversation = "false",
   options = {
      {"Corellia Points Of Intrest", "items_screen"},
      }
}
corellia_poi_waypoints_template:addScreen(corellia_poi_waypoints_first_screen);
corellia_poi_waypoints_end_quest = ConvoScreen:new {
   id = "end",
   leftDialog = "",
   customDialogText = "Thank you Hero for using the points of intrest Service!",
   stopConversation = "true",
   options = {   
   }
}
corellia_poi_waypoints_template:addScreen(corellia_poi_waypoints_end_quest);
corellia_poi_waypoints_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "try again!.",
   stopConversation = "true",
   options = {   
   }
}
corellia_poi_waypoints_template:addScreen(corellia_poi_waypoints_deny_quest);
corellia_poi_waypoints_insufficient_funds = ConvoScreen:new {
   id = "insufficient_funds",
   leftDialog = "",
   customDialogText = "try again!.",
   stopConversation = "true",
   options = {   
   }
}
corellia_poi_waypoints_template:addScreen(corellia_poi_waypoints_insufficient_funds);
corellia_poi_waypoints_insufficient_space = ConvoScreen:new {
   id = "insufficient_space",
   leftDialog = "",
   customDialogText = "Sorry, but you don't have enough space in your inventory to accept the item. Please make some space and try again.",
   stopConversation = "true",
   options = {   
   }
}
corellia_poi_waypoints_template:addScreen(corellia_poi_waypoints_insufficient_space);
corellia_poi_waypoints_insufficient_item = ConvoScreen:new {
   id = "insufficient_item",
   leftDialog = "",
   customDialogText = "try again!.",
   stopConversation = "true",
   options = {   
   }
}
corellia_poi_waypoints_template:addScreen(corellia_poi_waypoints_insufficient_item);
addConversationTemplate("corellia_poi_waypoints_template", corellia_poi_waypoints_template);

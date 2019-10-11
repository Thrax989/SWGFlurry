
talus_poi_waypoints_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "talus_poi_waypoints_convo_handler",
   screens = {}
}


talus_poi_waypoints_items_screen = ConvoScreen:new {
   id = "items_screen",
   leftDialog = "",
   customDialogText = "Please select a POI to visit.",
   stopConversation = "false",
   options = {
      {"Badge:Aqualish Cave", "1"},
      {"Badge:Creature Village", "2"},
      {"Badge:Imp Base", "3"},
      {"Badge:Imp Vs Reb Battle", "4"},
      }
}
talus_poi_waypoints_template:addScreen(talus_poi_waypoints_items_screen);
talus_poi_waypoints_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "Welcome to the Points Of Intrest Service.",
   stopConversation = "false",
   options = {
      {"talus Points Of Intrest", "items_screen"},
      }
}
talus_poi_waypoints_template:addScreen(talus_poi_waypoints_first_screen);
talus_poi_waypoints_end_quest = ConvoScreen:new {
   id = "end",
   leftDialog = "",
   customDialogText = "Thank you Hero for using the points of intrest Service!",
   stopConversation = "true",
   options = {   
   }
}
talus_poi_waypoints_template:addScreen(talus_poi_waypoints_end_quest);
talus_poi_waypoints_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "try again!.",
   stopConversation = "true",
   options = {   
   }
}
talus_poi_waypoints_template:addScreen(talus_poi_waypoints_deny_quest);
talus_poi_waypoints_insufficient_funds = ConvoScreen:new {
   id = "insufficient_funds",
   leftDialog = "",
   customDialogText = "try again!.",
   stopConversation = "true",
   options = {   
   }
}
talus_poi_waypoints_template:addScreen(talus_poi_waypoints_insufficient_funds);
talus_poi_waypoints_insufficient_space = ConvoScreen:new {
   id = "insufficient_space",
   leftDialog = "",
   customDialogText = "Sorry, but you don't have enough space in your inventory to accept the item. Please make some space and try again.",
   stopConversation = "true",
   options = {   
   }
}
talus_poi_waypoints_template:addScreen(talus_poi_waypoints_insufficient_space);
talus_poi_waypoints_insufficient_item = ConvoScreen:new {
   id = "insufficient_item",
   leftDialog = "",
   customDialogText = "try again!.",
   stopConversation = "true",
   options = {   
   }
}
talus_poi_waypoints_template:addScreen(talus_poi_waypoints_insufficient_item);
addConversationTemplate("talus_poi_waypoints_template", talus_poi_waypoints_template);


lok_poi_waypoints_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "lok_poi_waypoints_convo_handler",
   screens = {}
}


lok_poi_waypoints_items_screen = ConvoScreen:new {
   id = "items_screen",
   leftDialog = "",
   customDialogText = "Please select a POI to visit.",
   stopConversation = "false",
   options = {
      {"Badge:Imp Outpost", "1"},
      {"Badge:Kimogila Skeleton", "2"},
      {"Badge:Volcano", "3"},
      }
}
lok_poi_waypoints_template:addScreen(lok_poi_waypoints_items_screen);
lok_poi_waypoints_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "Welcome to the Points Of Intrest Service.",
   stopConversation = "false",
   options = {
      {"lok Points Of Intrest", "items_screen"},
      }
}
lok_poi_waypoints_template:addScreen(lok_poi_waypoints_first_screen);
lok_poi_waypoints_end_quest = ConvoScreen:new {
   id = "end",
   leftDialog = "",
   customDialogText = "Thank you Hero for using the points of intrest Service!",
   stopConversation = "true",
   options = {   
   }
}
lok_poi_waypoints_template:addScreen(lok_poi_waypoints_end_quest);
lok_poi_waypoints_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "try again!.",
   stopConversation = "true",
   options = {   
   }
}
lok_poi_waypoints_template:addScreen(lok_poi_waypoints_deny_quest);
lok_poi_waypoints_insufficient_funds = ConvoScreen:new {
   id = "insufficient_funds",
   leftDialog = "",
   customDialogText = "try again!.",
   stopConversation = "true",
   options = {   
   }
}
lok_poi_waypoints_template:addScreen(lok_poi_waypoints_insufficient_funds);
lok_poi_waypoints_insufficient_space = ConvoScreen:new {
   id = "insufficient_space",
   leftDialog = "",
   customDialogText = "Sorry, but you don't have enough space in your inventory to accept the item. Please make some space and try again.",
   stopConversation = "true",
   options = {   
   }
}
lok_poi_waypoints_template:addScreen(lok_poi_waypoints_insufficient_space);
lok_poi_waypoints_insufficient_item = ConvoScreen:new {
   id = "insufficient_item",
   leftDialog = "",
   customDialogText = "try again!.",
   stopConversation = "true",
   options = {   
   }
}
lok_poi_waypoints_template:addScreen(lok_poi_waypoints_insufficient_item);
addConversationTemplate("lok_poi_waypoints_template", lok_poi_waypoints_template);

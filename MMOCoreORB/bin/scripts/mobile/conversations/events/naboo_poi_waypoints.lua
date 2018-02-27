
naboo_poi_waypoints_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "naboo_poi_waypoints_convo_handler",
   screens = {}
}


naboo_poi_waypoints_items_screen = ConvoScreen:new {
   id = "items_screen",
   leftDialog = "",
   customDialogText = "Please select a POI to visit.",
   stopConversation = "false",
   options = {
      {"Badge:Amidalas Sandy Beach", "1"},
      {"Badge:Deeja Falls Top", "2"},
      {"Badge:Gungan Sacred Place", "3"},
      {"Badge:Theed Falls Bottom", "4"},
      }
}
naboo_poi_waypoints_template:addScreen(naboo_poi_waypoints_items_screen);
naboo_poi_waypoints_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "Welcome to the Points Of Intrest Service.",
   stopConversation = "false",
   options = {
      {"naboo Points Of Intrest", "items_screen"},
      }
}
naboo_poi_waypoints_template:addScreen(naboo_poi_waypoints_first_screen);
naboo_poi_waypoints_end_quest = ConvoScreen:new {
   id = "end",
   leftDialog = "",
   customDialogText = "Thank you Hero for using the points of intrest Service!",
   stopConversation = "true",
   options = {   
   }
}
naboo_poi_waypoints_template:addScreen(naboo_poi_waypoints_end_quest);
naboo_poi_waypoints_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "try again!.",
   stopConversation = "true",
   options = {   
   }
}
naboo_poi_waypoints_template:addScreen(naboo_poi_waypoints_deny_quest);
naboo_poi_waypoints_insufficient_funds = ConvoScreen:new {
   id = "insufficient_funds",
   leftDialog = "",
   customDialogText = "try again!.",
   stopConversation = "true",
   options = {   
   }
}
naboo_poi_waypoints_template:addScreen(naboo_poi_waypoints_insufficient_funds);
naboo_poi_waypoints_insufficient_space = ConvoScreen:new {
   id = "insufficient_space",
   leftDialog = "",
   customDialogText = "Sorry, but you don't have enough space in your inventory to accept the item. Please make some space and try again.",
   stopConversation = "true",
   options = {   
   }
}
naboo_poi_waypoints_template:addScreen(naboo_poi_waypoints_insufficient_space);
naboo_poi_waypoints_insufficient_item = ConvoScreen:new {
   id = "insufficient_item",
   leftDialog = "",
   customDialogText = "try again!.",
   stopConversation = "true",
   options = {   
   }
}
naboo_poi_waypoints_template:addScreen(naboo_poi_waypoints_insufficient_item);
addConversationTemplate("naboo_poi_waypoints_template", naboo_poi_waypoints_template);

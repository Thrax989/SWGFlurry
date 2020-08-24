
dantooine_poi_waypoints_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "dantooine_poi_waypoints_convo_handler",
   screens = {}
}


dantooine_poi_waypoints_items_screen = ConvoScreen:new {
   id = "items_screen",
   leftDialog = "",
   customDialogText = "Please select a POI to visit.",
   stopConversation = "false",
   options = {
      {"Badge:Dantari Village 1", "1"},
      {"Badge:Dantari Village 2", "2"},
      {"Badge:Jedi Temple", "3"},
      {"Badge:Rebel Base", "4"},
      }
}
dantooine_poi_waypoints_template:addScreen(dantooine_poi_waypoints_items_screen);
dantooine_poi_waypoints_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "Welcome to the Points Of Intrest Service.",
   stopConversation = "false",
   options = {
      {"dantooine Points Of Intrest", "items_screen"},
      }
}
dantooine_poi_waypoints_template:addScreen(dantooine_poi_waypoints_first_screen);
dantooine_poi_waypoints_end_quest = ConvoScreen:new {
   id = "end",
   leftDialog = "",
   customDialogText = "Thank you Hero for using the points of intrest Service!",
   stopConversation = "true",
   options = {   
   }
}
dantooine_poi_waypoints_template:addScreen(dantooine_poi_waypoints_end_quest);
dantooine_poi_waypoints_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "try again!.",
   stopConversation = "true",
   options = {   
   }
}
dantooine_poi_waypoints_template:addScreen(dantooine_poi_waypoints_deny_quest);
dantooine_poi_waypoints_insufficient_funds = ConvoScreen:new {
   id = "insufficient_funds",
   leftDialog = "",
   customDialogText = "try again!.",
   stopConversation = "true",
   options = {   
   }
}
dantooine_poi_waypoints_template:addScreen(dantooine_poi_waypoints_insufficient_funds);
dantooine_poi_waypoints_insufficient_space = ConvoScreen:new {
   id = "insufficient_space",
   leftDialog = "",
   customDialogText = "Sorry, but you don't have enough space in your inventory to accept the item. Please make some space and try again.",
   stopConversation = "true",
   options = {   
   }
}
dantooine_poi_waypoints_template:addScreen(dantooine_poi_waypoints_insufficient_space);
dantooine_poi_waypoints_insufficient_item = ConvoScreen:new {
   id = "insufficient_item",
   leftDialog = "",
   customDialogText = "try again!.",
   stopConversation = "true",
   options = {   
   }
}
dantooine_poi_waypoints_template:addScreen(dantooine_poi_waypoints_insufficient_item);
addConversationTemplate("dantooine_poi_waypoints_template", dantooine_poi_waypoints_template);


tatooine_poi_waypoints_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "tatooine_poi_waypoints_convo_handler",
   screens = {}
}


tatooine_poi_waypoints_items_screen = ConvoScreen:new {
   id = "items_screen",
   leftDialog = "",
   customDialogText = "Please select a POI to visit.",
   stopConversation = "false",
   options = {
      {"Badge:Bens Hut", "1"},
      {"Badge:Escape Pod", "2"},
      {"Badge:Krayt Graveyard", "3"},
      {"Badge:Krayt Skeleton", "4"},
      {"Badge:Lars Homestead", "5"},
      {"Badge:Sarlacc Pit", "6"},
      {"Badge:Tusken Pool", "7"},
      }
}
tatooine_poi_waypoints_template:addScreen(tatooine_poi_waypoints_items_screen);
tatooine_poi_waypoints_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "Welcome to the Points Of Intrest Service.",
   stopConversation = "false",
   options = {
      {"tatooine Points Of Intrest", "items_screen"},
      }
}
tatooine_poi_waypoints_template:addScreen(tatooine_poi_waypoints_first_screen);
tatooine_poi_waypoints_end_quest = ConvoScreen:new {
   id = "end",
   leftDialog = "",
   customDialogText = "Thank you Hero for using the points of intrest Service!",
   stopConversation = "true",
   options = {   
   }
}
tatooine_poi_waypoints_template:addScreen(tatooine_poi_waypoints_end_quest);
tatooine_poi_waypoints_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "try again!.",
   stopConversation = "true",
   options = {   
   }
}
tatooine_poi_waypoints_template:addScreen(tatooine_poi_waypoints_deny_quest);
tatooine_poi_waypoints_insufficient_funds = ConvoScreen:new {
   id = "insufficient_funds",
   leftDialog = "",
   customDialogText = "try again!.",
   stopConversation = "true",
   options = {   
   }
}
tatooine_poi_waypoints_template:addScreen(tatooine_poi_waypoints_insufficient_funds);
tatooine_poi_waypoints_insufficient_space = ConvoScreen:new {
   id = "insufficient_space",
   leftDialog = "",
   customDialogText = "Sorry, but you don't have enough space in your inventory to accept the item. Please make some space and try again.",
   stopConversation = "true",
   options = {   
   }
}
tatooine_poi_waypoints_template:addScreen(tatooine_poi_waypoints_insufficient_space);
tatooine_poi_waypoints_insufficient_item = ConvoScreen:new {
   id = "insufficient_item",
   leftDialog = "",
   customDialogText = "try again!.",
   stopConversation = "true",
   options = {   
   }
}
tatooine_poi_waypoints_template:addScreen(tatooine_poi_waypoints_insufficient_item);
addConversationTemplate("tatooine_poi_waypoints_template", tatooine_poi_waypoints_template);

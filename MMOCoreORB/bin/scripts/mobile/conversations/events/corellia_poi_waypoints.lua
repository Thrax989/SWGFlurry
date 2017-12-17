
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
      {"Test 1", "1"},
      {"Test 2", "2"},
      {"Test 3", "3"},
      {"Test 4", "4"},
      {"Test 5", "5"},      
      {"Test 6", "6"},
      {"Test 7", "7"},
      {"Test 8", "8"},
      {"Test 9", "9"}, 
      {"Test 10", "10"}, 
      {"Test 11", "11"},  
      {"Test 12", "12"},
      {"Test 13", "13"},
      {"Test 14", "14"},
      {"Test 15", "15"},
      {"Test 16", "16"},      
      {"Test 17", "17"},
      {"Test 18", "18"},
      {"Test 19", "19"},
      {"Test 20", "20"},
      {"Test 21", "21"}, 
      {"Test 22", "22"},  
      {"Test 23", "23"}, 
      {"Test 24", "24"},
      }
}
corellia_poi_waypoints_template:addScreen(corellia_poi_waypoints_items_screen);
corellia_poi_waypoints_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "Welcome to Points Of Intreset Service.",
   stopConversation = "false",
   options = {
      {"Corellia Points Of Intrest", "items"},
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

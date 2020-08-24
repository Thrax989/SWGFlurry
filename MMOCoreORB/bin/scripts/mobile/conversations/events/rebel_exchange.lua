
rebel_exchange_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "rebel_exchange_convo_handler",
   screens = {}
}


rebel_exchange_items_screen = ConvoScreen:new {
   id = "items_screen",
   leftDialog = "",
   customDialogText = "Please Select From The Following List Of Items On The Right Hand Side. Some Items May Require Multiple Rebel Tokens To Echange.",
   stopConversation = "false",
   options = {
      {"Item 1", "1"},
      {"Item 2", "2"},
      {"Item 3", "3"},
      {"Item 4", "4"},
      {"Item 5", "5"},      
      {"Item 6", "6"},
      {"Item 7", "7"},
      {"Item 8", "8"},
      {"Item 9", "9"},      
      {"Back", "first_screen"},
      {"No thank you.", "deny_quest"},
      }
}
rebel_exchange_template:addScreen(rebel_exchange_items_screen);




rebel_exchange_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "Welcome to the Rebel Shop Exchange.",
   stopConversation = "false",
   options = {
      {"Items", "items"},
      {"No thank you.", "deny_quest"},
      }
}
rebel_exchange_template:addScreen(rebel_exchange_first_screen);


rebel_exchange_end_quest = ConvoScreen:new {
   id = "end",
   leftDialog = "",
   customDialogText = "A good choice, Thank you Hero for using the Rebel Exchange Shop!",
   stopConversation = "true",
   options = {   
   }
}
rebel_exchange_template:addScreen(rebel_exchange_end_quest);


rebel_exchange_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "You probably will never kill a Imperial Anyways.",
   stopConversation = "true",
   options = {   
   }
}
rebel_exchange_template:addScreen(rebel_exchange_deny_quest);


rebel_exchange_insufficient_funds = ConvoScreen:new {
   id = "insufficient_funds",
   leftDialog = "",
   customDialogText = "Sorry, but you do not have enough Rebel Tokens with you to purchase that.",
   stopConversation = "true",
   options = {   
   }
}
rebel_exchange_template:addScreen(rebel_exchange_insufficient_funds);


rebel_exchange_insufficient_space = ConvoScreen:new {
   id = "insufficient_space",
   leftDialog = "",
   customDialogText = "Sorry, but you don't have enough space in your inventory to accept the item. Please make some space and try again.",
   stopConversation = "true",
   options = {   
   }
}
rebel_exchange_template:addScreen(rebel_exchange_insufficient_space);


rebel_exchange_insufficient_item = ConvoScreen:new {
   id = "insufficient_item",
   leftDialog = "",
   customDialogText = "You trying to get yourself killed are you? Come back with the proof that you killed a Imperial.",
   stopConversation = "true",
   options = {   
   }
}
rebel_exchange_template:addScreen(rebel_exchange_insufficient_item);


addConversationTemplate("rebel_exchange_template", rebel_exchange_template);
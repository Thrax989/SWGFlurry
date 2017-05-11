
painting_exchange_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "painting_exchange_convo_handler",
   screens = {}
}


painting_exchange_items_screen = ConvoScreen:new {
   id = "items_screen",
   leftDialog = "",
   customDialogText = "The following items require 25 tokens.",
   stopConversation = "false",
   options = {
      {"painting 1", "1"},
      {"Painting 2", "2"},
      {"Painting 3", "3"},
      {"Painting 4", "4"},
      {"Painting 5", "5"},
      {"Painting 6", "6"},
      {"Painting 7", "7"},
      {"Painting 8", "8"},
      {"Painting 9", "9"},
      {"Painting 10", "10"},
      {"Painting 11", "11"},
      {"Painting 12", "12"},
      {"Painting 13", "13"},
      {"Painting 14", "14"},
      {"Painting 15", "15"},
      {"Painting 16", "16"},
      {"Painting 17", "17"},
      {"Painting 18", "18"},
      {"Painting 19", "19"},
      {"Painting 20", "20"},
      {"Painting 21", "21"},
      {"Painting 22", "22"},
      {"Painting 23", "23"},
      {"Painting 24", "24"},
      {"Painting 25", "25"},
      {"Painting 26", "26"},
      {"Painting 27", "27"},
      {"Painting 28", "28"},
      {"Painting 29", "29"},
      {"Painting 30", "30"},
      {"Painting 31", "31"},
      {"Painting 32", "32"},
      {"Painting 33", "33"},
      {"Painting 34", "34"},
      {"Painting 35", "35"},
      {"Painting 36", "36"},
      {"Painting 37", "37"},
      {"Painting 38", "38"},
      {"Painting 39", "39"},
      {"Back", "first_screen"},
      {"No thank you.", "deny_quest"},
      }
}
painting_exchange_template:addScreen(painting_exchange_items_screen);




painting_exchange_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "Welcome to the Painting Exchange Shop.",
   stopConversation = "false",
   options = {
      {"Items", "items"},
      {"No thank you.", "deny_quest"},
      }
}
painting_exchange_template:addScreen(painting_exchange_first_screen);


painting_exchange_end_quest = ConvoScreen:new {
   id = "end",
   leftDialog = "",
   customDialogText = "A good choice, Thank you Hero for using the painting Exchange Shop!",
   stopConversation = "true",
   options = {   
   }
}
painting_exchange_template:addScreen(painting_exchange_end_quest);


painting_exchange_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "See you next time.",
   stopConversation = "true",
   options = {   
   }
}
painting_exchange_template:addScreen(painting_exchange_deny_quest);


painting_exchange_insufficient_funds = ConvoScreen:new {
   id = "insufficient_funds",
   leftDialog = "",
   customDialogText = "Sorry, but you do not have enough of the required item with you to purchase that.",
   stopConversation = "true",
   options = {   
   }
}
painting_exchange_template:addScreen(painting_exchange_insufficient_funds);


painting_exchange_insufficient_space = ConvoScreen:new {
   id = "insufficient_space",
   leftDialog = "",
   customDialogText = "Sorry, but you don't have enough space in your inventory to accept the item. Please make some space and try again.",
   stopConversation = "true",
   options = {   
   }
}
painting_exchange_template:addScreen(painting_exchange_insufficient_space);


painting_exchange_insufficient_item = ConvoScreen:new {
   id = "insufficient_item",
   leftDialog = "",
   customDialogText = "I am sorry my friend you will need more items in order to obtain the painting.",
   stopConversation = "true",
   options = {   
   }
}
painting_exchange_template:addScreen(painting_exchange_insufficient_item);


addConversationTemplate("painting_exchange_template", painting_exchange_template);

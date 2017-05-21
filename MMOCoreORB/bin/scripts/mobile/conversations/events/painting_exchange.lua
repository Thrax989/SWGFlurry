painting_exchange_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "painting_exchange_convo_handler",
   screens = {}
}

-- 5 SEA Exchange Screen

painting_exchange_five_screen = ConvoScreen:new {
   id = "five_screen",
   leftDialog = "",
   customDialogText = "Welcome here you can Exchange 5 Clothing Attachments or 5 Armor Attachments for paintings.",
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
      {"Back", "first_screen"},
      {"No thank you.", "deny_quest"},
      }
}
painting_exchange_template:addScreen(painting_exchange_five_screen);


-- 10 SEA Exchange Screen

painting_exchange_ten_screen = ConvoScreen:new {
   id = "ten_screen",
   leftDialog = "",
   customDialogText = "Welcome here you can Exchange 10 Clothing Attachments or 10 Armor Attachments for paintings.",
   stopConversation = "false",
   options = {
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
      {"Back", "first_screen"}, 
      {"No thank you.", "deny_quest"},
      }
}
painting_exchange_template:addScreen(painting_exchange_ten_screen);


-- 70 SEA Exchange Screen

painting_exchange_seventy_screen = ConvoScreen:new {
   id = "seventy_screen",
   leftDialog = "",
   customDialogText = "Welcome here you can Exchange 70 Clothing Attachments or 70 Armor Attachments for paintings.",
   stopConversation = "false",
   options = {
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
painting_exchange_template:addScreen(painting_exchange_seventy_screen);

-- CREDIT Exchange Screen

painting_exchange_seventy_screen = ConvoScreen:new {
   id = "credit_screen",
   leftDialog = "",
   customDialogText = "Welcome here you can Exchange Credits for Rare paintings.",
   stopConversation = "false",
   options = {
      {"Painting 40", "40"},
      {"Back", "first_screen"},
      {"No thank you.", "deny_quest"},
      }
}
painting_exchange_template:addScreen(painting_exchange_seventy_screen);


-- Main Screen

painting_exchange_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "Welcome",
   stopConversation = "false",
   options = {
      {"Exchange 5 CA/AA attachments", "five"},
      {"Exchange 10 CA/AA attachments", "ten"},
      {"Exchange 70 CA/AA attachments", "seventy"},
      {"No thank you.", "deny_quest"},
      }
}
painting_exchange_template:addScreen(painting_exchange_first_screen);

-- Purchase Completion

painting_exchange_end_quest = ConvoScreen:new {
   id = "end",
   leftDialog = "",
   customDialogText = "Nicely done, bring me more!",
   stopConversation = "true",
   options = {   
   }
}
painting_exchange_template:addScreen(painting_exchange_end_quest);

-- Deny Option Convo

painting_exchange_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "Well, get outa here kid. Stop wasting my time!",
   stopConversation = "true",
   options = {   
   }
}
painting_exchange_template:addScreen(painting_exchange_deny_quest);

-- Insufficient funds (used for credit purchases. not used for GMF)

painting_exchange_insufficient_funds = ConvoScreen:new {
   id = "insufficient_funds",
   leftDialog = "",
   customDialogText = "Hey, you tryin to pull a fast one on me? Get lost till you have enough attachments!",
   stopConversation = "true",
   options = {   
   }
}
painting_exchange_template:addScreen(painting_exchange_insufficient_funds);

-- Insufficient Space (get more inventory room!)

painting_exchange_insufficient_space = ConvoScreen:new {
   id = "insufficient_space",
   leftDialog = "",
   customDialogText = "Not enough space in your inventory, dunski. Make some space before I change my mind to sell to you!",
   stopConversation = "true",
   options = {   
   }
}
painting_exchange_template:addScreen(painting_exchange_insufficient_space);

-- Insufficent SEA. (need to loot more SEA)

painting_exchange_insufficient_item = ConvoScreen:new {
   id = "insufficient_item",
   leftDialog = "",
   customDialogText = "Hey, you tryin to pull a fast one on me? Get lost till you have enough attachments!",
   stopConversation = "true",
   options = {   
   }
}
painting_exchange_template:addScreen(painting_exchange_insufficient_item);

-- Finalize template

addConversationTemplate("painting_exchange_template", painting_exchange_template);

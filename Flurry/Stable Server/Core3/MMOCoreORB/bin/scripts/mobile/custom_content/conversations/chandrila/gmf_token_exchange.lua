-- Header

gmf_token_exchange_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "gmf_token_exchange_convo_handler",
   screens = {}
}

-- 5 Token Exchange Screen

gmf_token_exchange_five_screen = ConvoScreen:new {
   id = "five_screen",
   leftDialog = "",
   customDialogText = "For 5 tokens you can get one of these decorations! Remember to have one extra spot in your inventory to make room for whatever item you choose",
   stopConversation = "false",
   options = {
      {"A Spider Web Style 1", "13"},
      {"A Spider Web Style 2", "14"},
      {"A Spider Web Style 3", "15"},
      {"Bats in Jelly", "16"},
      {"Spiders in Jelly", "17"},
      {"Back", "first_screen"},
      {"No thank you.", "deny_quest"},
      }
}
gmf_token_exchange_template:addScreen(gmf_token_exchange_five_screen);

-- 10 Token Exchange Screen

gmf_token_exchange_ten_screen = ConvoScreen:new {
   id = "ten_screen",
   leftDialog = "",
   customDialogText = "For 10 tokens you can get one of these decorations! Remember to have one extra spot in your inventory to make room for whatever item you choose",
   stopConversation = "false",
   options = {
      {"A Krayt Skeleton Decoration", "7"},
      {"Sith o' Lantern Style 1", "8"},
      {"Sith o' Lantern Style 2", "9"},
      {"Sith o' Lantern Style 3", "10"},
      {"Sith o' Lantern Style 4", "11"},
      {"Sith o' Lantern Style 5", "12"},
      {"Next Page", "ten2_screen"},
      {"Back", "first_screen"}, 
      {"No thank you.", "deny_quest"},
      }
}
gmf_token_exchange_template:addScreen(gmf_token_exchange_ten_screen);

-- 10 Token Exchange Screen 2

gmf_token_exchange_ten2_screen = ConvoScreen:new {
   id = "ten2_screen",
   leftDialog = "",
   customDialogText = "For 10 tokens you can get one of these decorations! Remember to have one extra spot in your inventory to make room for whatever item you choose",
   stopConversation = "false",
   options = {
      {"Skull Candle Style 1", "18"},
      {"Skull Candle Style 2", "19"},
    --  {"Kash Dead Forest Scarecrow Style 1", "20"},
    --  {"Kash Dead Forest Scarecrow Style 2", "21"},
    --  {"Kash Dead Forest Scarecrow Style 3", "22"},
      {"Burning Man Prop (Small)", "23"},
      {"Scarecrow Prop Style 1", "24"},
      {"Scarecrow Prop Style 2", "25"},
      {"Previous Page", "ten_screen"},
      {"Back", "first_screen"}, 
      {"No thank you.", "deny_quest"},
      }
}
gmf_token_exchange_template:addScreen(gmf_token_exchange_ten2_screen);

-- 50 Token Exchange Screen

gmf_token_exchange_fifty_screen = ConvoScreen:new {
   id = "fifty_screen",
   leftDialog = "",
   customDialogText = "For 50 tokens you can get one of these rare items! Remember to have one extra spot in your inventory to make room for whatever item you choose",
   stopConversation = "false",
   options = {
      {"Portrait of Z'ozpheratu", "1"},
      {"Decorative House Sign Style 1", "2"},
      --{"Decorative Shop Sign Style 1", "3"},
      {"Huttlet Backpack", "4"},
      {"Bat Wings Costume", "5"},
      {"Z'ozpheratu's Jacket", "6"},
      {"Back", "first_screen"},
      {"No thank you.", "deny_quest"},
      }
}
gmf_token_exchange_template:addScreen(gmf_token_exchange_fifty_screen);

-- Main Screen

gmf_token_exchange_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "Welcome and happy Galactic Moon Festival! I have many items you can earn by trading in tokens. What are you interested in?",
   stopConversation = "false",
   options = {
      {"5 Tokens", "five"},
      {"10 Tokens", "ten"},
      {"50 Tokens", "fifty"},
      {"No thank you.", "deny_quest"},
      }
}
gmf_token_exchange_template:addScreen(gmf_token_exchange_first_screen);

-- Purchase Completion

gmf_token_exchange_end_quest = ConvoScreen:new {
   id = "end",
   leftDialog = "",
   customDialogText = "A good choice !",
   stopConversation = "true",
   options = {   
   }
}
gmf_token_exchange_template:addScreen(gmf_token_exchange_end_quest);

-- Deny Option Convo

gmf_token_exchange_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "Well, have a nice day and happy Galactic Moon Festival!",
   stopConversation = "true",
   options = {   
   }
}
gmf_token_exchange_template:addScreen(gmf_token_exchange_deny_quest);

-- Insufficient funds (used for credit purchases. not used for GMF)

gmf_token_exchange_insufficient_funds = ConvoScreen:new {
   id = "insufficient_funds",
   leftDialog = "",
   customDialogText = "Sorry, but you don't have enough credits with you to purchase that. Head on over to the bank. I'll be here when ya get back!",
   stopConversation = "true",
   options = {   
   }
}
gmf_token_exchange_template:addScreen(gmf_token_exchange_insufficient_funds);

-- Insufficient Space (get more inventory room!)

gmf_token_exchange_insufficient_space = ConvoScreen:new {
   id = "insufficient_space",
   leftDialog = "",
   customDialogText = "Sorry, but you don't have enough space in your inventory to accept the item. Please make some space and try again.",
   stopConversation = "true",
   options = {   
   }
}
gmf_token_exchange_template:addScreen(gmf_token_exchange_insufficient_space);

-- Insufficent Tokens. (need to loot more tokens)

gmf_token_exchange_insufficient_item = ConvoScreen:new {
   id = "insufficient_item",
   leftDialog = "",
   customDialogText = "Sorry, but you don't have enough tokens in your inventory to accept the item.",
   stopConversation = "true",
   options = {   
   }
}
gmf_token_exchange_template:addScreen(gmf_token_exchange_insufficient_item);

-- Finalize template

addConversationTemplate("gmf_token_exchange_template", gmf_token_exchange_template);

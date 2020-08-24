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
      {"Warning Hazard Painting", "1"},
      {"Master Kenobi Painting - Gold", "2"},
      {"Festive Gathering Painting", "3"},
      {"Master Kenobi Painting - Silver", "4"},
      {"New Hope Painting", "5"},
      {"Empire Strikes Back Painting", "6"},
      {"Return of the Jedi Painting", "7"},
      {"Galactic Gathering Painting", "8"},
      {"Cataclysm Painting", "9"},
      {"Might Painting", "10"},
      {"Progress Painting", "11"},
      {"Resource Painting", "12"},
      {"Portrait of the Emperor Painting", "13"},
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
      {"Ryatt Trial Painting", "14"},
      {"Mystic Corellia Painting", "15"},
      {"Comlink Painting", "16"},
      {"Bounty Hunter Painting", "17"},
      {"Clone Wars Painting", "18"},
      {"Corellian Landscape Painting", "19"},
      {"Wookie Lifeday Painting", "20"},
      {"Grievous Painting", "21"},
      {"Singing Mtn Clan Tapestry", "22"},
      {"Death Star Painting", "23"},
      {"Phoenix War Painting", "24"},
      {"Star Painting", "25"},
      {"Caution Sign", "26"},
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
      {"SWG 7 Painting", "27"},
      {"Bio Hazard Sign", "28"},
      {"Imperial Propaganda Painting", "29"},
      {"Rebel Propaganda Painting", "30"},
      {"Nightsister Elder Tapestry", "31"},
      {"Axkva Min Tapestry", "32"},
      {"Outcast Painting", "33"},
      {"Dathomir Forrest Tapestry", "34"},
      {"Dathomir Plains Tapestry", "35"},
      {"Dathomir Portal Painting", "36"},
      {"Dathomir Mountain Tapestry", "37"},
      {"Singing Mountain Clan Tapestry", "38"},
      {"Imperial Prison Painting", "39"},  
      {"Back", "first_screen"},
      {"No thank you.", "deny_quest"},
      }
}
painting_exchange_template:addScreen(painting_exchange_seventy_screen);

-- CREDIT Exchange Screen

painting_exchange_credit_screen = ConvoScreen:new {
   id = "credit_screen",
   leftDialog = "",
   customDialogText = "Welcome here you can Exchange Credits for Rare paintings.",
   stopConversation = "false",
   options = {
      {"Exar Kun Backdrop (10,000,000 Credits)", "40"},
      {"Halloween Backdrop (7,500,000 Credits)", "41"},
      {"Gungan Carbonite (5,000,000 Credits)", "42"},
      {"Ugnaught Carbonite (5,000,000 Credits)", "43"},
      {"Geonosian Carbonite (5,000,000 Credits)", "44"},
      {"Back", "first_screen"},
      {"No thank you.", "deny_quest"},
      }
}
painting_exchange_template:addScreen(painting_exchange_credit_screen);


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
      {"Exchange Credits", "credit"},
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

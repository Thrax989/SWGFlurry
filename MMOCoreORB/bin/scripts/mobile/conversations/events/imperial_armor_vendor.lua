
imperial_armor_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "imperial_armor_convo_handler",
   screens = {}
}


imperial_armor_items_screen = ConvoScreen:new {
   id = "items_screen",
   leftDialog = "",
   customDialogText = "Please Select From The Following List Of Items On The Right Hand Side. Some Items May Require Multiple Imperial Tokens To Exchange.",
   stopConversation = "false",
   options = {
      {"Stormtrooper Armor Bicep Left No Trade Schematic - 1 Token", "1"},
      {"Stormtrooper Armor Bicep Right No Trade Schematic - 1 Token", "2"},
      {"Stormtrooper Armor Bracer Left No Trade Schematic- 1 Token", "3"},
      {"Stormtrooper Armor Bracer Right No Trade Schematic - 1 Token", "4"},
      {"Stormtrooper Armor Helmet No Trade Schematic - 3 Tokens", "5"},      
      {"Stormtrooper Armor Chest Plate No Trade Schematic - 3 Tokens", "6"},
      {"Stormtrooper Armor Leg Plates No Trade Schematic - 3 Tokens", "7"},
      {"Stormtrooper Armor Boots No Trade Schematic - 2 Tokens", "8"},
      {"Stormtrooper Armor Gloves No Trade Schematic - 1 Token", "9"},  
      {"Camo Stormtrooper Armor Bicep Left No Trade Schematic - 1 Token", "10"},
      {"Camo Stormtrooper Armor Bicep Right No Trade Schematic - 1 Token", "11"},
      {"Camo Stormtrooper Armor Bracer Left No Trade Schematic- 1 Token", "12"},
      {"Camo Stormtrooper Armor Bracer Right No Trade Schematic - 1 Token", "13"},
      {"Camo Stormtrooper Armor Helmet No Trade Schematic - 3 Tokens", "14"},      
      {"Camo Stormtrooper Armor Chest Plate No Trade Schematic - 3 Tokens", "15"},
      {"Camo Stormtrooper Armor Leg Plates No Trade Schematic - 3 Tokens", "16"},
      {"Camo Stormtrooper Armor Boots No Trade Schematic - 2 Tokens", "17"},
      {"Camo Stormtrooper Armor Gloves No Trade Schematic - 1 Token", "18"},
      {"Imperial Command BARC Speeder Schematic - 25 Tokens", "19"}, 
      {"Gold Tier Loot Crate - 10 Tokens", "20"}, 
      {"Platinum Tier Loot Crate - 25 Tokens", "21"},         
      {"Back", "first_screen"},
      {"No thank you.", "deny_quest"},
      }
}
imperial_armor_template:addScreen(imperial_armor_items_screen);




imperial_armor_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "Welcome to the Imperial Shop Exchange.",
   stopConversation = "false",
   options = {
      {"Items", "items"},
      {"No thank you.", "deny_quest"},
      }
}
imperial_armor_template:addScreen(imperial_armor_first_screen);


imperial_armor_end_quest = ConvoScreen:new {
   id = "end",
   leftDialog = "",
   customDialogText = "A good choice, Thank you Hero for using the Imperial Requistion Service!",
   stopConversation = "true",
   options = {   
   }
}
imperial_armor_template:addScreen(imperial_armor_end_quest);


imperial_armor_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "You probably will never kill a Rebel Anyways.",
   stopConversation = "true",
   options = {   
   }
}
imperial_armor_template:addScreen(imperial_armor_deny_quest);


imperial_armor_insufficient_funds = ConvoScreen:new {
   id = "insufficient_funds",
   leftDialog = "",
   customDialogText = "Sorry, but you do not have enough Imperial Tokens with you to purchase that.",
   stopConversation = "true",
   options = {   
   }
}
imperial_armor_template:addScreen(imperial_armor_insufficient_funds);


imperial_armor_insufficient_space = ConvoScreen:new {
   id = "insufficient_space",
   leftDialog = "",
   customDialogText = "Sorry, but you don't have enough space in your inventory to accept the item. Please make some space and try again.",
   stopConversation = "true",
   options = {   
   }
}
imperial_armor_template:addScreen(imperial_armor_insufficient_space);


imperial_armor_insufficient_item = ConvoScreen:new {
   id = "insufficient_item",
   leftDialog = "",
   customDialogText = "You trying to get yourself killed are you? Come back with the proof that you killed a Rebel.",
   stopConversation = "true",
   options = {   
   }
}
imperial_armor_template:addScreen(imperial_armor_insufficient_item);


addConversationTemplate("imperial_armor_template", imperial_armor_template);
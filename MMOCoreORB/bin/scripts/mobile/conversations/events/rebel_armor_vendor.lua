
rebel_armor_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "rebel_armor_convo_handler",
   screens = {}
}


rebel_armor_items_screen = ConvoScreen:new {
   id = "items_screen",
   leftDialog = "",
   customDialogText = "Please Select From The Following List Of Items On The Right Hand Side. Some Items May Require Multiple Rebel Tokens To Exchange.",
   stopConversation = "false",
   options = {
      {"Rebel Assault Armor Bicep Left No Trade Schematic - 1 Token", "1"},
      {"Rebel Assault Armor Bicep Right No Trade Schematic - 1 Token", "2"},
      {"Rebel Assault Armor Bracer Left No Trade Schematic- 1 Token", "3"},
      {"Rebel Assault Armor Bracer Right No Trade Schematic - 1 Token", "4"},
      {"Rebel Assault Armor Helmet No Trade Schematic - 3 Tokens", "5"},      
      {"Rebel Assault Armor Chest Plate No Trade Schematic - 3 Tokens", "6"},
      {"Rebel Assault Armor Leg Plates No Trade Schematic - 3 Tokens", "7"},
      {"Rebel Assault Armor Boots No Trade Schematic - 2 Tokens", "8"},
      {"Rebel Assault Armor Gloves No Trade Schematic - 1 Token", "9"},  
      {"Camo Rebel Assault Armor Bicep Left No Trade Schematic - 1 Token", "10"},
      {"Camo Rebel Assault Armor Bicep Right No Trade Schematic - 1 Token", "11"},
      {"Camo Rebel Assault Armor Bracer Left No Trade Schematic- 1 Token", "12"},
      {"Camo Rebel Assault Armor Bracer Right No Trade Schematic - 1 Token", "13"},
      {"Camo Rebel Assault Armor Helmet No Trade Schematic - 3 Tokens", "14"},      
      {"Camo Rebel Assault Armor Chest Plate No Trade Schematic - 3 Tokens", "15"},
      {"Camo Rebel Assault Armor Leg Plates No Trade Schematic - 3 Tokens", "16"},
      {"Camo Rebel Assault Armor Boots No Trade Schematic - 2 Tokens", "17"},
      {"Camo Rebel Assault Armor Gloves No Trade Schematic - 1 Token", "18"},
      {"Rebel Command BARC Speeder Schematic - 25 Tokens", "19"},  
      {"Gold Tier Loot Crate - 10 Tokens", "20"}, 
      {"Platinum Tier Loot Crate - 25 Tokens", "21"},         
      {"Back", "first_screen"},
      {"No thank you.", "deny_quest"},
      }
}
rebel_armor_template:addScreen(rebel_armor_items_screen);




rebel_armor_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "Welcome to the Rebel Requisition Service.",
   stopConversation = "false",
   options = {
      {"Items", "items"},
      {"No thank you.", "deny_quest"},
      }
}
rebel_armor_template:addScreen(rebel_armor_first_screen);


rebel_armor_end_quest = ConvoScreen:new {
   id = "end",
   leftDialog = "",
   customDialogText = "A good choice, Thank you Hero for using the Rebel Requistion Service!",
   stopConversation = "true",
   options = {   
   }
}
rebel_armor_template:addScreen(rebel_armor_end_quest);


rebel_armor_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "You probably will never kill a Stormtrooper Anyways.",
   stopConversation = "true",
   options = {   
   }
}
rebel_armor_template:addScreen(rebel_armor_deny_quest);


rebel_armor_insufficient_funds = ConvoScreen:new {
   id = "insufficient_funds",
   leftDialog = "",
   customDialogText = "Sorry, but you do not have enough Rebel Credits with you to purchase that.",
   stopConversation = "true",
   options = {   
   }
}
rebel_armor_template:addScreen(rebel_armor_insufficient_funds);


rebel_armor_insufficient_space = ConvoScreen:new {
   id = "insufficient_space",
   leftDialog = "",
   customDialogText = "Sorry, but you don't have enough space in your inventory to accept the item. Please make some space and try again.",
   stopConversation = "true",
   options = {   
   }
}
rebel_armor_template:addScreen(rebel_armor_insufficient_space);


rebel_armor_insufficient_item = ConvoScreen:new {
   id = "insufficient_item",
   leftDialog = "",
   customDialogText = "You trying to get yourself killed are you? Come back with the proof that you killed a Imp.",
   stopConversation = "true",
   options = {   
   }
}
rebel_armor_template:addScreen(rebel_armor_insufficient_item);


addConversationTemplate("rebel_armor_template", rebel_armor_template);
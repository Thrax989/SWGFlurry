
world_exchange_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "world_exchange_convo_handler",
   screens = {}
}


world_exchange_items_screen = ConvoScreen:new {
   id = "items_screen",
   leftDialog = "",
   customDialogText = "Please Select From The Following List Of Items On The Right Hand Side. Some Items May Require Multiple World Boss Items To Echange.",
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
world_exchange_template:addScreen(world_exchange_items_screen);




world_exchange_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "Welcome to the World Shop Exchange. Here you can Purchase Rare and Exotic Items from me by exchanging a Rare Loot Only Found off a World Boss mostly obtained from Special Events. If you are worthy Enough Too loot these rare exchange items you can bring them here to exchange them for Rare and exotic Items/Goods . Few ever get a chance to use this shop due to only 1 rare boss item dropping from a single world boss, but if you are one of those who Holds a Rare Item from the World boss Consider Yourself Lucky. The Rare Item I am speaking of is a Set of Glowy Bones That is a symbol of you killing the creature or NPC. Select What Items you would like to exchange your bones for on the right hand side Thank You For Your Time.",
   stopConversation = "false",
   options = {
      {"Items", "items"},
      {"No thank you.", "deny_quest"},
      }
}
world_exchange_template:addScreen(world_exchange_first_screen);


world_exchange_end_quest = ConvoScreen:new {
   id = "end",
   leftDialog = "",
   customDialogText = "A good choice, Thank you Hero for using the World Exchange Shop!",
   stopConversation = "true",
   options = {   
   }
}
world_exchange_template:addScreen(world_exchange_end_quest);


world_exchange_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "You probably will never kill a World Boss Anyways.",
   stopConversation = "true",
   options = {   
   }
}
world_exchange_template:addScreen(world_exchange_deny_quest);


world_exchange_insufficient_funds = ConvoScreen:new {
   id = "insufficient_funds",
   leftDialog = "",
   customDialogText = "Sorry, but you don't have enough world boss Items with you to purchase that. Look for a world boss slay them for the rare item to exchange. I'll be here when ya get back!",
   stopConversation = "true",
   options = {   
   }
}
world_exchange_template:addScreen(world_exchange_insufficient_funds);


world_exchange_insufficient_space = ConvoScreen:new {
   id = "insufficient_space",
   leftDialog = "",
   customDialogText = "Sorry, but you don't have enough space in your inventory to accept the item. Please make some space and try again.",
   stopConversation = "true",
   options = {   
   }
}
world_exchange_template:addScreen(world_exchange_insufficient_space);


world_exchange_insufficient_item = ConvoScreen:new {
   id = "insufficient_item",
   leftDialog = "",
   customDialogText = "You trying to get yourself killed are you? Come back with the proof that you killed a World Boss.",
   stopConversation = "true",
   options = {   
   }
}
world_exchange_template:addScreen(world_exchange_insufficient_item);


addConversationTemplate("world_exchange_template", world_exchange_template);


holo_exchange_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "holo_exchange_convo_handler",
   screens = {}
}


holo_exchange_items_screen = ConvoScreen:new {
   id = "items_screen",
   leftDialog = "",
   customDialogText = "The following items require 10 force bread each. Head to the water fall, deep inside the force cave you will find what you are looking for.",
   stopConversation = "false",
   options = {
      {"Light Holocron", "1"},
      {"Dark Holocron", "2"},
      {"Back", "first_screen"},
      {"No thank you.", "deny_quest"},
      }
}
holo_exchange_template:addScreen(holo_exchange_items_screen);




holo_exchange_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "Welcome to the holo Shop Exchange.",
   stopConversation = "false",
   options = {
      {"Items", "items"},
      {"No thank you.", "deny_quest"},
      }
}
holo_exchange_template:addScreen(holo_exchange_first_screen);


holo_exchange_end_quest = ConvoScreen:new {
   id = "end",
   leftDialog = "",
   customDialogText = "A good choice, Thank you Hero for using the holo Exchange Shop!",
   stopConversation = "true",
   options = {   
   }
}
holo_exchange_template:addScreen(holo_exchange_end_quest);


holo_exchange_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "May the force be with you.",
   stopConversation = "true",
   options = {   
   }
}
holo_exchange_template:addScreen(holo_exchange_deny_quest);


holo_exchange_insufficient_funds = ConvoScreen:new {
   id = "insufficient_funds",
   leftDialog = "",
   customDialogText = "Sorry, but you do not have enough of the required item with you to purchase that.",
   stopConversation = "true",
   options = {   
   }
}
holo_exchange_template:addScreen(holo_exchange_insufficient_funds);


holo_exchange_insufficient_space = ConvoScreen:new {
   id = "insufficient_space",
   leftDialog = "",
   customDialogText = "Sorry, but you don't have enough space in your inventory to accept the item. Please make some space and try again.",
   stopConversation = "true",
   options = {   
   }
}
holo_exchange_template:addScreen(holo_exchange_insufficient_space);


holo_exchange_insufficient_item = ConvoScreen:new {
   id = "insufficient_item",
   leftDialog = "",
   customDialogText = "I am sorry my friend you will need more items in order to obtain the holocron.",
   stopConversation = "true",
   options = {   
   }
}
holo_exchange_template:addScreen(holo_exchange_insufficient_item);


addConversationTemplate("holo_exchange_template", holo_exchange_template);
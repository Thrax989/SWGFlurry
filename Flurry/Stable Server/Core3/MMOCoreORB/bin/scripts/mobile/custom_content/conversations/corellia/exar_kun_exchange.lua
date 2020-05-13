-- Header

exar_kun_exchange_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "exar_kun_exchange_convo_handler",
   screens = {}
}

-- 5 Token Exchange Screen

exar_kun_exchange_items_screen = ConvoScreen:new {
   id = "items_screen",
   leftDialog = "",
   customDialogText = "Give me the bones, so I may experiment on them, and I will reward you with any of these trinkets. The Cultist Robe like the one Im wearing, gives you +300 Force Power and +30 Regen Rate just like those Shatter Point and Cloak of Hate. Choose wisely, and if you choose one of my Piles of Bones I am already finished with, I will exchange it for others. Remember to have one extra spot in your inventory to make room for whatever item you choose",
   stopConversation = "false",
   options = {
      {"An Exar Kun Cultist Robe Hood Up Male Gender", "1"},
      {"An Exar Kun Cultist Robe Hood Up Female Gender", "2"},
      {"An Exar Kun Cultist Robe Hood Down Male Gender", "3"},
      {"An Exar Kun Cultist Robe Hood Down Female Gender", "4"},
      {"A Chronicle Master Robe (No Stats).", "5"},          
      {"Back", "first_screen"},
      {"No thank you.", "deny_quest"},
      }
}
exar_kun_exchange_template:addScreen(exar_kun_exchange_items_screen);



-- Main Screen

exar_kun_exchange_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "Theres tales of a Fogotten enemy on the Exar Instance which you can travel to via the telporters over there, a deadly encounter, all who come upon it are usually driven mad from the experience. Find Exar Kun, dispatch him, and bring me back the bones as they fall away from his essence, and I will reward you. Look and see what I have to offer.",
   stopConversation = "false",
   options = {
      {"Items", "items"},
      {"No thank you.", "deny_quest"},
      }
}
exar_kun_exchange_template:addScreen(exar_kun_exchange_first_screen);

-- Purchase Completion

exar_kun_exchange_end_quest = ConvoScreen:new {
   id = "end",
   leftDialog = "",
   customDialogText = "A good choice, but be wary of the power you now have in your possession! It could turn you to the Dark Side Of The Force",
   stopConversation = "true",
   options = {   
   }
}
exar_kun_exchange_template:addScreen(exar_kun_exchange_end_quest);

-- Deny Option Convo

exar_kun_exchange_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "You probably will never find the GOD anyway",
   stopConversation = "true",
   options = {   
   }
}
exar_kun_exchange_template:addScreen(exar_kun_exchange_deny_quest);

-- Insufficient funds (used for credit purchases. not used for GMF)

exar_kun_exchange_insufficient_funds = ConvoScreen:new {
   id = "insufficient_funds",
   leftDialog = "",
   customDialogText = "Sorry, but you don't have enough credits with you to purchase that. Head on over to the bank. I'll be here when ya get back!",
   stopConversation = "true",
   options = {   
   }
}
exar_kun_exchange_template:addScreen(exar_kun_exchange_insufficient_funds);

-- Insufficient Space (get more inventory room!)

exar_kun_exchange_insufficient_space = ConvoScreen:new {
   id = "insufficient_space",
   leftDialog = "",
   customDialogText = "Sorry, but you don't have enough space in your inventory to accept the item. Please make some space and try again.",
   stopConversation = "true",
   options = {   
   }
}
exar_kun_exchange_template:addScreen(exar_kun_exchange_insufficient_space);

-- Insufficent Tokens. (need to loot more tokens)

exar_kun_exchange_insufficient_item = ConvoScreen:new {
   id = "insufficient_item",
   leftDialog = "",
   customDialogText = "You trying to get yourself killed are you? Come back with the proof of the GODS demise.",
   stopConversation = "true",
   options = {   
   }
}
exar_kun_exchange_template:addScreen(exar_kun_exchange_insufficient_item);

-- Finalize template

addConversationTemplate("exar_kun_exchange_template", exar_kun_exchange_template);

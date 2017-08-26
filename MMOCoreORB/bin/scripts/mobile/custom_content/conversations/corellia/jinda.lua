-- Header

jinda_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "jinda_convo_handler",
   screens = {}
}

-- 5 Token Exchange Screen

jinda_items_screen = ConvoScreen:new {
   id = "items_screen",
   leftDialog = "",
   customDialogText = "Give me the bones, so I may experiment on them, and I will reward you with any of these trinkets. The Statues will make great deco for your homes",
   stopConversation = "false",
   options = {
      {"A Count Dooku Statue", "1"},
      {"A Palpatine Statuette", "2"},
      {"A Pod Racer Statue", "3"},
      {"A Princess Leia Statue", "4"},
      {"A JarJar Binks In Carbonite Statue", "5"},          
      {"Back", "first_screen"},
      {"No thank you.", "deny_quest"},
      }
}
jinda_template:addScreen(jinda_items_screen);



-- Main Screen

jinda_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "Please HELP Us Our Cave Has Been Over Taken By Wild Ewoks And Their Queen Banshee, Please Defeat The Pests Down And Bring Me Back The Head Of Her And I'll Give You a REWARD For Your Troubles.You Will Find Us On Endor Jinda Cave",
   stopConversation = "false",
   options = {
      {"Items", "items"},
      {"No thank you.", "deny_quest"},
      }
}
jinda_template:addScreen(jinda_first_screen);

-- Purchase Completion

jinda_end_quest = ConvoScreen:new {
   id = "end",
   leftDialog = "",
   customDialogText = "A good choice, It will make a GREAT addition to your home!!!",
   stopConversation = "true",
   options = {   
   }
}
jinda_template:addScreen(jinda_end_quest);

-- Deny Option Convo

jinda_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "You probably will never find the Banshee anyway",
   stopConversation = "true",
   options = {   
   }
}
jinda_template:addScreen(jinda_deny_quest);

-- Insufficient funds (used for credit purchases. not used for GMF)

jinda_insufficient_funds = ConvoScreen:new {
   id = "insufficient_funds",
   leftDialog = "",
   customDialogText = "Sorry, but you don't have enough credits with you to purchase that. Head on over to the bank. I'll be here when ya get back!",
   stopConversation = "true",
   options = {   
   }
}
jinda_template:addScreen(jinda_insufficient_funds);

-- Insufficient Space (get more inventory room!)

jinda_insufficient_space = ConvoScreen:new {
   id = "insufficient_space",
   leftDialog = "",
   customDialogText = "Sorry, but you don't have enough space in your inventory to accept the item. Please make some space and try again.",
   stopConversation = "true",
   options = {   
   }
}
jinda_template:addScreen(jinda_insufficient_space);

-- Insufficent Tokens. (need to loot more tokens)

jinda_insufficient_item = ConvoScreen:new {
   id = "insufficient_item",
   leftDialog = "",
   customDialogText = "You trying to get yourself killed are you? Come back with the proof of the Banshee's demise.",
   stopConversation = "true",
   options = {   
   }
}
jinda_template:addScreen(jinda_insufficient_item);

-- Finalize template

addConversationTemplate("jinda_template", jinda_template);

-- Header

salvation_gift_store_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "salvation_gift_store_convo_handler",
   screens = {}
}

-- 5 Token Exchange Screen

salvation_gift_store_five_screen = ConvoScreen:new {
   id = "five_screen",
   leftDialog = "",
   customDialogText = "For 5 salvation  Coins you can get one of these decorations! Remember to have one extra spot in your inventory to make room for whatever item you choose",
   stopConversation = "false",
   options = {
      {"A Squid Hologram", "1"},
      {"Imperial Insignia Hologram", "2"},
      {"Rebel Insignia Hologram", "3"},
      {"Star Destroyer Hologram", "4"},
     -- {"Cybernetic_arm Hologram", "5"},
      {"YT-1300 Hologram", "6"},
      {"HK47 Hologram", "7"},
      {"Nebulon Frigate Hologram", "8"},
    --  {"Death Star Hologram", "9"},
     -- Uncomment if you need more than one pages for 10 items 
      --{"Next Page", "ten2_screen"},
      {"Back", "first_screen"}, 
      {"No thank you.", "deny_quest"},
      }
}
salvation_gift_store_template:addScreen(salvation_gift_store_five_screen);

-- 10 Token Exchange Screen

salvation_gift_store_ten_screen = ConvoScreen:new {
   id = "ten_screen",
   leftDialog = "",
   customDialogText = "For 10 salvation  Coins you can get one of these decorations! Remember to have one extra spot in your inventory to make room for whatever item you choose",
   stopConversation = "false",
   options = {
      {"Fedora Hat", "10"},
      {"A Musty Holo", "11"},
      {"Rebel Community Painting", "12"},
      {"Imperial Community Painting", "13"},
      {"Decorative Fish Tank", "14"},
      {"Display Case Style 1", "15"},
      {"Display Case Style 2", "16"},
      {"A Wampa Skin Rug", "17"},
      {"Droid Oil Bath", "18"},
      {"Jabbas Bed", "19"},
      {"Palpatine Hologram", "20"},
      {"Space Battle Hologram", "21"},
      {"HK47 Hologram", "22"},
     -- Uncomment if you need more than one pages for 10 items 
      --{"Next Page", "ten2_screen"},
      {"Back", "first_screen"}, 
      {"No thank you.", "deny_quest"},
      }
}
salvation_gift_store_template:addScreen(salvation_gift_store_ten_screen);

-- 10 Token Exchange Screen 2

salvation_gift_store_ten2_screen = ConvoScreen:new { -- Not used unless you need more than one screen
   id = "ten2_screen",
   leftDialog = "",
   customDialogText = "For 10 salvation  Coins you can get one of these decorations! Remember to have one extra spot in your inventory to make room for whatever item you choose",
   stopConversation = "false",
   options = {

      {"Previous Page", "ten_screen"},
      {"Back", "first_screen"}, 
      {"No thank you.", "deny_quest"},
      }
}
salvation_gift_store_template:addScreen(salvation_gift_store_ten2_screen);

-- 30 Token Exchange Screen

salvation_gift_store_thirty_screen = ConvoScreen:new { -- Start of function
   id = "thirty_screen", -- correlates with ID on other lua
   leftDialog = "",
   customDialogText = "For 30 salvation  Coins you can get one of these decorations! Remember to have one extra spot in your inventory to make room for whatever item you choose", -- Text vendor says
   stopConversation = "false",
   options = { -- Beginning of list
   --   {"Boba Fett Portrait", "23"},
   --   {"Obi Wan Wanted Poster", "24"},
   --   {"IG88 in Combat Poster", "25"},
   --   {"AT-ST Breach Poster", "26"},
   --   {"A Portrait of Yoda", "27"},
   --  {"salvation  Poster", "28"},
  --    {"Portrait of The Emperor", "29"},
   --   {"A Jawa Warlord Poster", "30"},
   --   {"Theed Starport Backdrop", "31"},
   --   {"Theed Plaza Backdrop", "32"},
   --   {"Darklighters Residence Backdrop", "33"},
   --   {"Nashal River Backdrop", "34"},
   --   {"Lok Asteroids Backdrop", "35"},
   --   {"Space Nebula Backdrop", "36"},
   --   {"Theed Halls Backdrop", "37"},
   --   {"ISD Garage Backdrop", "38"},
   --   {"Tatooine Industrial Backdrop", "39"},
      {"Yoda Fountain", "40"},
      {"Indoor Fountain (1)", "41"},
      {"Indoor Fountain (2)", "42"},
      {"Back", "first_screen"},
      {"No thank you.", "deny_quest"},
             } -- End of list
} -- End of function

salvation_gift_store_template:addScreen(salvation_gift_store_thirty_screen);

-- 50 Token Exchange Screen

salvation_gift_store_fifty_screen = ConvoScreen:new {
   id = "fifty_screen",
   leftDialog = "",
   customDialogText = "For 50 salvation  Coins you can get one of these rare items! Remember to have one extra spot in your inventory to make room for whatever item you choose",
   stopConversation = "false",
   options = {
      {"Vader's meditation pod", "43"},
      {"Sith burning temple ", "44"},
      {"Emperor's chair", "45"},
      {"Camp chair", "46"},
      {"Straight bar style 1 (90 degree angle)", "47"},
      {"Straight bar style 2", "48"},
    --  {"Alliance Cape", "49"},
   --   {"Alliance Jedi Cape", "50"},
     -- {"Imperial Cape", "51"},
    --  {"Sith Order Cape", "52"},
    --  {"Darth Revan Cape", "53"},
    --  {"Bounty Hunter Cape", "54"},
    --  {"Lando Calrissian's Cape", "55"},
      {"Back", "first_screen"},
      {"No thank you.", "deny_quest"},
      }
}
salvation_gift_store_template:addScreen(salvation_gift_store_fifty_screen);

-- Main Screen

salvation_gift_store_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "Welcome to the salvation  Gift Store. Here you can buy many items using the salvation  Coins that can be found on various mobs around the galaxy. Have a look and see what you want!!",
   stopConversation = "false",
   options = {
      {"5 salvation  Coins", "five"},
      {"10 salvation  Coins", "ten"},
      {"30 salvation  Coins", "thirty"},
      {"50 salvation  Coins", "fifty"},
      {"No thank you.", "deny_quest"},
      }
}
salvation_gift_store_template:addScreen(salvation_gift_store_first_screen);

-- Purchase Completion

salvation_gift_store_end_quest = ConvoScreen:new {
   id = "end",
   leftDialog = "",
   customDialogText = "A good choice. Enjoy your Gift!",
   stopConversation = "true",
   options = {   
   }
}
salvation_gift_store_template:addScreen(salvation_gift_store_end_quest);

-- Deny Option Convo

salvation_gift_store_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "Well, have a nice day and a try not to get killed!",
   stopConversation = "true",
   options = {   
   }
}
salvation_gift_store_template:addScreen(salvation_gift_store_deny_quest);

-- Insufficient funds (used for credit purchases. not used for salvation  Coins)

salvation_gift_store_insufficient_funds = ConvoScreen:new {
   id = "insufficient_funds",
   leftDialog = "",
   customDialogText = "Sorry, but you don't have enough salvation  Coins with you to purchase that. Keep looking.  I will be here when you get back!",
   stopConversation = "true",
   options = {   
   }
}
salvation_gift_store_template:addScreen(salvation_gift_store_insufficient_funds);

-- Insufficient Space (get more inventory room!)

salvation_gift_store_insufficient_space = ConvoScreen:new {
   id = "insufficient_space",
   leftDialog = "",
   customDialogText = "Sorry, but you don't have enough space in your inventory to accept the item. Please make some space and try again.",
   stopConversation = "true",
   options = {   
   }
}
salvation_gift_store_template:addScreen(salvation_gift_store_insufficient_space);

-- Insufficent salvation  Coins. (need to loot more salvation  Coins)

salvation_gift_store_insufficient_item = ConvoScreen:new {
   id = "insufficient_item",
   leftDialog = "",
   customDialogText = "Sorry, but you don't have enough salvation  Coins in your inventory to accept the item.",
   stopConversation = "true",
   options = {   
   }
}
salvation_gift_store_template:addScreen(salvation_gift_store_insufficient_item);

-- Finalize template

addConversationTemplate("salvation_gift_store_template", salvation_gift_store_template);

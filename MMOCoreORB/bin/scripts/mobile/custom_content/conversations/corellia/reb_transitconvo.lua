reb_transitconvo_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "reb_transit_system_convo_handler",
   screens = {}
}

reb_transit_convo_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "You need a military Transport ? Please select your destination",
   stopConversation = "false",
   options = {
      {"Echo Base", "cEcho"},   
      --{"Tansaari Point", "cTansaari"},
      {"Banshee", "cBanshee"},
      {"Axkva", "cAxkva"},
      {"Working Droid Factory", "cWorking"},
      {"Exar Kun", "cExar"},
      {"Are there more transports ?", "about_quest"},
      {"No thank you.", "deny_quest"}
   }
}
reb_transitconvo_template:addScreen(reb_transit_convo_first_screen);

reb_transit_convo_cTansaari = ConvoScreen:new {
   id = "cTansaari",
   leftDialog = "",
   customDialogText = "Shuttle transports to Tansaari:",
   stopConversation = "false",
      options = {
      {"Tansarri Point             100FP", "sTansaari"},
      {"No thank you.", "deny_quest"}
  }
}
reb_transitconvo_template:addScreen(reb_transit_convo_cTansaari);

reb_transit_convo_cBanshee = ConvoScreen:new {
   id = "cBanshee",
   leftDialog = "",
   customDialogText = "Shuttle transports to Banshee:",
   stopConversation = "false",
      options = {
      {"Banshee 500FP", "sBanshee"},
      {"No thank you.", "deny_quest"}
  }
}
reb_transitconvo_template:addScreen(reb_transit_convo_cBanshee);

reb_transit_convo_cEcho = ConvoScreen:new {
   id = "cEcho",
   leftDialog = "",
   customDialogText = "Shuttle transport to Echo Base:",
   stopConversation = "false",
      options = {
      {"Echo Base 50FP", "sEcho"},
      {"No thank you.", "deny_quest"}
  }
}
reb_transitconvo_template:addScreen(reb_transit_convo_cEcho);

reb_transit_convo_cAxkva = ConvoScreen:new {
   id = "cAxkva",
   leftDialog = "",
   customDialogText = "Shuttle transports to Axkva Min Lair:",
   stopConversation = "false",
      options = {
      {"Axkva Liar 500FP", "sAxkva"},
      {"No thank you.", "deny_quest"}
  }
}
reb_transitconvo_template:addScreen(reb_transit_convo_cAxkva);

reb_transit_convo_cWorking = ConvoScreen:new {
   id = "cWorking",
   leftDialog = "",
   customDialogText = "Shuttle transports to Working Droid Factory:",
   stopConversation = "false",
      options = {
      {"Working Droid Factory   50FP", "sWorking"},
      {"No thank you.", "deny_quest"}
  }
}
reb_transitconvo_template:addScreen(reb_transit_convo_cWorking);

reb_transit_convo_cExar = ConvoScreen:new {
   id = "cExar",
   leftDialog = "",
   customDialogText = "Shuttle transports to Exar Kun:",
   stopConversation = "false",
      options = {
      {"Exar Instance	 50FP", "sExar"},
      {"No thank you.", "deny_quest"}
  }
}
reb_transitconvo_template:addScreen(reb_transit_convo_cExar);

reb_transit_convo_about_quest = ConvoScreen:new {
   id = "about_quest",
   leftDialog = "",
   customDialogText = "More routes may be added in the future.",
   stopConversation = "true",
   options = {   
   }
}
reb_transitconvo_template:addScreen(reb_transit_convo_about_quest);

reb_transit_convo_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "Be vigilant Soldier",
   stopConversation = "true",
   options = {   
   }
}
reb_transitconvo_template:addScreen(reb_transit_convo_deny_quest);

reb_transit_convo_wrong_faction = ConvoScreen:new {
   id = "wrong_faction",
   leftDialog = "",
   customDialogText = "You are not a member of the Alliance",
   stopConversation = "true",
   options = {   
   }
}
reb_transitconvo_template:addScreen(reb_transit_convo_wrong_faction);

reb_transit_convo_notenough_faction = ConvoScreen:new {
   id = "notenough_faction",
   leftDialog = "",
   customDialogText = "You do not have enough Faction Points",
   stopConversation = "true",
   options = {   
   }
}
reb_transitconvo_template:addScreen(reb_transit_convo_notenough_faction);

addConversationTemplate("reb_transitconvo_template", reb_transitconvo_template);

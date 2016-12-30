transitconvo_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "gcw_transit_system_convo_handler",
   screens = {}
}

transit_convo_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "You need a military Transport ?",
   stopConversation = "false",
   options = {
      {"PvP Battleground", "cPvP"},   
      {"Corellia", "cCorellia"},
      {"Dantooine", "cDantooine"},
      {"Dathomir", "cDathomir"},
      {"Naboo", "cNaboo"},
      {"Rori", "cRori"},
      {"Talus", "cTalus"},
      {"Tatooine", "cTatooine"},
      {"Yavin4", "cYavin4"},
      {"Are there more transports ?", "about_quest"},
      {"No thank you.", "deny_quest"}
   }
}
transitconvo_template:addScreen(transit_convo_first_screen);

transit_convo_cCorellia = ConvoScreen:new {
   id = "cCorellia",
   leftDialog = "",
   customDialogText = "Shuttle transports to Corellia:",
   stopConversation = "false",
      options = {
      {"Coronet             100FP", "sCorellia_cnet"},
      {"Imperial Stronghold 100FP", "sCorellia_stronghold"},
      {"No thank you.", "deny_quest"}
  }
}
transitconvo_template:addScreen(transit_convo_cCorellia);

transit_convo_cDantooine = ConvoScreen:new {
   id = "cDantooine",
   leftDialog = "",
   customDialogText = "Shuttle transports to Dantooine:",
   stopConversation = "false",
      options = {
      {"Dantooine Imperial Outpost 50FP", "sDantooine"},
      {"No thank you.", "deny_quest"}
  }
}
transitconvo_template:addScreen(transit_convo_cDantooine);

transit_convo_cPvP = ConvoScreen:new {
   id = "cPvP",
   leftDialog = "",
   customDialogText = "Shuttle transport to the Battleground:",
   stopConversation = "false",
      options = {
      {"PvP Battleground Area 50FP", "sPvP"},
      {"PvP Kaas Planet Area 50FP", "sPvPPlanet"},
      {"No thank you.", "deny_quest"}
  }
}
transitconvo_template:addScreen(transit_convo_cPvP);

transit_convo_cDathomir = ConvoScreen:new {
   id = "cDathomir",
   leftDialog = "",
   customDialogText = "Shuttle transports to Dathomir:",
   stopConversation = "false",
      options = {
      {"Restricted Area 500FP", "sDathomir_restricted"},
      {"No thank you.", "deny_quest"}
  }
}
transitconvo_template:addScreen(transit_convo_cDathomir);

transit_convo_cNaboo = ConvoScreen:new {
   id = "cNaboo",
   leftDialog = "",
   customDialogText = "Shuttle transports to Naboo:",
   stopConversation = "false",
      options = {
      {"Emporers retreat 100FP", "sNaboo_emporer"},
      {"No thank you.", "deny_quest"}
  }
}
transitconvo_template:addScreen(transit_convo_cNaboo);

transit_convo_cRori = ConvoScreen:new {
   id = "cRori",
   leftDialog = "",
   customDialogText = "Shuttle transports to Rori:",
   stopConversation = "false",
      options = {
      {"Imperial Encampment 300FP", "sRori_impencamp"},
      {"No thank you.", "deny_quest"}
  }
}
transitconvo_template:addScreen(transit_convo_cRori);

transit_convo_cTalus = ConvoScreen:new {
   id = "cTalus",
   leftDialog = "",
   customDialogText = "Shuttle transports to Talus:",
   stopConversation = "false",
      options = {
      {"Talus Imperial Outpost   50FP", "sTalus_imp"},
      {"No thank you.", "deny_quest"}
  }
}
transitconvo_template:addScreen(transit_convo_cTalus);

transit_convo_cTatooine = ConvoScreen:new {
   id = "cTatooine",
   leftDialog = "",
   customDialogText = "Shuttle transports to Tatooine:",
   stopConversation = "false",
      options = {
      {"Bestine Outpost		 50FP", "sTatooine_bestine"},
      {"No thank you.", "deny_quest"}
  }
}
transitconvo_template:addScreen(transit_convo_cTatooine);

transit_convo_cYavin4 = ConvoScreen:new {
   id = "cYavin4",
   leftDialog = "",
   customDialogText = "Shuttle transports to Yavin4:",
   stopConversation = "false",
      options = {
      {"Dark Jedi Enclave    500FP", "sYavin4"},
      {"No thank you.", "deny_quest"}
  }
}
transitconvo_template:addScreen(transit_convo_cYavin4);

transit_convo_about_quest = ConvoScreen:new {
   id = "about_quest",
   leftDialog = "",
   customDialogText = "More routes may be added in the future.",
   stopConversation = "true",
   options = {   
   }
}
transitconvo_template:addScreen(transit_convo_about_quest);

transit_convo_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "Be vigilant Soldier",
   stopConversation = "true",
   options = {   
   }
}
transitconvo_template:addScreen(transit_convo_deny_quest);

transit_convo_wrong_faction = ConvoScreen:new {
   id = "wrong_faction",
   leftDialog = "",
   customDialogText = "You are not a member of the Empire",
   stopConversation = "true",
   options = {   
   }
}
transitconvo_template:addScreen(transit_convo_wrong_faction);

transit_convo_notenough_faction = ConvoScreen:new {
   id = "notenough_faction",
   leftDialog = "",
   customDialogText = "You do not have enough Faction Points",
   stopConversation = "true",
   options = {   
   }
}
transitconvo_template:addScreen(transit_convo_notenough_faction);

addConversationTemplate("transitconvo_template", transitconvo_template);

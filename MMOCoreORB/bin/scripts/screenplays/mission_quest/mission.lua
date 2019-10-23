-------------------------------------------------------
--First Quest Line
--Quest Starts in Tattooine /way 
-------------------------------------------------------
local ObjectManager = require("managers.object.object_manager")
-------------------------------------------------------
--Mission States
-------------------------------------------------------
missionScreenplay = ScreenPlay:new {
    numberOfActs = 1,
    questString = "missionquest",
    states = {
        accepted = 2,
        fightingenemy = 4,
        enemydead = 8,
        complete = 16,
    },
    questdata = Object:new {
    activePlayerName = "initial",
    }
}
-------------------------------------------------------
--Spawn Mission Giver
-------------------------------------------------------
registerScreenPlay("missionScreenplay", true)
function missionScreenplay:start()
  local pNpc = spawnMobile("tatooine", "mission_solo", 1, 3.67032, 0.124125, -11.385, 338, 610000320)--/way 3486 -4769 Tatooine First Active Quest
  self:setMoodString(pNpc, "neutral")
  self:spawnMobiles()
end
-------------------------------------------------------
--Spawn Mission Target
-------------------------------------------------------
function missionScreenplay:spawnMobiles(pMobile)
    if (pMobile == nil) then
-------------------------------------------------------
--Mission Target Location
-------------------------------------------------------
		pMobile = spawnMobile("tatooine", "quest_1", 300, -3821.73, 45.5989, 6497.91, 352, 0) 
        	self:setMoodString(pMobile, "npc_accusing")
		createObserver(OBJECTDESTRUCTION, "missionScreenplay", "enemyKilled", pMobile)
        return 0
    end
end
-------------------------------------------------------
--Set Enemy Dead state
-------------------------------------------------------
function missionScreenplay:enemyKilled(pMobile, pPlayer)
    local player = LuaCreatureObject(pPlayer)
    local enemy = LuaCreatureObject(pMobile)
    local accepted = player:getScreenPlayState(missionScreenplay.questString)
------------------------------------------------------------------------------------------------------------------
--Check Players Screen Play Status Deny Access To The Quest's Target If The Player Does Not Have The Quest Active
------------------------------------------------------------------------------------------------------------------
    if ( accepted == 0 ) then
	player:sendSystemMessage("*** You must accept the quest befor killing the target ***")
    else
    	player:setScreenPlayState(missionScreenplay.states.enemydead, "missionquest")
-------------------------------------------------------
--Conditions Of Whether The Mission Is Accepted Or Not
-------------------------------------------------------
    local thisState = player:getScreenPlayState(missionScreenplay.questString)
    if player:hasScreenPlayState(missionScreenplay.states.complete, "missionquest") then
    player:sendSystemMessage("*** You have already completed this mission. Impossible to do it again ***")
    elseif player:hasScreenPlayState(missionScreenplay.states.accepted, "missionquest") then
-------------------------------------------------------
--Mission Target Killed Active Waypoint Removed
-------------------------------------------------------
           player:sendSystemMessage("MISSION COMPLETED")
	   player:playMusicMessage("sound/ui_npe2_quest_completed.snd")
           player:playEffect("clienteffect/level_granted_chronicles.cef", "")
           local pGhost = CreatureObject(pPlayer):getPlayerObject()
           local playerID = CreatureObject(pPlayer):getObjectID()
           local oldWaypointID = tonumber(getQuestStatus(playerID .. ":executionerWaypointID"))
           PlayerObject(pGhost):removeWaypoint(oldWaypointID, true)
    else
-------------------------------------------------------
--Promt To Go Back To Mission Giver (executioner)
-------------------------------------------------------
       player:sendSystemMessage("You've finished the Quest talk with kaesii.")
       end
end
    return 0
end
------------------------------------------------------
--Get Active Player Name
-------------------------------------------------------
function missionScreenplay:getActivePlayerName()
    return self.questdata.activePlayerName
end
function missionScreenplay:setActivePlayerName(playerName)
-------------------------------------------------------
--Changing Playername
-------------------------------------------------------
    self.questdata.activePlayerName = playerName
end
-------------------------------------------------------
--Defender Added Fired
-------------------------------------------------------
function missionScreenplay:DefenderAdded(pMobile, pPlayer)
    local player = LuaCreatureObject(pPlayer)
    local pName = player:getName()
end
-------------------------------------------------------
--Defender Droped Fired
-------------------------------------------------------
function missionScreenplay:DefenderDropped(pMobile, pPlayer)
        local player = LuaCreatureObject(pPlayer)
        local pName = player:getName()
        local enemy = LuaCreatureObject(pMobile)
        if ( enemy ~= nil ) then
-------------------------------------------------------
--Check To See If Enemy Is Dead
-------------------------------------------------------
            local enemyHealth = enemy:getHAM(0)
            local enemyAction = enemy:getHAM(3)
            local enemyMind = enemy:getHAM(6)
            if ( enemyHealth < 0 or enemyAction < 0 or enemyMind < 0 ) then
-------------------------------------------------------
--Enemy Is Dead
--Check To See If The Defender Was On The Quest And Was In A State Of Enemy Combat
-------------------------------------------------------
                local questState = player:getScreenPlayState(missionScreenplay.questString)
                if ( player:hasScreenPlayState(missionScreenplay.states.fightingenemy) ) then
-------------------------------------------------------
--Setting The Quest Status To Enemydead
-------------------------------------------------------
                    player:setScreenPlayState(missionScreenplay.states.enemydead, missionScreenplay.questString)
                end
            else
                if ( player:hasScreenPlayState(missionScreenplay.states.fightingenemy) ) then
-------------------------------------------------------
--Enemy Isn't Dead.  Remove Fightingenemy Playerstate
-------------------------------------------------------
                    player:removeScreenPlayState(missionScreenplay.states.fightingenemy, missionScreenplay.questString)
                end
            end
        end
-------------------------------------------------------
--Defender Dropped fired
-------------------------------------------------------
end
-------------------------------------------------------
--NPC Convo Handler
-------------------------------------------------------
--Quest Conversation Handlers
-------------------------------------------------------
mission_quest_convo_handler = conv_handler:new {}

function mission_quest_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
-------------------------------------------------------
--GetNextConversation Called NPC
-------------------------------------------------------
    local creature = LuaCreatureObject(conversingPlayer)
    local convosession = creature:getConversationSession()
    local lastConversationScreen = nil
-------------------------------------------------------
--GetNextConversation Called NPC
-------------------------------------------------------
    local conversation = LuaConversationTemplate(conversationTemplate)
    local nextConversationScreen
    if ( conversation ~= nil ) then
-------------------------------------------------------
--Checking To See If We Have A Next Screen
-------------------------------------------------------
        if ( convosession ~= nil ) then
             local session = LuaConversationSession(convosession)
             if ( session ~= nil ) then
                 lastConversationScreen = session:getLastConversationScreen()
             end
        end
        if ( lastConversationScreen == nil ) then
-------------------------------------------------------
--Last Conversation Is Null.  Let's Try To Get The First Screen
-------------------------------------------------------
            local creature = LuaCreatureObject(conversingPlayer)
            if creature:hasScreenPlayState(missionScreenplay.states.complete, "missionquest") then
-------------------------------------------------------
--Complete
-------------------------------------------------------
                 nextConversationScreen = conversation:getScreen("completed")
            elseif creature:hasScreenPlayState(missionScreenplay.states.enemydead, "missionquest") then
-------------------------------------------------------
--Full Inventory To Receive The Reward
-------------------------------------------------------
--Collecting Player Data
-------------------------------------------------------
		local pInventory = creature:getSlottedObject("inventory")
            	local inventory = LuaSceneObject(pInventory)
-------------------------------------------------------
--Full Container
-------------------------------------------------------
            if (SceneObject(pInventory):isContainerFullRecursive() == true) then
                 nextConversationScreen = conversation:getScreen("no_space")
                 creature:sendSystemMessage("You do not have enough space in your inventory, Please make room for your quest reward")
                else              
-------------------------------------------------------
--End The Mission And Reward
-------------------------------------------------------
                creature:setScreenPlayState(missionScreenplay.states.complete, "missionquest") --- NEWLY COMPLETED
                creature:playMusicMessage("sound/ui_npe2_quest_credits.snd")
                nextConversationScreen = conversation:getScreen("thank_you")
-------------------------------------------------------
--Reward Message
-------------------------------------------------------
                creature:sendSystemMessage("FINALIZED mission: Quest Complete, You have received 25,000 credits additional rewards will be added to your inventory.")
-------------------------------------------------------
--Reward Credits
-------------------------------------------------------
                creature:addCashCredits(25000, true)
-------------------------------------------------------
--Quest Reward Item First Reward
-------------------------------------------------------
                local pItem = giveItem(pInventory, "object/tangible/tcg/series1/video_game_table.iff", -1)
-------------------------------------------------------
--Set Up Additional Quest Reward Items Second Reward
-------------------------------------------------------
                local pItem = giveItem(pInventory, "object/tangible/tcg/series1/decorative_painting_darth_vader.iff", -1)
                end
-------------------------------------------------------
--Not yet
-------------------------------------------------------
            elseif creature:hasScreenPlayState(missionScreenplay.states.fightingenemy, "missionquest") then
-------------------------------------------------------
--Fighting Enemy State
-------------------------------------------------------
                nextConversationScreen = conversation:getScreen("not_yet")
            elseif creature:hasScreenPlayState(missionScreenplay.states.accepted, "missionquest") then
-------------------------------------------------------
--why are you coming back? You have a mission pending
-------------------------------------------------------
                nextConversationScreen = conversation:getScreen("not_yet")
            else
-------------------------------------------------------
--Start if the quest was not obtained yet
-------------------------------------------------------
                nextConversationScreen = conversation:getScreen("start")
            end
        else
            local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
            local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
-------------------------------------------------------
--OptionLink From The Last Screen Is OptionLink
-------------------------------------------------------
        nextConversationScreen = conversation:getScreen(optionLink)
        end
    end
-------------------------------------------------------
--Returning Screen
-------------------------------------------------------
    return nextConversationScreen
end
-------------------------------------------------------
--Run Screen Handers
-------------------------------------------------------
function mission_quest_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
local pGhost = CreatureObject(conversingPlayer):getPlayerObject()
    local screen = LuaConversationScreen(conversationScreen)
    local screenID = screen:getScreenID()
    local playerID = CreatureObject(conversingPlayer):getObjectID()
    local player = LuaCreatureObject(conversingPlayer)
    if (screenID == "thank_you") then
-------------------------------------------------------
--Completed The Quest
--Settings State For Quest
-------------------------------------------------------
        player:setScreenPlayState( missionScreenplay.states.complete , missionScreenplay.questString)
    elseif (screenID == "accept_quest") then
-------------------------------------------------------
--Remove Player Active Waypoint For executioner Quest Target
-------------------------------------------------------
      local oldWaypointID = tonumber(getQuestStatus(playerID .. ":executionerWaypointID"))
      if (oldWaypointID ~= 0) then
      PlayerObject(pGhost):removeWaypoint(oldWaypointID, true)
      removeQuestStatus(playerID .. ":executionerWaypointID")
      end
-------------------------------------------------------
--Set Player Active Waypoint For executioner Quest Target
-------------------------------------------------------
      local waypointID = PlayerObject(pGhost):addWaypoint("tatooine", "Quest Target", "", -3821.73, 6497.91, WAYPOINT_COLOR_PURPLE, true, true, 0)
      setQuestStatus(playerID .. ":executionerWaypointID", waypointID)
-------------------------------------------------------
--Accepting The Quest 
--Settings State For Quest
-------------------------------------------------------
        player:setScreenPlayState( missionScreenplay.states.accepted , missionScreenplay.questString)
        player:sendSystemMessage("ACCEPTED mission: executioners Revenge")
        player:playMusicMessage("sound/ui_npe2_quest_received.snd")
        player:playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
    	elseif (screenID == "quest_status") then
        conversationScreen = screen:cloneScreen()
        local clonedConversation = LuaConversationScreen(conversationScreen)
        local thisState = player:getScreenPlayState(missionScreenplay.questString)
        if ( thisState ~= 0 ) then
            clonedConversation:setCustomDialogText("You are in the ".. thisState .." part of this mission")
        else
            clonedConversation:setCustomDialogText("You have not yet registered information on this mission")
        end
    elseif (screenID == "quest_reset")  then
-------------------------------------------------------
--Removing State For Quest
-------------------------------------------------------
        conversationScreen = screen:cloneScreen()
        local clonedConversation = LuaConversationScreen(conversationScreen)
        local thisState = player:getScreenPlayState(missionScreenplay.questString)
        if ( thisState ~= 0 ) then
      	clonedConversation:setCustomDialogText("Come back if you change your mind ...")
-------------------------------------------------------
--All Quest Data Removed From Player
-------------------------------------------------------
        player:removeScreenPlayState(missionScreenplay.states.accepted,     missionScreenplay.questString)
        player:removeScreenPlayState(missionScreenplay.states.fightingenemy, missionScreenplay.questString)
        player:removeScreenPlayState(missionScreenplay.states.enemydead,     missionScreenplay.questString)
        player:removeScreenPlayState(missionScreenplay.states.complete,     missionScreenplay.questString)
        player:removeScreenPlayState(missionScreenplay.questString)
-------------------------------------------------------
--Play Music failed mission reset
-------------------------------------------------------
        player:playMusicMessage("sound/music_player_v_player_death.snd")
-------------------------------------------------------
--Remove Active Waypoint If There s One
-------------------------------------------------------
        player:sendSystemMessage("FAILED mission: Executioners Revenge")
        local oldWaypointID = tonumber(getQuestStatus(playerID .. ":executionerWaypointID"))
        PlayerObject(pGhost):removeWaypoint(oldWaypointID, true)
        else
        clonedConversation:setCustomDialogText("You have not started or finished this mission")
        end
---------------------------------------------------------
--Final Message Quest comeplete you cannont repeat quest
---------------------------------------------------------
    elseif (screenID == "completed") then
            conversationScreen = screen:cloneScreen()
            local clonedConversation = LuaConversationScreen(conversationScreen)
            if (clonedConversation ~= nil) then
                self:addQuestOptions(clonedConversation)
                clonedConversation:setCustomDialogText("You have already completed the quest")
            end
    end
    return conversationScreen
end
-------------------------------------------------------
--Reset Quest remove all quest data
-------------------------------------------------------
  function mission_quest_convo_handler:addQuestOptions(convoScreen)
        convoScreen:addOption("STATUS", "quest_status")
        convoScreen:addOption("RESET QUEST", "quest_reset")
    end

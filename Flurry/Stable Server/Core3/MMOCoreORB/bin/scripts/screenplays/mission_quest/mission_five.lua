local ObjectManager = require("managers.object.object_manager")
-------------------------------------------------------
--missionfive States
-------------------------------------------------------
missionfiveScreenplay = ScreenPlay:new {

    numberOfActs = 1,

    questString = "missionfivequest",

    states = {

        accepted = 1,

        fightingenemy = 2,

        enemydead = 4,

        complete = 8,

    },

    questdata = Object:new {

     activePlayerName = "initial",

    }

}
-------------------------------------------------------
--Spawn missionfive Giver
-------------------------------------------------------
registerScreenPlay("missionfiveScreenplay", true)

function missionfiveScreenplay:start()

  local pNpc = spawnMobile("tatooine", "mission_five", 1, 6.28359, -0.478888, -1.93268, 287, 610000320) 

  self:setMoodString(pNpc, "neutral")

  self:spawnMobiles()

end
-------------------------------------------------------
--Spawn missionfive Target
-------------------------------------------------------
function missionfiveScreenplay:spawnMobiles(pMobile)

    if (pMobile == nil) then

        pMobile = spawnMobile("corellia", "meatlump_buffoon",20,-164,28,-4754,88,0)

        self:setMoodString(pMobile, "npc_accusing")

	createObserver(OBJECTDESTRUCTION, "missionfiveScreenplay", "enemyKilled", pMobile)

        return 0

    end

end
-------------------------------------------------------
--Set Enemy Dead state
-------------------------------------------------------
function missionfiveScreenplay:enemyKilled(pMobile, pPlayer)

    local player = LuaCreatureObject(pPlayer)

    local enemy = LuaCreatureObject(pMobile)

    player:setScreenPlayState(missionfiveScreenplay.states.enemydead, "missionfivequest")
-------------------------------------------------------
--Conditions Of Whether The missionfive Is Accepted Or Not
-------------------------------------------------------
    local thisState = player:getScreenPlayState(missionfiveScreenplay.questString)

    if player:hasScreenPlayState(missionfiveScreenplay.states.complete, "missionfivequest") then

    player:sendSystemMessage("*** You have already completed this missionfive. Impossible to do it again ***")

    elseif player:hasScreenPlayState(missionfiveScreenplay.states.accepted, "missionfivequest") then
-------------------------------------------------------
--missionfive Target Killed Active Waypoint Removed
-------------------------------------------------------
           player:sendSystemMessage("COMPLETED missionfive: Test.")
	   player:playMusicMessage("sound/ui_npe2_quest_completed.snd")
           player:playEffect("clienteffect/level_granted_chronicles.cef", "")
           local pGhost = CreatureObject(pPlayer):getPlayerObject()
           local playerID = CreatureObject(pPlayer):getObjectID()
           local oldWaypointID = tonumber(getQuestStatus(playerID .. ":caedusWaypointID"))
           PlayerObject(pGhost):removeWaypoint(oldWaypointID, true)
    else
-------------------------------------------------------
--Promt To Go Back To missionfive Giver
-------------------------------------------------------
       player:sendSystemMessage("You've finished with Darth Caedus! talk with missionfive Solo.")
end
    return 0
end
------------------------------------------------------
--Get Active Player Name
-------------------------------------------------------
function missionfiveScreenplay:getActivePlayerName()

    return self.questdata.activePlayerName

end

function missionfiveScreenplay:setActivePlayerName(playerName)
-------------------------------------------------------
--Changing Playername
-------------------------------------------------------
    self.questdata.activePlayerName = playerName

end
-------------------------------------------------------
--Defender Added Fired
-------------------------------------------------------
function missionfiveScreenplay:DefenderAdded(pMobile, pPlayer)

    local player = LuaCreatureObject(pPlayer)

    local pName = player:getName()

end
-------------------------------------------------------
--Defender Droped Fired
-------------------------------------------------------
function missionfiveScreenplay:DefenderDropped(pMobile, pPlayer)

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
                local questState = player:getScreenPlayState(missionfiveScreenplay.questString)

                if ( player:hasScreenPlayState(missionfiveScreenplay.states.fightingenemy) ) then
-------------------------------------------------------
--Setting The Quest Status To Enemydead
-------------------------------------------------------
                    player:setScreenPlayState(missionfiveScreenplay.states.enemydead, missionfiveScreenplay.questString)

                end

            else

                if ( player:hasScreenPlayState(missionfiveScreenplay.states.fightingenemy) ) then
-------------------------------------------------------
--Enemy Isn't Dead.  Remove Fightingenemy Playerstate
-------------------------------------------------------
                    player:removeScreenPlayState(missionfiveScreenplay.states.fightingenemy, missionfiveScreenplay.questString)
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
missionfive_quest_convo_handler = conv_handler:new {}

function missionfive_quest_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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

            if creature:hasScreenPlayState(missionfiveScreenplay.states.complete, "missionfivequest") then
-------------------------------------------------------
--Complete
-------------------------------------------------------
                 nextConversationScreen = conversation:getScreen("completed")

            elseif creature:hasScreenPlayState(missionfiveScreenplay.states.enemydead, "missionfivequest") then
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

                 creature:sendSystemMessage("You do not have enough space in your inventory")

                else              
-------------------------------------------------------
--End The missionfive And Reward
-------------------------------------------------------
                creature:setScreenPlayState(missionfiveScreenplay.states.complete, "missionfivequest") --- NEWLY COMPLETED

                creature:playMusicMessage("sound/ui_npe2_quest_credits.snd")

                nextConversationScreen = conversation:getScreen("thank_you")
-------------------------------------------------------
--Reward Message
-------------------------------------------------------
                creature:sendSystemMessage("FINALIZED missionfive: Family revenge You have received 25,000 credits and a special tunic of Luminous Jedi.")
-------------------------------------------------------
--Reward Credits
-------------------------------------------------------
                creature:addCashCredits(25000, true)
-------------------------------------------------------
--Reward Item
-------------------------------------------------------
                local pItem = giveItem(pInventory, "robe_jedi_light_hood_down.iff", -1)
                end
-------------------------------------------------------
--Not yet
-------------------------------------------------------
            elseif creature:hasScreenPlayState(missionfiveScreenplay.states.fightingenemy, "missionfivequest") then
-------------------------------------------------------
--Fighting Enemy State
-------------------------------------------------------
                nextConversationScreen = conversation:getScreen("not_yet")

            elseif creature:hasScreenPlayState(missionfiveScreenplay.states.accepted, "missionfivequest") then
-------------------------------------------------------
--why are you coming back? You have a missionfive pending
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

function missionfive_quest_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
local pGhost = CreatureObject(conversingPlayer):getPlayerObject()

    local screen = LuaConversationScreen(conversationScreen)
    local screenID = screen:getScreenID()
    local playerID = CreatureObject(conversingPlayer):getObjectID()
    local player = LuaCreatureObject(conversingPlayer)
-------------------------------------------------------
    if (screenID == "thank_you") then
-------------------------------------------------------
--Completed The Quest
--Settings State For Quest
-------------------------------------------------------
        player:setScreenPlayState( missionfiveScreenplay.states.complete , missionfiveScreenplay.questString)
-------------------------------------------------------
    elseif (screenID == "accept_quest") then
    
      local oldWaypointID = tonumber(getQuestStatus(playerID .. ":caedusWaypointID"))
      if (oldWaypointID ~= 0) then
      PlayerObject(pGhost):removeWaypoint(oldWaypointID, true)
      removeQuestStatus(playerID .. ":caedusWaypointID")
      end
      local waypointID = PlayerObject(pGhost):addWaypoint("corellia", "Target", "", -164, -4754, WAYPOINT_COLOR_PURPLE, true, true, 0)
      setQuestStatus(playerID .. ":caedusWaypointID", waypointID)
-------------------------------------------------------
--Accepting The Quest
--Settings State For Quest
-------------------------------------------------------
      player:setScreenPlayState( missionfiveScreenplay.states.accepted , missionfiveScreenplay.questString)
      player:sendSystemMessage("ACCEPTED missionfive: Family Revenge")
      player:playMusicMessage("sound/ui_npe2_quest_received.snd")
      player:playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
    	elseif (screenID == "quest_status") then

        conversationScreen = screen:cloneScreen()

        local clonedConversation = LuaConversationScreen(conversationScreen)

        local thisState = player:getScreenPlayState(missionfiveScreenplay.questString)

        if ( thisState ~= 0 ) then

            clonedConversation:setCustomDialogText("You are in the ".. thisState .." part of this missionfive")

        else

            clonedConversation:setCustomDialogText("You have not yet registered information on this missionfive")

        end

    elseif (screenID == "quest_reset")  then
-------------------------------------------------------
--Removing State For Quest
-------------------------------------------------------
        conversationScreen = screen:cloneScreen()

        local clonedConversation = LuaConversationScreen(conversationScreen)

        local thisState = player:getScreenPlayState(missionfiveScreenplay.questString)

        if ( thisState ~= 0 ) then

      	clonedConversation:setCustomDialogText("Come back if you change your mind ...")
-------------------------------------------------------
--All Quest Data Removed From Player
-------------------------------------------------------
        player:removeScreenPlayState(missionfiveScreenplay.states.accepted,     missionfiveScreenplay.questString)

        player:removeScreenPlayState(missionfiveScreenplay.states.fightingenemy, missionfiveScreenplay.questString)

        player:removeScreenPlayState(missionfiveScreenplay.states.enemydead,     missionfiveScreenplay.questString)

        player:removeScreenPlayState(missionfiveScreenplay.states.complete,     missionfiveScreenplay.questString)

        player:removeScreenPlayState(missionfiveScreenplay.questString)
-------------------------------------------------------
--Play Music failed missionfive reset
-------------------------------------------------------
        player:playMusicMessage("sound/music_player_v_player_death.snd")
-------------------------------------------------------
--Remove Active Waypoint If There s One
-------------------------------------------------------
        player:sendSystemMessage("FAILED missionfive: Family revenge")
        local oldWaypointID = tonumber(getQuestStatus(playerID .. ":caedusWaypointID"))
        PlayerObject(pGhost):removeWaypoint(oldWaypointID, true)
        else

        clonedConversation:setCustomDialogText("You have not started or finished this missionfive")

        end
---------------------------------------------------------
--Final Message Quest comeplete you cannont repeat quest
---------------------------------------------------------
    elseif (screenID == "completed") then

            conversationScreen = screen:cloneScreen()

            local clonedConversation = LuaConversationScreen(conversationScreen)

            if (clonedConversation ~= nil) then

                self:addQuestOptions(clonedConversation)

                clonedConversation:setCustomDialogText("I feel that you managed to defeat Darth Caedus! You came to my brother")

            end

    end

    return conversationScreen

end
-------------------------------------------------------
--Reset Quest remove all quest data
-------------------------------------------------------
  function missionfive_quest_convo_handler:addQuestOptions(convoScreen)

        convoScreen:addOption("STATUS", "quest_status")

        convoScreen:addOption("RESET QUEST", "quest_reset")

    end

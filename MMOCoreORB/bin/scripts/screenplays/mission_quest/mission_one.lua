local ObjectManager = require("managers.object.object_manager")
-------------------------------------------------------
--missionone States
-------------------------------------------------------
missiononeScreenplay = ScreenPlay:new {

    numberOfActs = 1,

    questString = "missiononequest",

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
--Spawn missionone Giver
-------------------------------------------------------
registerScreenPlay("missiononeScreenplay", true)

function missiononeScreenplay:start()

  local pNpc = spawnMobile("tatooine", "mission_one", 1, 1.95888, -0.478888, 6.36134, 187, 610000320)

  self:setMoodString(pNpc, "neutral")

  self:spawnMobiles()

end
-------------------------------------------------------
--Spawn missionone Target
-------------------------------------------------------
function missiononeScreenplay:spawnMobiles(pMobile)

    if (pMobile == nil) then

        pMobile = spawnMobile("corellia", "meatlump_buffoon",20,-164,28,-4754,88,0)

        self:setMoodString(pMobile, "npc_accusing")

	createObserver(OBJECTDESTRUCTION, "missiononeScreenplay", "enemyKilled", pMobile)

        return 0

    end

end
-------------------------------------------------------
--Set Enemy Dead state
-------------------------------------------------------
function missiononeScreenplay:enemyKilled(pMobile, pPlayer)

    local player = LuaCreatureObject(pPlayer)

    local enemy = LuaCreatureObject(pMobile)

    player:setScreenPlayState(missiononeScreenplay.states.enemydead, "missiononequest")
-------------------------------------------------------
--Conditions Of Whether The missionone Is Accepted Or Not
-------------------------------------------------------
    local thisState = player:getScreenPlayState(missiononeScreenplay.questString)

    if player:hasScreenPlayState(missiononeScreenplay.states.complete, "missiononequest") then

    player:sendSystemMessage("*** You have already completed this missionone. Impossible to do it again ***")

    elseif player:hasScreenPlayState(missiononeScreenplay.states.accepted, "missiononequest") then
-------------------------------------------------------
--missionone Target Killed Active Waypoint Removed
-------------------------------------------------------
           player:sendSystemMessage("COMPLETED missionone: Test.")
	   player:playMusicMessage("sound/ui_npe2_quest_completed.snd")
           player:playEffect("clienteffect/level_granted_chronicles.cef", "")
           local pGhost = CreatureObject(pPlayer):getPlayerObject()
           local playerID = CreatureObject(pPlayer):getObjectID()
           local oldWaypointID = tonumber(getQuestStatus(playerID .. ":caedusWaypointID"))
           PlayerObject(pGhost):removeWaypoint(oldWaypointID, true)
    else
-------------------------------------------------------
--Promt To Go Back To missionone Giver
-------------------------------------------------------
       player:sendSystemMessage("You've finished with Darth Caedus! talk with missionone Solo.")
end
    return 0
end
------------------------------------------------------
--Get Active Player Name
-------------------------------------------------------
function missiononeScreenplay:getActivePlayerName()

    return self.questdata.activePlayerName

end

function missiononeScreenplay:setActivePlayerName(playerName)
-------------------------------------------------------
--Changing Playername
-------------------------------------------------------
    self.questdata.activePlayerName = playerName

end
-------------------------------------------------------
--Defender Added Fired
-------------------------------------------------------
function missiononeScreenplay:DefenderAdded(pMobile, pPlayer)

    local player = LuaCreatureObject(pPlayer)

    local pName = player:getName()

end
-------------------------------------------------------
--Defender Droped Fired
-------------------------------------------------------
function missiononeScreenplay:DefenderDropped(pMobile, pPlayer)

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
                local questState = player:getScreenPlayState(missiononeScreenplay.questString)

                if ( player:hasScreenPlayState(missiononeScreenplay.states.fightingenemy) ) then
-------------------------------------------------------
--Setting The Quest Status To Enemydead
-------------------------------------------------------
                    player:setScreenPlayState(missiononeScreenplay.states.enemydead, missiononeScreenplay.questString)

                end

            else

                if ( player:hasScreenPlayState(missiononeScreenplay.states.fightingenemy) ) then
-------------------------------------------------------
--Enemy Isn't Dead.  Remove Fightingenemy Playerstate
-------------------------------------------------------
                    player:removeScreenPlayState(missiononeScreenplay.states.fightingenemy, missiononeScreenplay.questString)
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
missionone_quest_convo_handler = conv_handler:new {}

function missionone_quest_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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

            if creature:hasScreenPlayState(missiononeScreenplay.states.complete, "missiononequest") then
-------------------------------------------------------
--Complete
-------------------------------------------------------
                 nextConversationScreen = conversation:getScreen("completed")

            elseif creature:hasScreenPlayState(missiononeScreenplay.states.enemydead, "missiononequest") then
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
--End The missionone And Reward
-------------------------------------------------------
                creature:setScreenPlayState(missiononeScreenplay.states.complete, "missiononequest") --- NEWLY COMPLETED

                creature:playMusicMessage("sound/ui_npe2_quest_credits.snd")

                nextConversationScreen = conversation:getScreen("thank_you")
-------------------------------------------------------
--Reward Message
-------------------------------------------------------
                creature:sendSystemMessage("FINALIZED missionone: Family revenge You have received 25,000 credits and a special tunic of Luminous Jedi.")
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
            elseif creature:hasScreenPlayState(missiononeScreenplay.states.fightingenemy, "missiononequest") then
-------------------------------------------------------
--Fighting Enemy State
-------------------------------------------------------
                nextConversationScreen = conversation:getScreen("not_yet")

            elseif creature:hasScreenPlayState(missiononeScreenplay.states.accepted, "missiononequest") then
-------------------------------------------------------
--why are you coming back? You have a missionone pending
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

function missionone_quest_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
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
        player:setScreenPlayState( missiononeScreenplay.states.complete , missiononeScreenplay.questString)
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
      player:setScreenPlayState( missiononeScreenplay.states.accepted , missiononeScreenplay.questString)
      player:sendSystemMessage("ACCEPTED missionone: Family Revenge")
      player:playMusicMessage("sound/ui_npe2_quest_received.snd")
      player:playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
    	elseif (screenID == "quest_status") then

        conversationScreen = screen:cloneScreen()

        local clonedConversation = LuaConversationScreen(conversationScreen)

        local thisState = player:getScreenPlayState(missiononeScreenplay.questString)

        if ( thisState ~= 0 ) then

            clonedConversation:setCustomDialogText("You are in the ".. thisState .." part of this missionone")

        else

            clonedConversation:setCustomDialogText("You have not yet registered information on this missionone")

        end

    elseif (screenID == "quest_reset")  then
-------------------------------------------------------
--Removing State For Quest
-------------------------------------------------------
        conversationScreen = screen:cloneScreen()

        local clonedConversation = LuaConversationScreen(conversationScreen)

        local thisState = player:getScreenPlayState(missiononeScreenplay.questString)

        if ( thisState ~= 0 ) then

      	clonedConversation:setCustomDialogText("Come back if you change your mind ...")
-------------------------------------------------------
--All Quest Data Removed From Player
-------------------------------------------------------
        player:removeScreenPlayState(missiononeScreenplay.states.accepted,     missiononeScreenplay.questString)

        player:removeScreenPlayState(missiononeScreenplay.states.fightingenemy, missiononeScreenplay.questString)

        player:removeScreenPlayState(missiononeScreenplay.states.enemydead,     missiononeScreenplay.questString)

        player:removeScreenPlayState(missiononeScreenplay.states.complete,     missiononeScreenplay.questString)

        player:removeScreenPlayState(missiononeScreenplay.questString)
-------------------------------------------------------
--Play Music failed missionone reset
-------------------------------------------------------
        player:playMusicMessage("sound/music_player_v_player_death.snd")
-------------------------------------------------------
--Remove Active Waypoint If There s One
-------------------------------------------------------
        player:sendSystemMessage("FAILED missionone: Family revenge")
        local oldWaypointID = tonumber(getQuestStatus(playerID .. ":caedusWaypointID"))
        PlayerObject(pGhost):removeWaypoint(oldWaypointID, true)
        else

        clonedConversation:setCustomDialogText("You have not started or finished this missionone")

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
  function missionone_quest_convo_handler:addQuestOptions(convoScreen)

        convoScreen:addOption("STATUS", "quest_status")

        convoScreen:addOption("RESET QUEST", "quest_reset")

    end

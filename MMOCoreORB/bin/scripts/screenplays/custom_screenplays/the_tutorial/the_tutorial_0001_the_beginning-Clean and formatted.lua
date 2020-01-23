theTutorial0001ScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "theTutorial0001ScreenPlay",

	states = {
		1, -- accept_task
		2, -- completed_task
		4, -- completed_quest
	},
}

registerScreenPlay("theTutorial0001ScreenPlay", true)

function theTutorial0001ScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnSceneObjects()
		self:spawnMobiles()

	end
end

function theTutorial0001ScreenPlay:spawnSceneObjects()

	local pActiveAreaOne = spawnActiveArea("tatooine", "object/active_area.iff", 3863, 5, -4856, 40, 0)
	if pActiveAreaOne ~= nil then

		createObserver(ENTEREDAREA, "theTutorial0001ScreenPlay", "notifyEnteredAreaOne", pActiveAreaOne)
	end

	spawnSceneObject("tatooine", "object/static/vehicle/static_yt_1300.iff", 3863, 5, -4856, 0, math.rad(180) )-- planet, template, x, z, y, cellID, yaw
end

function theTutorial0001ScreenPlay:spawnMobiles()

	local pHan = spawnMobile("tatooine", "tutorial_0001_han_solo", 1, -10.5, -0.9, 24.3, 179, 1082883)-- planet, template, x, z, y, yaw, cellID
	self:setMoodString(pHan, "npc_sitting_chair")

	local pChewie = spawnMobile("tatooine", "npe_chewbacca", 1, -8.4, -0.9, 22.9, -103, 1082883)
	self:setMoodString(pChewie, "npc_sitting_chair")
end

function theTutorial0001ScreenPlay:notifyEnteredAreaOne(pActiveAreaOne, pPlayer)

	if (not SceneObject(pPlayer):isPlayerCreature()) then
		return 0
	end

	if (CreatureObject(pPlayer):hasScreenPlayState(1, "tutorial_one")) then

		CreatureObject(pPlayer):sendSystemMessage(" \\#FFFF00\\<Communicator>  \\#FFFFFF\\Ok Kid, looks like she's all in one piece, come on back to the cantina.")
		CreatureObject(pPlayer):playMusicMessage("sound/ui_quest_waypoint_patrol.snd")
		CreatureObject(pPlayer):removeScreenPlayState(1, "tutorial_one")
		CreatureObject(pPlayer):setScreenPlayState(2, "tutorial_one")
		return 0
	end
	return 0
end

tutorial_0001_han_solo_convo_handler = conv_handler:new {}

function tutorial_0001_han_solo_convo_handler:getInitialScreen(pPlayer, pNpc, pConvTemplate)

	local convoTemplate = LuaConversationTemplate(pConvTemplate)

	if (CreatureObject(pPlayer):hasScreenPlayState(1, "tutorial_one")) then
        
        return convoTemplate:getScreen("task_one_active")
    
	elseif (CreatureObject(pPlayer):hasScreenPlayState(2, "tutorial_one")) then

		CreatureObject(pPlayer):addCashCredits(10000, true)
		CreatureObject(pPlayer):playMusicMessage("sound/ui_npe2_quest_credits.snd")
		CreatureObject(pPlayer):sendSystemMessage(" \\#FFFF00\\Quest completed:  \\#FFFFFF\\Checking the Falcon.")
		CreatureObject(pPlayer):removeScreenPlayState(2, "tutorial_one")
		CreatureObject(pPlayer):setScreenPlayState(4, "tutorial_one")
		return convoTemplate:getScreen("task_one_complete")

	elseif (CreatureObject(pPlayer):hasScreenPlayState(4, "tutorial_one")) then
		return convoTemplate:getScreen("quest_complete")

	else	
		return convoTemplate:getScreen("first_screen")
	end
end

function tutorial_0001_han_solo_convo_handler:runScreenHandlers(pConvTemplate, pPlayer, pNpc, selectedOption, pConvScreen)
	local screen = LuaConversationScreen(pConvScreen)
	local screenID = screen:getScreenID()

    if (screenID == "accept_task_one") then
		CreatureObject(pPlayer):setScreenPlayState(1, "tutorial_one")
		CreatureObject(pPlayer):playMusicMessage("sound/ui_npe2_quest_received.snd")
		CreatureObject(pPlayer):sendSystemMessage(" \\#FFFF00\\Quest received:  \\#FFFFFF\\Checking the Falcon.")
    end
    return pConvScreen
end

	gcw_imp_supplyevent = ScreenPlay:new {
    numberOfActs = 1, 
    questString = "gcw_supplyevent_imp_barricade_crimson",
    states = {}, 
}

registerScreenPlay("gcw_imp_supplyevent", true)
myHelper = require("screenplayHelper")
constOfficer = "gcw_imp_riflesupplyofficer"
constOfficerID = "gcw_supplyevent_imp_barricade_crimson:riflesupplyofficer:barricade1:"
constSquadID = "gcw_supplyevent_imp_barricade_crimson:formation:barricade1:"
constWallID = "gcw_supplyevent_imp_barricade_crimson:wall:barricade1:"
constBlockID_1 = "gcw_supplyevent_imp_barricade_crimson:block1:barricade1:"
constBlockID_2= "gcw_supplyevent_imp_barricade_crimson:block2:barricade1:"
constTurretID_1 = "gcw_supplyevent_imp_barricade_crimson:turret1:barricade1:"
constTurretID_2 = "gcw_supplyevent_imp_barricade_crimson:turret2:barricade1:"
constEventStateRifle = "gcw_supplyevent_imp_barricade_crimson:eventstate:rifle:"
constEventStateTurret = "gcw_supplyevent_imp_barricade_crimson:eventstate:turret:"
constEventStateWall = "gcw_supplyevent_imp_barricade_crimson:eventstate:wall:"
constEventStateCmd =  "gcw_supplyevent_imp_barricade_crimson:eventstate:cmd:"

function gcw_imp_supplyevent:start() 
  	local pOfficer = spawnMobile("talus", constOfficer, 600, -2836.2, 9.1, -2432.3, 270, 0)
	createObserver(SCREENPLAYSTATECHANGED, "gcw_imp_supplyevent", "spStateChange", pOfficer)	
	local oOfficer = LuaCreatureObject(pOfficer)
	writeStringData(constOfficerID, oOfficer:getObjectID())	
	writeData("GCW:crimson:aa2fed:supply:cmd",0)
end

function gcw_imp_supplyevent:spawn()
	local pwall1 = spawnSceneObject("talus","object/static/structure/military/military_wall_med_imperial_16_style_01.iff", -2800.0, 7, -2420.0, 0, 0.707, 0, 0.707, 0) 
	owall1 = LuaSceneObject(pwall1)
	writeData(constWallID,owall1:getObjectID())
	myHelper.spawnSquadwithRespawn(constSquadID, 12, 2, -2803, 0, -2425, 90, 4, 2, "talus", "gcw_imp_barricade_trooper", 2)
    local pturret1 = myHelper.spawnImpTurret("talus","object/installation/faction_perk/turret/block_med.iff", -2800.0, 11, -2411, 0, 0.707, 0, 0.707, 0, 6)
	local oturret1 = LuaSceneObject(pturret1)
	writeData(constTurretID_1,oturret1:getObjectID())
	local pturret2 = myHelper.spawnImpTurret("talus","object/installation/faction_perk/turret/block_med.iff", -2800.0, 11, -2429, 0, 0.707, 0, 0.707, 0, 6)
	local oturret2 = LuaSceneObject(pturret2)	
	writeData(constTurretID_2,oturret2:getObjectID())
    local pblock1 = spawnSceneObject("talus","object/static/structure/military/bunker_crate_style_01.iff", -2800.0, 8, -2411.0, 0, 0, 0, 0, 0)
	oblock1 = LuaSceneObject(pblock1)
	writeData(constBlockID_1,oblock1:getObjectID())
	local pblock2 = spawnSceneObject("talus","object/static/structure/military/bunker_crate_style_01.iff", -2800.0, 8, -2429.0, 0, 0, 0, 0, 0)
	oblock2 = LuaSceneObject(pblock2)
	writeData(constBlockID_2,oblock2:getObjectID())
end

function gcw_imp_supplyevent:spStateChange(pMobile, pPlayer)
	local rifleData = readData("GCW:crimson:aa2fed:supply:rifle:count")
	local wallData = readData("GCW:crimson:aa2fed:supply:wall:count")
	local turretData = readData("GCW:crimson:aa2fed:supply:turret:count")
	if (rifleData == 20 and wallData == 15 and turretData == 2) then
		--quest conditions succeded
		gcw_imp_supplyevent:spawn()		
		writeData("GCW:crimson:aa2fed:supply:cmd",1)
		-- set reset, until counterquest is implemented
		createEvent(300000, "gcw_imp_supplyevent", "resetQuest", pMobile)
	end
end

function gcw_imp_supplyevent:resetQuest(pMobile)
	gcw_imp_supplyevent:destroySquad(constSquadID, 12)
	myHelper.destroy(readData(constWallID), false)
	myHelper.destroy(readData(constTurretID_1), false)
	myHelper.destroy(readData(constTurretID_2), false)
	myHelper.destroy(readData(constBlockID_1), false)
	myHelper.destroy(readData(constBlockID_2), false)
	writeData("GCW:crimson:aa2fed:supply:rifle:count",0)
	writeData("GCW:crimson:aa2fed:supply:wall:count",0)
	writeData("GCW:crimson:aa2fed:supply:turret:count",0)
	writeData("GCW:crimson:aa2fed:supply:cmd",0)
end

function gcw_imp_supplyevent:destroySquad(squadid, count)
	for i = 0 , count - 1 , 1 do
		local stringhelper = (squadid..i)
		myHelper.destroy(readStringData(stringhelper..":objectid"), false)
	end
end


gcw_riflesupply_convo_handler = Object:new {
	tstring = "gcw_riflesupply_convo_handler"
 }

myHelper = require("screenplayHelper")
constOfficer = "gcw_imp_riflesupplyofficer"
constOfficerID = "gcw_supplyevent_imp_barricade_crimson:riflesupplyofficer:barricade1:"
constSquadID = "gcw_supplyevent_imp_barricade_crimson:formation:barricade1:"
constWallID = "gcw_supplyevent_imp_barricade_crimson:wall:barricade1:"
constBlockID_1 = "gcw_supplyevent_imp_barricade_crimson:block1:barricade1:"
constBlockID_2= "gcw_supplyevent_imp_barricade_crimson:block2:barricade1:"
constTurretID_1 = "gcw_supplyevent_imp_barricade_crimson:turret1:barricade1:"
constTurretID_2 = "gcw_supplyevent_imp_barricade_crimson:turret2:barricade1:"
constEventStateRifle = "gcw_supplyevent_imp_barricade_crimson:eventstate:rifle:"
constEventStateTurret = "gcw_supplyevent_imp_barricade_crimson:eventstate:turret:"
constEventStateWall = "gcw_supplyevent_imp_barricade_crimson:eventstate:wall:"
constEventStateCmd =  "gcw_supplyevent_imp_barricade_crimson:eventstate:cmd:"

 function gcw_riflesupply_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)

    -- Assign the player to variable creature for use inside this function.
	local creature = LuaCreatureObject(conversingPlayer)
	local pPlayer = LuaPlayerObject(conversingPlayer)
	-- Get the last conversation to determine whetehr or not we're  on the first screen
	local convosession = creature:getConversationSession()
	lastConversation = nil
	local conversation = LuaConversationTemplate(conversationTemplate)
	local nextConversationScreen 
		-- If there is a conversation open, do stuff with it
	if ( conversation ~= nil ) then
		if (readData("GCW:crimson:aa2fed:supply:cmd") == 1) then
			nextConversationScreen = conversation:getScreen("questrunning")
		else
			-- check to see if we have a next screen
			if ( convosession ~= nil ) then
				local session = LuaConversationSession(convosession)
				if ( session ~= nil ) then
					lastConversationScreen = session:getLastConversationScreen()
				end
			end

			-- Last conversation was nil, so get the first screen
			if ( lastConversationScreen == nil ) then
				nextConversationScreen = conversation:getInitialScreen()
			else
	
			-- Start playing the rest of the conversation based on user input
				local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
				-- Set variable to track what option the player picked and get the option picked
				local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
				nextConversationScreen = conversation:getScreen(optionLink)
				     -- Get some information about the player.
				 local credits = creature:getCashCredits()
				 local pInventory = creature:getSlottedObject("inventory")
				 local inventory = LuaSceneObject(pInventory)
				 local containerSize = inventory:getContainerObjectsSize()
				 local rifleCounter = 0
				 local wallCounter = 0
				 local turretCounter = 0
				 local i = 0 
				 local DeleteItems = 0

				 for i = 0, containerSize - 1, 1 do
					 local pInvObj = inventory:getContainerObject(i)
					 local InvObj = LuaSceneObject(pInvObj)
						 -- Get Objectnames from Each Item and check if its the choosen Item. (This is your token for the vendor)
						if (InvObj:getObjectName() == "rifle_cdef")   then
					 		rifleCounter = rifleCounter + 1
					 	end
					 	if (InvObj:getObjectName() == "structural_module")   then
					 		wallCounter = wallCounter + 1
					 	end
					 	if (InvObj:getObjectName() == "turret_tower_sm")   then
					 		turretCounter = turretCounter + 1
					 	end
				 end


					local rifleData = readData("GCW:crimson:aa2fed:supply:rifle:count")
					local wallData = readData("GCW:crimson:aa2fed:supply:wall:count")
					local turretData = readData("GCW:crimson:aa2fed:supply:turret:count")

					if (optionLink == "qOrderSubRifle" and rifleCounter >= 10 and rifleData < 20 )then
						writeData("GCW:crimson:aa2fed:supply:rifle:count", rifleData + 10)
						gcw_riflesupply_convo_handler:deleteItems(conversingPlayer, "rifle_cdef", 10)
						gcw_riflesupply_convo_handler:TriggerScreenplayState(1)
						--open issue with segmentation						
						--pPlayer:addExperience("GCW_supply",1)
					elseif (optionLink == "qOrderSubRifle" and rifleCounter < 10 and rifleData < 20 )then
						nextConversationScreen = conversation:getScreen("notenoughitems")
					elseif (optionLink == "qOrderSubRifle" and rifleData == 20 )then
						nextConversationScreen = conversation:getScreen("targetsarchived")

					elseif (optionLink == "qOrderSubWalls" and wallCounter >= 5 and wallData < 15 )then
						writeData("GCW:crimson:aa2fed:supply:wall:count", wallData + 5)
						gcw_riflesupply_convo_handler:deleteItems(conversingPlayer, "structural_module", 5)
						gcw_riflesupply_convo_handler:TriggerScreenplayState(1)
						--pPlayer:addExperience("GCW_supply",1)
					elseif (optionLink == "qOrderSubWalls" and wallCounter < 5 and wallData < 15 )then
						nextConversationScreen = conversation:getScreen("notenoughitems")
					elseif (optionLink == "qOrderSubWalls" and wallData == 15 )then
						nextConversationScreen = conversation:getScreen("targetsarchived")

					elseif (optionLink == "qOrderSubTurret" and turretCounter >= 1 and turretData < 2 )then
						writeData("GCW:crimson:aa2fed:supply:turret:count", turretData + 1)
						gcw_riflesupply_convo_handler:deleteItems(conversingPlayer, "turret_tower_sm", 1)
						gcw_riflesupply_convo_handler:TriggerScreenplayState(1)
						--pPlayer:addExperience("GCW_supply",1)
					elseif (optionLink == "qOrderSubTurret" and turretCounter < 1 and turretData < 2 )then
						nextConversationScreen = conversation:getScreen("notenoughitems")
					elseif (optionLink == "qOrderSubTurret" and turretData == 2 )then
						nextConversationScreen = conversation:getScreen("targetsarchived")
					end
				end
		end
	end
	return nextConversationScreen
end

function gcw_riflesupply_convo_handler:deleteItems(conversingPlayer, itemName, itemCount)
	local creature = LuaCreatureObject(conversingPlayer)    
    local pInventory = creature:getSlottedObject("inventory")
    local inventory = LuaSceneObject(pInventory)
    local containerSize = inventory:getContainerObjectsSize() 
	local DeleteItems = 0
	for i = containerSize - 1 , 0 , -1 do
        pInvObj = inventory:getContainerObject(i)
        invObj = LuaSceneObject(pInvObj)
     	-- Get Objectnames from Each Item and check if its the choosen Item.
		if (invObj:getObjectName() == itemName and DeleteItems < itemCount ) then
		     	DeleteItems = DeleteItems + 1
		     	invObj:destroyObjectFromWorld()
				invObj:destroyObjectFromDatabase()
      	end
   	end
end

function gcw_riflesupply_convo_handler:TriggerScreenplayState(value)
	local pOfficer = LuaCreatureObject(getCreatureObject(readStringData(constOfficerID)))
	pOfficer:setScreenPlayStateValue(value,constEventStateCmd)
end
	
function gcw_riflesupply_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end



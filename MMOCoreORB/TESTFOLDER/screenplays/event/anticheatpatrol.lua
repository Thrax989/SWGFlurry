antiCheatPatrol_Screenplay = ScreenPlay:new { 
	numberOfActs = 1, 
}
registerScreenPlay("antiCheatPatrol_Screenplay", true)

spHelper = require("screenplayHelper")

local ObjectManager = require("managers.object.object_manager")

function antiCheatPatrol_Screenplay:start() 
	if (isZoneEnabled("corellia") and isZoneEnabled("dathomir") ) then
		writeData("anticheat:isBusy:", 0)
		self:SetControlAreasAndObserver()
		self:spawnMobiles()
		self:spawnObjects()
	end
end


function antiCheatPatrol_Screenplay:spawnObjects()
	spawnSceneObjectAutoZ("dathomir", "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", -6452.0, 0, 1015.0, 0, 0.17, 0, 0.98, 0)
	spawnSceneObjectAutoZ("dathomir", "object/static/structure/military/military_column_strong_imperial_style_01.iff", -6460.0, 0, 1011.0, 0, 0.17, 0, 0.98, 0)
end

function antiCheatPatrol_Screenplay:spawnMobiles()
	local pOfficer = spHelper.spawnMobileAndIdle("corellia", "crimson_stormtrooper", 30,  -158, 28, -4722.70, 90, 0 )
	if ( pOfficer == nil ) then
		printf("Debug:antiCheatPatrol_Screenplay:pOfficer mobile is nil\n")
	end
	local pShuttle = spawnMobile("corellia", "transport_shuttle", 1, -152.8, 28.0, -4723.70, 180, 0)

	ObjectManager.withCreatureObject(pShuttle, function(shuttle)
		writeData("anticheat:shuttleani:objectid", shuttle:getObjectID())
		shuttle:setOptionsBitmask(256)
		shuttle:setPosture(FLYING)
	end)
end

function antiCheatPatrol_Screenplay:SetControlAreasAndObserver()
	local pControlArea1 = spawnSceneObject("corellia", "object/active_area.iff", -133.9, 28.3, -4723.2, 0, 0, 0, 0, 0)
	ObjectManager.withActiveArea(pControlArea1, function(oControlArea1)
		oControlArea1:setRadius(10)
		createObserver(ENTEREDAREA, "antiCheatPatrol_Screenplay", "enterControlArea_event", pControlArea1)	
	end)
	return 0
end

function antiCheatPatrol_Screenplay:timer()
	writeData("anticheat:isBusy:", 0)
	return 0
end

function antiCheatPatrol_Screenplay:enterControlArea_event(pActiveArea, pMovingObject)
	if readData("anticheat:isBusy:") == 0 then	
		writeData("anticheat:isBusy:", 1)	
		createEvent(10000, "antiCheatPatrol_Screenplay", "timer", pActiveArea)	
		ObjectManager.withSceneObject(pMovingObject, function(movingObject)		
			if (movingObject:isPlayerCreature()) then
				ObjectManager.withCreatureObject(pMovingObject, function(player)
					local mailTo = "anticheat"
					local mailSubject = "AntiCheat:"..player:getFirstName()
					local mailBody = ""
					local gotoPrison = false
					local triggerMail = false 
	
					-- check HAM Values
					if (player:getMaxHAM(0) >= 10000 or player:getMaxHAM(3) >= 10000 or player:getMaxHAM(6) >= 7000) then
						mailBody = mailBody .. "Health:" .. player:getMaxHAM(0) .. "\n"  
						mailBody = mailBody .. "Action:" ..  player:getMaxHAM(3) ..  "\n"
						mailBody = mailBody .. "Mind:" .. player:getMaxHAM(6) .. "\n"
						mailSubject = mailSubject .. " WARNING"
                        triggerMail = true
					end
					-- check Items
					local itemFound = spHelper:searchInventoryForObject(pMovingObject, "terminal_character_builder", true,"inventory")	
					itemFound = itemFound + spHelper:searchInventoryForObject(pMovingObject, "terminal_character_builder", true, "back")
					if itemFound > 0 then
						mailBody = mailBody .. "\n"  .. "FOUND BLUEFROGS:" .. itemFound .. "\n"
						gotoPrison = true
                        triggerMail = true
					end	
					
					-- check weapon
					--local pWeapon = player:getSlottedObject("default_weapon")
					--ObjectManager.withSceneObject(pWeapon, function(weapon)
					--	prinf(weapon:getObjectName())
					--end)
	

					if (gotoPrison == true) then
						movingObject:switchZone("dathomir",-6456.3, 112.2, 1030.5, 0)
						gotoPrison = false
						mailSubject = mailSubject .. " !!! PRISON !!!"
						antiCheatPatrol_Screenplay:landferry()
					end
                    if (triggerMail == true) then
    					sendMail("ANTICHEAT", mailTo, mailSubject, mailBody)
                    end
				end)
			end
		end)
	
	end
	return 0
end

function antiCheatPatrol_Screenplay:launchferry(shuttle)
	local pShuttle = getCreatureObject(readData("anticheat:shuttleani:objectid"))
	ObjectManager.withCreatureObject(pShuttle, function(shuttle)
		shuttle:setPosture(FLYING)
	end)
	return 0
end

function antiCheatPatrol_Screenplay:landferry()
	local pShuttle = getCreatureObject(readData("anticheat:shuttleani:objectid"))
	ObjectManager.withCreatureObject(pShuttle, function(shuttle)
		shuttle:setPosture(PRONE)
		createEvent(25000, "antiCheatPatrol_Screenplay", "launchferry", shuttle)
	end)
	return 0
end

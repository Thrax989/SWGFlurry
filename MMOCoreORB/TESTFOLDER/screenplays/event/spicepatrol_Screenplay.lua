spicepatrol_Screenplay = ScreenPlay:new { 
	numberOfActs = 1, 

}
registerScreenPlay("spicepatrol_Screenplay", true)

spHelper = require("screenplayHelper")

local ObjectManager = require("managers.object.object_manager")

function spicepatrol_Screenplay:start() 
	if (isZoneEnabled("corellia")) then
		writeData("spicecnet:isBusy:", 0)
		self:SetControlAreasAndObserver()
		self:spawnMobiles()
	end
end

function spicepatrol_Screenplay:spawnMobiles()

	local pOfficer = spHelper.spawnMobileAndIdle("corellia", "stormtrooper", 30,  -158, 28, -4722.70, 90, 0 )
	if ( pOfficer == nil ) then
		printf("Debug:antiCheatPatrol_Screenplay:pOfficer mobile is nil\n")
	end
end

function spicepatrol_Screenplay:SetControlAreasAndObserver()
	local pControlArea1 = spawnSceneObject("corellia", "object/active_area.iff", -144.9, 28.3, -4722.2, 0, 0, 0, 0, 0)
	ObjectManager.withActiveArea(pControlArea1, function(oControlArea1)
		oControlArea1:setRadius(5)
		createObserver(ENTEREDAREA, "spicepatrol_Screenplay", "enterControlArea_event", pControlArea1)	
	end)
	return 0
end

function spicepatrol_Screenplay:timer()
	writeData("spicecnet:isBusy:", 0)
	return 0
end

function spicepatrol_Screenplay:enterControlArea_event(pActiveArea, pMovingObject)
	if readData("spicecnet:isBusy:") == 0 then	
		writeData("spicecnet:isBusy:", 1)	
		createEvent(10000, "spicepatrol_Screenplay", "timer", pActiveArea)	
		ObjectManager.withSceneObject(pMovingObject, function(movingObject)		
			if (movingObject:isPlayerCreature()) then
				ObjectManager.withCreatureObject(pMovingObject, function(player)
					local char = player:getFirstName()
					local mailTo = char
					local mailSubject = "Imperial Fine Paid:"..player:getFirstName()
					local mailBody = ""
					local spawnStorm = false
					local triggerMail = false 

					-- check Items
					local itemFound = spHelper:searchInventoryForObject(pMovingObject, "muon_gold", true,"inventory")	
					itemFound = itemFound + spHelper:searchInventoryForObject(pMovingObject, "muon_gold", true, "back")
					if itemFound > 0 then
						mailBody = mailBody .. "\n"  .. "You were found in possesion of illegal narcotics, and have been fined 100 credits." .. itemFound .. "\n"
						spawnStorm = true
  			                        triggerMail = true
					end	
                    if (triggerMail == true) then
    					sendMail("Imperial Military Command", mailTo, mailSubject, mailBody)
                    end
		if (spawnStorm == true) then

	local pBoss = spawnMobile("corellia", "stormtrooper", 0, -152.8, 28.0, -4723.70, 90, 0 )
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("spiceboss", oBoss:getObjectID())			
		spatialChat(pBoss, "Citizen, halt. You have been found in possesion of Spice manufactured illegally by a Smuggler. Im going to let you off with a fine this time.")	
		createObserver(OBJECTDESTRUCTION, "spicepatrol_Screenplay", "notifyBossDead", pBoss)
		createEvent(18000, "spicepatrol_Screenplay", "despawnBoss", pBoss)
		createEvent(1000, "spicepatrol_Screenplay", "creditFine", pBoss)
	end)
					end
				end)
			end
		end)
	end
	return 0
end

function spicepatrol_Screenplay:notifyBossDead(pBoss, player)

	local pAdd = spawnMobile("corellia", "novatrooper_squad_leader", 0, -142, 28, -4736, 90, 0 )
	ObjectManager.withCreatureObject(pAdd, function(firstTime)
		writeData("spiceadd", firstTime:getObjectID())
		createEvent(18000, "spicepatrol_Screenplay", "despawnAdd", pAdd)
		firstTime:engageCombat(player)
	end)
	spatialChat(pAdd, "Halt right there citizen, you have murdered an Imperial soldier")

	local pAddTwo = spawnMobile("corellia", "novatrooper_medic", 0, -132, 28, -4722.70, 90, 0 )
	ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
		writeData("spiceadd2", secondTime:getObjectID())
		secondTime:engageCombat(player)
	end)
	spatialChat(pAddTwo, "Stun him")

	local pAddThree = spawnMobile("corellia", "novatrooper", 0, -143, 28, -4708, 90, 0 )
	ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
		writeData("spiceadd3", thirdTime:getObjectID())
		thirdTime:engageCombat(player)
	end)				
	spatialChat(pAddThree, "Stand back, clear the area...this is an Imperial matter")

	local pAddFour = spawnMobile("corellia", "novatrooper", 0, -152.8, 28.0, -4723.70, 90, 0 )
	ObjectManager.withCreatureObject(pAddFour, function(fourthTime)
		writeData("spiceadd4", fourthTime:getObjectID())
		fourthTime:engageCombat(player)
	end)
	spatialChat(pAddThree, "Drop your weapon scum")				
	return 0
end

function spicepatrol_Screenplay:despawnBoss(pBoss, player)
	forcePeace(pBoss)
	spHelper.destroy(readData("spiceboss"),true)
	return 0
end

function spicepatrol_Screenplay:despawnAdd(pAdd, pAddTwo, pAddThree, pAddFour, player)
	forcePeace(pAdd)
	forcePeace(pAddTwo)
	forcePeace(pAddThree)
	forcePeace(pAddFour)
	spHelper.destroy(readData("spiceadd"),true)
	spHelper.destroy(readData("spiceadd2"),true)
	spHelper.destroy(readData("spiceadd3"),true)
	spHelper.destroy(readData("spiceadd4"),true)
	return 0
end

function spicepatrol_Screenplay:creditFine(pBoss, player)
 	return 0
end


-- By: Mindsoft (Property of BloodfinEMU.net) 2016

---------------------------------------------(Screenplay & Spawns)
bf_gcw_test = ScreenPlay:new {
	numberOfActs = 1,
	objectList = {
	--Troop Spawners
		--imperial = 1
		{"rori", "object/tangible/ui/gcw_spawner_npc.iff",5526.5,80.9,5670.8, 0,math.rad(1),1},
		{"rori", "object/tangible/ui/gcw_spawner_npc.iff",5555,80.9,5674.7, 0,math.rad(90),1},
		{"jakku", "object/tangible/ui/gcw_spawner_npc.iff",-5659,50,5955, 0,math.rad(-135),1},
		{"jakku", "object/tangible/ui/gcw_spawner_npc.iff",-6274,29,5996, 0,math.rad(135),1},
		--rebel = 2
		{"rori", "object/tangible/ui/gcw_spawner_npc.iff",5127.5,80.2,5770, 0,math.rad(90),2},
		{"rori", "object/tangible/ui/gcw_spawner_npc.iff",5074.2,79.1,5780.4, 0,math.rad(-180),2},
		{"jakku", "object/tangible/ui/gcw_spawner_npc.iff",-5945,53,5452, 0,math.rad(-1),2},
		{"jakku", "object/tangible/ui/gcw_spawner_npc.iff",-5616,30,5715, 0,math.rad(-90),2},
		--neutral = 0 or null
		{"rori", "object/tangible/ui/gcw_spawner_npc.iff",5342,80.2,5862, 0,math.rad(270)},
		{"rori", "object/tangible/ui/gcw_spawner_npc.iff",5300,80.2,5862, 0,math.rad(1)},
		{"rori", "object/tangible/ui/gcw_spawner_npc.iff",5236,80.2,5834, 0,math.rad(90)},		
--		{"jakku", "object/tangible/ui/gcw_spawner_npc.iff",-5975,20,5790, 0,math.rad(45)},
	--Turret Spawners
		--imperial = 1
		--{"rori", "object/tangible/ui/gcw_spawner_turret.iff",5514,80.3,5635.5, 0,math.rad(-90),1},
		--{"rori", "object/tangible/ui/gcw_spawner_turret.iff",5508.3,80.2,5652.9, 0,math.rad(-90),1},
		{"rori", "object/tangible/ui/gcw_spawner_turret.iff",5508.3,80.2,5662.6, 0,math.rad(-90),1},
		{"rori", "object/tangible/ui/gcw_spawner_turret.iff",5511,80.2,5643.9, 0,math.rad(-90),1},
		--{"rori", "object/tangible/ui/gcw_spawner_turret.iff",5527.4,80.8,5610.2, 0,math.rad(0),1},
		{"rori", "object/tangible/ui/gcw_spawner_turret.iff",5558,81.1,5679.3, 0,math.rad(0),1},
		{"jakku", "object/tangible/ui/gcw_spawner_turret.iff",-6148,55,6100, 0,math.rad(-135),1},
		{"jakku", "object/tangible/ui/gcw_spawner_turret.iff",-6116,57,6065, 0,math.rad(-135),1},
		{"jakku", "object/tangible/ui/gcw_spawner_turret.iff",-6100,55,6050, 0,math.rad(-145),1},
		{"jakku", "object/tangible/ui/gcw_spawner_turret.iff",-6062,57,6020, 0,math.rad(-155),1},
		{"jakku", "object/tangible/ui/gcw_spawner_turret.iff",-6043,57,6011, 0,math.rad(-155),1},
		{"jakku", "object/tangible/ui/gcw_spawner_turret.iff",-5998,56,6000, 0,math.rad(179),1},
		{"jakku", "object/tangible/ui/gcw_spawner_turret.iff",-5979,57,6001, 0,math.rad(179),1},
		{"jakku", "object/tangible/ui/gcw_spawner_turret.iff",-5932,57,6003, 0,math.rad(175),1},
		{"jakku", "object/tangible/ui/gcw_spawner_turret.iff",-5913,56,6005, 0,math.rad(150),1},
		{"jakku", "object/tangible/ui/gcw_spawner_turret.iff",-5865,55,6026, 0,math.rad(150),1},
		{"jakku", "object/tangible/ui/gcw_spawner_turret.iff",-5846,53,6037, 0,math.rad(135),1},
		{"jakku", "object/tangible/ui/gcw_spawner_turret.iff",-5819,56,6081, 0,math.rad(135),1},
		--rebel = 2
		{"rori", "object/tangible/ui/gcw_spawner_turret.iff",5087.5,80.2,5758.3, 0,math.rad(135),2},
		{"rori", "object/tangible/ui/gcw_spawner_turret.iff",5087.5,80.2,5735.9, 0,math.rad(45),2},
		--{"rori", "object/tangible/ui/gcw_spawner_turret.iff",5079.2,80.2,5753.9, 0,math.rad(90),2},
		--{"rori", "object/tangible/ui/gcw_spawner_turret.iff",5079.2,80.2,5738.9, 0,math.rad(90),2},
		{"rori", "object/tangible/ui/gcw_spawner_turret.iff",5079,79.1,5788, 0,math.rad(1),2},
		--{"rori", "object/tangible/ui/gcw_spawner_turret.iff",5067.1,79.5,5761.6, 0,math.rad(90),2},
		{"jakku", "object/tangible/ui/gcw_spawner_turret.iff",-5600,39,5556, 0,math.rad(-1),2},
		{"jakku", "object/tangible/ui/gcw_spawner_turret.iff",-5651,42,5571, 0,math.rad(25),2},
		{"jakku", "object/tangible/ui/gcw_spawner_turret.iff",-5670,43,5592, 0,math.rad(45),2},
		{"jakku", "object/tangible/ui/gcw_spawner_turret.iff",-5706,46,5615, 0,math.rad(45),2},
		{"jakku", "object/tangible/ui/gcw_spawner_turret.iff",-5726,50,5623, 0,math.rad(15),2},
		{"jakku", "object/tangible/ui/gcw_spawner_turret.iff",-5754,56,5615, 0,math.rad(-45),2},
		{"jakku", "object/tangible/ui/gcw_spawner_turret.iff",-5764,56,5594, 0,math.rad(-45),2},
		{"jakku", "object/tangible/ui/gcw_spawner_turret.iff",-5778,56,5561, 0,math.rad(-35),2},
		{"jakku", "object/tangible/ui/gcw_spawner_turret.iff",-5793,56,5536, 0,math.rad(-55),2},
		{"jakku", "object/tangible/ui/gcw_spawner_turret.iff",-5824,54,5492, 0,math.rad(-90),2},
		{"jakku", "object/tangible/ui/gcw_spawner_turret.iff",-5802,52,5457, 0,math.rad(-135),2},
		{"jakku", "object/tangible/ui/gcw_spawner_turret.iff",-5782,54,5426, 0,math.rad(-65),2},
		--neutral = 0 or null
		{"rori", "object/tangible/ui/gcw_spawner_turret.iff",5189,80.2,5736, 0,math.rad(0)},
		{"rori", "object/tangible/ui/gcw_spawner_turret.iff",5506.1,80.2,5706.3, 0,math.rad(270)},
		{"rori", "object/tangible/ui/gcw_spawner_turret.iff",5372.7,80.2,5862.6, 0,math.rad(270)},		
		{"rori", "object/tangible/ui/gcw_spawner_turret.iff",5195,80.2,5852.3, 0,math.rad(180)},
		{"rori", "object/tangible/ui/gcw_spawner_turret.iff",5246,80.2,5608, 0,math.rad(1)},
		{"jakku", "object/tangible/ui/gcw_spawner_turret.iff",-5973,20.5,5771, 0,math.rad(90)},
		{"jakku", "object/tangible/ui/gcw_spawner_turret.iff",-6001,21,5777, 0,math.rad(-90)},
--		{"jakku", "object/tangible/ui/gcw_spawner_turret.iff",-6338,57,5748, 0,math.rad(45)},
	--Heavy Spawners
		--imperial = 1
		{"rori", "object/tangible/ui/gcw_spawner_heavy.iff",5487,80.2,5671.2, 0,math.rad(180),1},
		{"jakku", "object/tangible/ui/gcw_spawner_heavy.iff",-5698,53,5965, 0,math.rad(-135),1},
		{"jakku", "object/tangible/ui/gcw_spawner_heavy.iff",-6279,29,5984, 0,math.rad(135),1},
		--rebel = 2
		{"rori", "object/tangible/ui/gcw_spawner_heavy.iff",5107,80.2,5746.8, 0,math.rad(90),2},
		{"jakku", "object/tangible/ui/gcw_spawner_heavy.iff",-5957,53,5450, 0,math.rad(-1),2},
		{"jakku", "object/tangible/ui/gcw_spawner_heavy.iff",-5618,31,5705, 0,math.rad(-90),2},
		--neutral = 0 or null
--		{"rori", "object/tangible/ui/gcw_spawner_heavy.iff",5407,80.2,5871.9, 0,math.rad(45)},
--		{"jakku", "object/tangible/ui/gcw_spawner_heavy.iff",-5989,23,5801, 0,math.rad(-1)},
--		{"jakku", "object/tangible/ui/gcw_spawner_heavy.iff",-5987,24,5755, 0,math.rad(175)},
	--Sensor Spawners
		--imperial = 1
--		{"rori", "object/tangible/ui/gcw_spawner_sensor.iff",5512.9,80.2,5623, 0,math.rad(-90),1},
		--rebel = 2
--		{"rori", "object/tangible/ui/gcw_spawner_sensor.iff",5086,80.2,5745, 0,math.rad(90),2},
		--neutral = 0 or null
--		{"rori", "object/tangible/ui/gcw_spawner_sensor.iff",5298,80.2,5667, 0,math.rad(-90)},
	--Wall Spawners
		--imperial = 1
		--rebel = 2
		--neutral = 0 or null
	}
}
registerScreenPlay("bf_gcw_test", true)

--Spawn Quest givers and triggers. - spawnMobile("planet", "mobile",respawn, x, z, y, dir, cell )
function bf_gcw_test:start()
	--spawnMobile("planet", "mobile",respawn, x, z, y, dir, cell )
	--spawnMobile("tatooine", "gold_ticket_vendor",-1, 1, 195, 1, 1, 0 )
	bf_gcw_test:spawnMobiles()
end

function bf_gcw_test:spawnMobiles()	
	--Spawn Objects
	for key,Z in pairs(self.objectList) do
		local pPylon = spawnSceneObject(Z[1],Z[2],Z[3],Z[4],Z[5],Z[6],Z[7])
		local pType = Z[8] or 0
		bf_gcw_troop_menu:resetStatic(pPylon,pType)
		writeData("bf_gcw_test:pylons:"..tostring(key),LuaSceneObject(pPylon):getObjectID(),true)
	end
end

bf_gcw_troop_menu = {  }

------------(Troop Spawner fill menu)
function bf_gcw_troop_menu:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
	if not LuaSceneObject(pSceneObject):isValid() or pPlayer == nil then
		return false
	end
	local player = LuaCreatureObject(pPlayer)
	if CreatureObject(pPlayer):isInvisible() then
		player:sendSystemMessage("You cannot be cloaked for this action")
		return false
	end
		
	if LuaTangibleObject(pPlayer):isNeutral() then
		player:sendSystemMessage("You must pick a side in the war for this action")
		return false
	end

	local name = LuaSceneObject(pSceneObject):getCustomObjectName()
	local response = LuaObjectMenuResponse(pMenuResponse)
	local pointer = ("bf_troop:"..tostring(pSceneObject))
	local pOB = CreatureObject(pPlayer):getPlayerObject()
	local ltoSOB = LuaTangibleObject(pSceneObject)
	local mask = ltoSOB:getPvpStatusBitmask()
	local playerObject = LuaPlayerObject(pOB)

	if playerObject:isOvert() == false then
		player:sendSystemMessage("You must be 'Special Forces' for this action")
		return false
	end

	if playerObject:hasGodMode() then  --isOvert
		response:addRadialMenuItem(112, 3, "(STAFF) Reset Pylon")
	end

-- Unclaimed control point
	if ltoSOB:isNeutral() and not (name == "(Rebel Spawner)" or name == "(Imperial Spawner)") then
		if mask == 0 then	
			response:addRadialMenuItem(101, 3, "Claim Control Point")
		end
-- control point
	elseif mask == 0 and not (name == "(Rebel Spawner)" or name == "(Imperial Spawner)") then
		if ltoSOB:getFaction() == LuaTangibleObject(pPlayer):getFaction() then
			response:addRadialMenuItem(100, 3, "Check Status")
			if CreatureObject(pPlayer):hasSkill("crafting_artisan_master") == true then
				if readData((pointer)..":bf_Cloner") < 4 then
					response:addRadialMenuItem(29, 3, "Upgrade Cloner")
				end				
				response:addRadialMenuItem(22, 3, "Construct Cloner")
			end
			if CreatureObject(pPlayer):hasSkill("combat_smuggler_novice") and readData((pointer)..":bf_sliced") == 1 then
				response:addRadialMenuItem(111, 3, "Slice")
			end
		else
			--response:addRadialMenuItem(21, 3, "Sabotage Control Point")
		end
-- Rebel spawn point
	elseif mask == 4 then
		if ltoSOB:getFaction() == LuaTangibleObject(pPlayer):getFaction() then
			response:addRadialMenuItem(100, 3, "Check Status")
			if CreatureObject(pPlayer):hasSkill("crafting_artisan_master") then
				response:addRadialMenuItem(25, 3, "Activate Spawner")
				if readData((pointer)..":bf_Armor") < 4 then
					response:addRadialMenuItem(26, 3, "Upgrade Armor")
				end
				if readData((pointer)..":bf_Weapon") < 4 then
					response:addRadialMenuItem(27, 3, "Upgrade Weapon")
				end
				if readData((pointer)..":bf_Ham") < 4 then
					response:addRadialMenuItem(28, 3, "Upgrade Ham")
				end
				if readData((pointer)..":bf_Rank") < 4 then
					response:addRadialMenuItem(29, 3, "Upgrade Rank")
				end
			end
			if CreatureObject(pPlayer):hasSkill("combat_smuggler_novice") and readData((pointer)..":bf_sliced") == 1 then
				response:addRadialMenuItem(111, 3, "Slice")
			end
		else
			--response:addRadialMenuItem(24, 3, "Sabotage Spawner")
		end
	else
		return false
	end

	return 0
end

------------(Troop Spawner menu select process)
function bf_gcw_troop_menu:handleObjectMenuSelect(pSceneObject, pPlayer, selectedID)
	if not LuaSceneObject(pSceneObject):isValid() or pPlayer == nil then
		return false
	end
	local playerCreature = LuaCreatureObject(pPlayer)
	if playerCreature:isInvisible() then
		playerCreature:sendSystemMessage("You cannot be cloaked for this action")
		return false
	end
		
	if LuaTangibleObject(pPlayer):isNeutral() then
		playerCreature:sendSystemMessage("You must pick a side in the war for this action")
		return false
	end

	if LuaSceneObject(pPlayer):isInRangeWithObject(pSceneObject,1.9) == false then
		playerCreature:sendSystemMessage("You must be close to object for this action")
		return false
	end

	local name = LuaSceneObject(pSceneObject):getCustomObjectName()
	local ltoSOB = LuaTangibleObject(pSceneObject)
	local pointer = ("bf_troop:"..tostring(pSceneObject))
	local pobID = LuaSceneObject(pPlayer):getObjectID()
	local Object = LuaSceneObject(pSceneObject)
	local sobID = Object:getObjectID()
	local pOB = CreatureObject(pPlayer):getPlayerObject()
	local obType = readData((pointer)..":bf_type")
	local playerObject = LuaPlayerObject(pOB)

	if playerObject:isOvert() == false then
		player:sendSystemMessage("You must be 'Special Forces' for this action")
		return false
	end

	writeData(pointer..":bf_player",pobID,true) --capture playerobject on sceneobject 
	writeData(pobID..":bf_Capturing",sobID,true) --capture sceneobject on playerobject

	if (selectedID == 112) and playerObject:hasGodMode() then
		createEvent(3000,"bf_gcw_troop_menu","rename",pSceneObject,"Troop Control Point")
		LuaTangibleObject(pSceneObject):setPvpStatusBitmask(0)
		if obType == 0 then
			LuaTangibleObject(pSceneObject):setFaction(0)
		end
		writeData((pointer)..":bf_Armor",1,true)
		writeData((pointer)..":bf_Ham",1,true)
		writeData((pointer)..":bf_Rank",1,true)
		writeData((pointer)..":bf_sliced",1,true)
		writeData((pointer)..":bf_Weapon",1,true)
		writeData((pointer)..":bf_Cloner",1,true)
		return true
	end
	local faction = " "
	if playerCreature:isRebel() then
		faction = "Rebel"
	else
		faction = "Imperial"
	end
-- Un-claimed control point
	if ltoSOB:getPvpStatusBitmask() == 0 then
		if name == "Troop Control Point" or name == "Troop Control Point (Rebel)" or name == "Troop Control Point (Imperial)" then
			if ltoSOB:isNeutral() and (selectedID == 101) and obType == 0 then				
				Object:setCustomObjectName("Capturing ("..faction..")")
				createEvent(8000, "bf_gcw_troop_menu", "testa",pSceneObject)
				createEvent(1000,"bf_gcw_troop_menu","testc",pPlayer,faction)
				ltoSOB:setPvpStatusBitmask(1)
				Object:showFlyText("spacequest/recovery/corellia_imperial_tier3_3d", "capture_phase_1", 255, 0, 0)
				playerCreature:setPosture(1)
			elseif ltoSOB:getFaction() == LuaTangibleObject(pPlayer):getFaction() then
				if (selectedID == 100) then
					bf_gcw_troop_menu:checkStatus(pSceneObject)
				elseif playerCreature:hasSkill("crafting_artisan_master") then
					if (selectedID == 22) then
						Object:setCustomObjectName("Building ("..faction..")")
						Object:showFlyText("crafting", "tool_status_working", 0, 255, 255)
						createEvent(11000,"bf_gcw_troop_menu","testb",pSceneObject,faction)
						createEvent(1000,"bf_gcw_troop_menu","testc",pPlayer,faction)
						ltoSOB:setPvpStatusBitmask(1)
						playerCreature:setPosture(1)
					elseif (selectedID == 29) then
						bf_gcw_troop_menu:setUpgrade(pSceneObject,pPlayer,":bf_Cloner","architect",faction)
					end
				end
				if (selectedID == 111) and playerCreature:hasSkill("combat_smuggler_novice") and readData((pointer)..":bf_sliced") == 1 then
					bf_gcw_troop_menu:slice(pSceneObject,pPlayer,pointer)
				end

			elseif (selectedID == 21) then
				--bf_gcw_troop_menu:setSabotage(pSceneObject,pPlayer,faction)
			end
		end		
-- Troop Spawner
	elseif ltoSOB:getPvpStatusBitmask() == 4 and (name == "Rebel Spawner" or name == "Imperial Spawner") then
		if ltoSOB:getFaction() == LuaTangibleObject(pPlayer):getFaction() then
			if (selectedID == 100) then
				bf_gcw_troop_menu:checkStatus(pSceneObject)
			elseif (selectedID == 25) then
				if ltoSOB:isRebel() then
					Object:setCustomObjectName("(Rebel Spawner)")
				else
					Object:setCustomObjectName("(Imperial Spawner)")
				end	
				bf_gcw_troop_menu:spawnCloner(pSceneObject)
			elseif playerCreature:hasSkill("crafting_artisan_master") then
				if (selectedID == 26) then
					bf_gcw_troop_menu:setUpgrade(pSceneObject,pPlayer,":bf_Armor","armorsmith",faction)
				elseif (selectedID == 27) then
					bf_gcw_troop_menu:setUpgrade(pSceneObject,pPlayer,":bf_Weapon","weaponsmith",faction)
				elseif (selectedID == 28) then
					bf_gcw_troop_menu:setUpgrade(pSceneObject,pPlayer,":bf_Ham","chef",faction)
				elseif (selectedID == 29) then
					bf_gcw_troop_menu:setUpgrade(pSceneObject,pPlayer,":bf_Rank","tailor",faction)
				end
			end
			if (selectedID == 111) and playerCreature:hasSkill("combat_smuggler_novice") and readData((pointer)..":bf_sliced") == 1 then
				bf_gcw_troop_menu:slice(pSceneObject,pPlayer,pointer)
			end 
		elseif (selectedID == 24) then
			--bf_gcw_troop_menu:setSabotage(pSceneObject,pPlayer,faction)
		end
	end
	return 0
end

--Check Status
function bf_gcw_troop_menu:checkStatus(pSceneObject)
	if LuaSceneObject(pSceneObject) ~= nil then
		local pointer = ("bf_troop:"..tostring(pSceneObject))
		local status = "Troop Spawner Status"
		status = (status.."\nArmor: "..readData((pointer)..":bf_Armor") )
		status = (status.."\nHam: "..readData((pointer)..":bf_Ham") )
		status = (status.."\nRank: "..readData((pointer)..":bf_Rank"))
		local sliced = (readData(pointer..":bf_sliced"))
			if sliced == 2 then
				status = (status.."\nSliced: TRUE")
			else
				status = (status.."\nSliced: False")
			end
		status = (status.."\nWeapon: "..readData((pointer)..":bf_Weapon"))
		status = (status.."\nCloner: "..readData((pointer)..":bf_Cloner"))
		spatialChat(pSceneObject, status)
	end
	return 0
end

--test capture
function bf_gcw_troop_menu:testa(pSceneObject)
	local Object = LuaSceneObject(pSceneObject)
	if not Object:isValid() then
		return 0
	end
	local ltObject = LuaTangibleObject(pSceneObject)
	local name = Object:getCustomObjectName()
	if name == "Capture Aborted" then
		Object:setCustomObjectName("Troop Control Point")
		ltObject:setPvpStatusBitmask(0)
		return 0
	elseif  name == "Capturing (Rebel)" then
		Object:setCustomObjectName("Troop Control Point (Rebel)")
		ltObject:setFaction(0x16148850)
	elseif name == "Capturing (Imperial)" then
		Object:setCustomObjectName("Troop Control Point (Imperial)")
		ltObject:setFaction(0xDB4ACC54)
	else
		return 0
	end
		local pointer = ("bf_troop:"..tostring(pSceneObject))
		--Reset Upgrades, 1 = initial state, >1 = upgraded
		writeData((pointer)..":bf_Armor",1,true)
		writeData((pointer)..":bf_Ham",1,true)
		writeData((pointer)..":bf_Rank",1,true)
		writeData((pointer)..":bf_sliced",1,true)
		writeData((pointer)..":bf_Weapon",1,true)
		writeData((pointer)..":bf_Cloner",1,true)
		ltObject:setPvpStatusBitmask(0)
	return 0
end

--test spawner
function bf_gcw_troop_menu:testb(pSceneObject,faction)
	local Object = LuaSceneObject(pSceneObject)
	local name = Object:getCustomObjectName()
	if name == "Build Aborted ("..faction..")" then
		Object:setCustomObjectName("Troop Control Point ("..faction..")")
		LuaTangibleObject(pSceneObject):setPvpStatusBitmask(0)
	elseif name == "Building ("..faction..")" then
		Object:setCustomObjectName(""..faction.." Spawner")
		LuaTangibleObject(pSceneObject):setPvpStatusBitmask(4)
	end

	return 0
end

-- Create Cloner
function bf_gcw_troop_menu:spawnCloner(pSceneObject)
	local sObject = LuaSceneObject(pSceneObject)
	local name = sObject:getCustomObjectName()
	local sOBX = sObject:getPositionX()
	local sOBZ = sObject:getPositionZ()
	local sOBY = sObject:getPositionY()
	local sOBD = sObject:getDirectionAngle()
	local sOBP = sObject:getParentID()
	local zone = sObject:getZoneName()
	local cloner = spawnSceneObject(zone,"object/static/structure/general/cloning_tube.iff",sOBX,sOBZ-.5,sOBY,sOBP,math.rad(sOBD+90))
	createEvent( 4000, "bf_gcw_troop_menu", "spawnTroop", pSceneObject)
	createEvent( 12000, "bf_gcw_crafting_menu", "destroy", cloner)
	return 0
end

-- Spawn Troop in Cloner
function bf_gcw_troop_menu:spawnTroop(pSceneObject)
	LuaTangibleObject(pSceneObject):setPvpStatusBitmask(6)
	local sObject = LuaSceneObject(pSceneObject)
	local sOBX = sObject:getPositionX()
	local sOBZ = sObject:getPositionZ()
	local sOBY = sObject:getPositionY()
	local sOBD = sObject:getDirectionAngle()
	local sOBP = sObject:getParentID()
	local troop = bf_gcw_troop_menu:getTroop(pSceneObject)
	local zone = sObject:getZoneName()
	--rspawnMobile(zone, mobile, respawn, x, z, y, heading, parentID, spawnRange, ai)
	local trooper = rspawnMobile(zone, troop,-1,sOBX,sOBZ-.5,sOBY,sOBD,sOBP,1,"")
	local tobID = LuaSceneObject(trooper):getObjectID()
	local sobID = LuaSceneObject(pSceneObject):getObjectID()
	local spawn = LuaCreatureObject(trooper)
	writeData(tobID..":bf_Capturing",sobID,true)
	createObserver(OBJECTDESTRUCTION, "bf_gcw_troop_menu", "troopsDead", trooper)
	local pointer = ("bf_troop:"..tostring(pSceneObject))
	local hamStatus = readData((pointer)..":bf_Ham")
	local rankStatus = readData((pointer)..":bf_Rank")

	if rankStatus > 1 then
		createObserver(DAMAGERECEIVED,"bf_gcw_troop_menu","troopDamaged", trooper)
	end
	if hamStatus > 1 then
		for i = 0,8,1 do
			local maxHam = spawn:getMaxHAM(i)
			local newHam = maxHam + ((hamStatus -1 ) * 20000)
			spawn:setMaxHAM(i,newHam)
			spawn:setHAM(i,newHam)
		end
	end
	LuaSceneObject(trooper):addPendingTask(3600000,"bf_gcw_troop_menu","deSpawn")
	--createEvent(3600000,"bf_gcw_troop_menu","deSpawn",trooper)
	return 0
end

function bf_gcw_troop_menu:deSpawn(trooper)
	local tobID = LuaSceneObject(trooper):getObjectID()
	bf_gcw_troop_menu:troopsDead(trooper)
	bf_tools:destroy(trooper)
	deleteData((tobID)..":bf_Capturing")
	return 0
end

-- Get troop to spawn
function bf_gcw_troop_menu:getTroop(pSceneObject)
	local object = LuaSceneObject(pSceneObject)
	local name = object:getCustomObjectName()
	local pointer = ("bf_troop:"..tostring(pSceneObject))
	local armorStatus = readData((pointer)..":bf_Armor")
	local weaponStatus = readData((pointer)..":bf_Weapon")
	local upgradeLevel = bf_gcw_troop_menu:toAlpha(armorStatus)
	upgradeLevel = upgradeLevel..bf_gcw_troop_menu:toAlpha(weaponStatus)

	if name == "(Rebel Spawner)" then
		return ("pylon_troop_reb_"..upgradeLevel)
	elseif name == "(Imperial Spawner)" then
		return ("pylon_troop_imp_"..upgradeLevel)
	end
	return 0
end

--troop damaged
function bf_gcw_troop_menu:troopDamaged(trooper)
	if trooper == nil then 
		return 0
	end
	local tobID = LuaSceneObject(trooper):getObjectID()
	local sobID = readData((tobID)..":bf_Capturing")
	local pObject = getSceneObject(sobID)
	local pointer = ("bf_troop:"..tostring(pObject))
	local rankStatus = readData((pointer)..":bf_Rank")

	local boss = LuaCreatureObject(trooper)
	local bossHealth = boss:getHAM(0)
	local bossAction = boss:getHAM(3)
	local bossMind = boss:getHAM(6)
	local bossMaxHealth = boss:getMaxHAM(0)
	local bossMaxAction = boss:getMaxHAM(3)
	local bossMaxMind = boss:getMaxHAM(6)
	local xBoss = boss:getPositionX()
	local zBoss = boss:getPositionZ()
	local yBoss = boss:getPositionY() 
	local parentID = boss:getParentID()
	local zoneName = boss:getZoneName()

	if (bossHealth <= (bossMaxHealth *0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind *0.5)) then
		dropObserver(DAMAGERECEIVED,trooper)
		local spawnList = {}			
		if boss:isRebel() then
			spawnList = {
				"pylon_reb_support_a",
				"pylon_reb_support_b"
			}
		else
			spawnList = {
				"pylon_imp_support_a",
				"pylon_imp_support_b"
			}
		end
		lspawnMobile(zoneName, spawnList, -1, xBoss, zBoss, yBoss, math.random(1,360), parentID, 2, rankStatus-1)
	end
	return 0
end

--notify troop died
function bf_gcw_troop_menu:troopsDead(trooper,player)
	print("troop dead fired")
	local tobID = LuaSceneObject(trooper):getObjectID()
	local sobID = readData((tobID)..":bf_Capturing")
	local pSceneObject = getSceneObject(sobID)
	local Object = LuaSceneObject(pSceneObject)
	local name = Object:getCustomObjectName()
	local pointer = ("bf_troop:"..tostring(pSceneObject))
	local obType = readData((pointer)..":bf_type")
	local clonerState = readData((pointer)..":bf_Cloner")
	local timer = 70000 - (clonerState*10000)
	local customName = ""
	if name == "(Rebel Spawner)" then
		customName = "Rebel Spawner"
	elseif name == "(Imperial Spawner)" then
		customName = "Imperial Spawner"
	else
		return 0
	end

	LuaTangibleObject(pSceneObject):setPvpStatusBitmask(0)
	LuaSceneObject(trooper):cancelPendingTask("bf_gcw_troop_menu","deSpawn")
	deleteData(tostring(tobID)..":bf_Capturing")
	if obType ~= 0 then
		bf_gcw_troop_menu:resetStatic(pSceneObject,obType)
		createEvent(timer,"bf_gcw_troop_menu","rename",pSceneObject,"Troop Control Point")
		return 0
	end
	createEvent(timer,"bf_gcw_troop_menu","rename",pSceneObject,"Troop Control Point")
	LuaTangibleObject(pSceneObject):setFaction(0)
		--createEvent(timer,"bf_gcw_troop_menu","resetSpawn",pSceneObject,customName)
	return 0
end

--Reset Spawn
function bf_gcw_troop_menu:resetSpawn(pSceneObject,customName)
	local name = LuaSceneObject(pSceneObject):getCustomObjectName()
	if name == "(Rebel Spawner)" or name == "(Imperial Spawner)" then
		bf_gcw_troop_menu:rename(pSceneObject, customName)
		LuaTangibleObject(pSceneObject):setPvpStatusBitmask(4)
	end
end

-- Rename Object (used for paused rename events) **
function bf_gcw_troop_menu:rename(pSceneObject,name)
	LuaSceneObject(pSceneObject):setCustomObjectName(name)
	LuaSceneObject(pSceneObject):showFlyText("crafting", "tool_status_ready", 0, 255, 255)
	return 0
end

--Slice
function bf_gcw_troop_menu:slice(pSceneObject,pPlayer,pointer) --TODO move this to bc gcw crafting
	if LuaSceneObject(pSceneObject) ~= nil and pPlayer ~= nil and readData((pointer)..":bf_sliced") == 1 then
		local iff = "object/tangible/slicing/slicing_flow_analyzer.iff"
		local playerCreature = LuaCreatureObject(pPlayer)
		local pInventory = playerCreature:getSlottedObject("inventory")
		local inventory = LuaSceneObject(pInventory)
		local containerSize = inventory:getContainerObjectsSize()
		local playerObjPointer = playerCreature:getPlayerObject()
		local playerObj = LuaPlayerObject(playerObjPointer)
		local itemfound = false
		for i = 0, containerSize - 1, 1 do
			local pInvObj = inventory:getContainerObject(i)
			if pInvObj ~= nil then
				local InvObj = LuaSceneObject(pInvObj)
				if InvObj:getTemplateObjectPath() == iff then
					SceneObject(pInvObj):destroyObjectFromWorld()
					SceneObject(pInvObj):destroyObjectFromDatabase()
					itemfound = true
					break
				end
			end
		end
		if itemfound then
			local bonus = 25
			if playerCreature:hasSkill("combat_smuggler_slicing_04") == true then
				bonus = 90
			elseif playerCreature:hasSkill("combat_smuggler_slicing_03") == true then
				bonus = 75
			elseif playerCreature:hasSkill("combat_smuggler_slicing_02") == true then
				bonus = 60
			elseif playerCreature:hasSkill("combat_smuggler_slicing_01") == true then
				bonus = 50
			end
			local roll = math.random(1,100)
			if roll < bonus then
				writeData((pointer)..":bf_sliced",2,true)
				LuaSceneObject(pSceneObject):showFlyText("craft_results", "success", 0, 255, 255)
				playerCreature:awardExperience("slicing",10,true)
				bf_gcw_crafting_menu:miniGame(pPlayer,100)
			else
				LuaSceneObject(pSceneObject):showFlyText("spacequest/delivery/tatooine_privateer_tier3_3_a", "failed_destroyed", 255, 0, 0)
			end
		else
			playerCreature:sendSystemMessage("This Action REQUIRES 'Flow Analyzer Node'") 
		end
	end
	return 0
end

--Sabotage   ( LOOP )
function bf_gcw_troop_menu:Sabotage(pSceneObject,oldName)
	local Object = LuaSceneObject(pSceneObject)
	if not Object:isValid() then
		return 0
	end
	local name = Object:getCustomObjectName()
	local sobID = Object:getObjectID()
	local pointer = ("bf_troop:"..tostring(pSceneObject))
	local player = readData(pointer..":bf_player")
	local playerCreature = LuaCreatureObject((getSceneObject(player)))
	local obType = readData((pointer)..":bf_type")
	local mask = LuaTangibleObject(pSceneObject):getPvpStatusBitmask()
	if playerCreature:isInvisible() then
		playerCreature:setPosture(0)
	end

	if name == "Interupted" then
		createEvent(2000,"bf_gcw_troop_menu","rename",pSceneObject,oldName)
		LuaTangibleObject(pSceneObject):setPvpStatusBitmask(mask-1)
	elseif name == "Sabotaging" then
		local timer = readData((pointer)..":bf_timer")
		timer = (timer - 5)
		if timer > 0 then
			writeData(pointer..":bf_timer",timer)
			createEvent(5000,"bf_gcw_troop_menu","Sabotage",pSceneObject,oldName)
		else
			Object:setCustomObjectName("Work Complete")
			--if clonerrank > 1 then reduce it and use old name, else
			local clonerState = readData((pointer)..":bf_Cloner")
			if clonerState == 1 then
				LuaTangibleObject(pSceneObject):setPvpStatusBitmask(0)
				if obType ~= 0 then
					bf_gcw_troop_menu:resetStatic(pSceneObject,obType)
					playerCreature:sendSystemMessage("Control Point Reset.")
					createEvent(3000,"bf_gcw_troop_menu","rename",pSceneObject,"Troop Control Point")
					return 0
				end
				createEvent(300000,"bf_gcw_troop_menu","rename",pSceneObject,"Troop Control Point")
				LuaTangibleObject(pSceneObject):setFaction(0)
				return 0
			else
				writeData((pointer)..":bf_Cloner",clonerState-1)
				createEvent(300000,"bf_gcw_troop_menu","rename",pSceneObject,oldName)
			end
			LuaTangibleObject(pSceneObject):setPvpStatusBitmask(mask-1)
		end
	end
	return 0
end

--set Sabotage
function bf_gcw_troop_menu:setSabotage(pSceneObject,pPlayer,faction)
	if LuaSceneObject(pSceneObject) ~= nil and pPlayer ~= nil then
		local sobID = LuaSceneObject(pSceneObject):getObjectID()
		local Object = LuaSceneObject(pSceneObject)
		local name = Object:getCustomObjectName()
		local pointer = ("bf_troop:"..tostring(pSceneObject))
		local clonerState = readData((pointer)..":bf_Cloner")
		local timer = (clonerState*20)
		local obType = readData((pointer)..":bf_type")
		if clonerState == 1 and LuaTangibleObject(pSceneObject):getPvpStatusBitmask() == 0 and obType ~= 0 then
			LuaCreatureObject(pPlayer):sendSystemMessage("This Object cannot be sabotaged further at this time.")
			return 0
		end
		writeData(pointer..":bf_timer",timer)
		LuaSceneObject(pSceneObject):setCustomObjectName("Sabotaging")
		LuaCreatureObject(pPlayer):setPosture(1)
		LuaTangibleObject(pSceneObject):setPvpStatusBitmask(LuaTangibleObject(pSceneObject):getPvpStatusBitmask()+1)
		createEvent(4999,"bf_gcw_troop_menu","Sabotage",pSceneObject,name)
		createEvent(1000,"bf_gcw_troop_menu","testc",pPlayer,faction)
	end
	return 0
end

--Upgrade   ( LOOP ) **
function bf_gcw_troop_menu:Upgrade(pSceneObject,oldName)
	local Object = LuaSceneObject(pSceneObject)
	local name = Object:getCustomObjectName()
	local pointer = ("bf_troop:"..tostring(pSceneObject))

	if name == "Interupted" then
		createEvent(2000,"bf_gcw_troop_menu","rename",pSceneObject,oldName)
		LuaTangibleObject(pSceneObject):setPvpStatusBitmask(LuaTangibleObject(pSceneObject):getPvpStatusBitmask()-1)
	elseif name == "Upgrading" then
		local sobID = Object:getObjectID()
		local timer = readData(pointer..":bf_timer")
		local player = readData(pointer..":bf_player")
		local playerCreature = LuaCreatureObject((getSceneObject(player)))
		timer = (timer - 5)
		if timer > 0 then
			writeData(pointer..":bf_timer",timer)
			createEvent(5000,"bf_gcw_troop_menu","Upgrade",pSceneObject,oldName)
		else
			local upgrade = readStringData((pointer)..":bf_upgrade")
			local level = readData((pointer)..upgrade)
			local award = (15 * bf_gcw_crafting_menu:getCraftBonus(getSceneObject(player)) )
			local iff = "object/tangible/mindsoft/crafting/gcw_crafting_tool.iff"
			if bf_gcw_crafting_menu:testItem(getSceneObject(player), iff, true) then
				LuaTangibleObject(pSceneObject):setPvpStatusBitmask(LuaTangibleObject(pSceneObject):getPvpStatusBitmask()-1)
				writeData((pointer)..upgrade,(level+1))
				Object:setCustomObjectName("Work Complete")
				if readData((pointer)..":bf_sliced") == 2 then
					award = award * 1.1
				end
				playerCreature:awardExperience("gcw_skill_xp",award,true)
				bf_gcw_crafting_menu:miniGame(getSceneObject(player),20)
				createEvent(3000,"bf_gcw_troop_menu","rename",pSceneObject,oldName)
			else
			end
		end
	end
	return 0
end

--Set Upgrade **
function bf_gcw_troop_menu:setUpgrade(pSceneObject,pPlayer,pStat,pSkillName,faction)
	if LuaSceneObject(pSceneObject) ~= nil and pPlayer ~= nil then
		local playerCreature = LuaCreatureObject(pPlayer)
		local iff = "object/tangible/mindsoft/crafting/gcw_crafting_tool.iff"
		if bf_gcw_crafting_menu:testItem(pPlayer, iff) then
			local pointer = ("bf_troop:"..tostring(pSceneObject))
			local bonus = 0
			local Object = LuaSceneObject(pSceneObject)
			local name = Object:getCustomObjectName()
			local State = readData((pointer)..pStat)
			local timer = (State*20)+5
			if State > 3 then
				return 0
			end
			LuaTangibleObject(pSceneObject):setPvpStatusBitmask(LuaTangibleObject(pSceneObject):getPvpStatusBitmask()+1)
			if playerCreature:hasSkill("crafting_"..pSkillName.."_master") == true then
				bonus = (State*10)
			elseif playerCreature:hasSkill("crafting_"..pSkillName.."_novice") == true then
				bonus = (State*5)
			end
			timer = (timer - bonus)
			writeData((pointer)..":bf_timer",timer)
			writeStringData((pointer)..":bf_upgrade",pStat)
			LuaSceneObject(pSceneObject):setCustomObjectName("Upgrading")
			createEvent(4999,"bf_gcw_troop_menu","Upgrade",pSceneObject,name)
			createEvent(1000,"bf_gcw_troop_menu","testc",pPlayer,faction)
			Object:showFlyText("crafting", "tool_status_working", 0, 255, 255)
			playerCreature:setPosture(1)
		else
			playerCreature:sendSystemMessage("You are missing the required tool for this action")
		end
		return 0
	end
end

--Reset Static
function bf_gcw_troop_menu:resetStatic(pPylon,pType)
	if not LuaSceneObject(pPylon):isValid() then
		print("Invalid object sent to resetStatic!! (pPylon,pType):", pPylon,pType)
		return 0
	end
	--print("resetting",pPylon,pType)
	if pType == 1 then
		LuaTangibleObject(pPylon):setFaction(0xDB4ACC54)
	elseif pType == 2 then
		LuaTangibleObject(pPylon):setFaction(0x16148850)
	else
		LuaTangibleObject(pPylon):setFaction(0)
	end
	local pointer = ("bf_troop:"..tostring(pPylon))
	writeData((pointer)..":bf_type",pType,true)
	writeData((pointer)..":bf_Armor",1,true)
	writeData((pointer)..":bf_Ham",1,true)
	writeData((pointer)..":bf_Rank",1,true)
	writeData((pointer)..":bf_sliced",1,true)
	writeData((pointer)..":bf_Weapon",1,true)
	writeData((pointer)..":bf_Cloner",1,true)
	return 0
end
--------------------------------( Crafting Menu )
-- Give player GCW Resources
function bf_gcw_troop_menu:giveGCWResource(pPlayer, density)
	local rewardTemplate = "object/tangible/gcw/gcw_crafting/gcw_resource.iff"
	local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")

	if (SceneObject(pInventory):isContainerFullRecursive()) then
		CreatureObject(pPlayer):sendSystemMessage("Your Inventory is too full to complete this task.")
		return false
	end

	if (pInventory ~= nil) then
		local pReward = giveItem(pInventory, rewardTemplate, -1, true)

		if (pReward == nil) then
			CreatureObject(pPlayer):sendSystemMessage("Error: Unable to generate item.")
			return false
		end
		LuaTangibleObject(pReward):setMaxCondition(density)
	end
	return true
end
--	(Property of BloodfinEMU.net)	2016

--gcw resource menu
bf_gcw_crafting_menu = {  }
function bf_gcw_crafting_menu:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
	if (pPlayer == nil or pSceneObject == nil) then
		return false
	end

	local itemID = LuaSceneObject(pSceneObject):getObjectID()
	local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")
	local player = LuaCreatureObject(pPlayer)
	if SceneObject(pInventory):getContainerObjectById(itemID) then
		local name = LuaSceneObject(pSceneObject):getCustomObjectName()
		local response = LuaObjectMenuResponse(pMenuResponse)
		if (name ~= "Resource Ration" and name ~= "Resource Ration (System Generated)") then
			return 0
		end
		if player:hasSkill("crafting_droidengineer_novice") or player:hasSkill("crafting_shipwright_novice") or player:hasSkill("crafting_weaponsmith_novice") or player:hasSkill("crafting_armorsmith_novice") or player:hasSkill("crafting_architect_novice") or player:hasSkill("crafting_chef_novice") or player:hasSkill("crafting_tailor_novice") or player:hasSkill("crafting_mechanic_novice") then			
			response:addRadialMenuItem(101, 3, "Craft REPAIR Tool")--repair tool
			if player:hasSkill("crafting_artisan_master") then
				response:addRadialMenuItem(103, 3, "Craft Structure Tool")--structure tool
			end
		end
		if player:hasSkill("crafting_artisan_master") then
			response:addRadialMenuItem(102, 3, "Craft STANDARD Tool")--standard tool
			
			if player:hasSkill("crafting_droidengineer_master") or player:hasSkill("crafting_shipwright_master") or player:hasSkill("crafting_weaponsmith_master") or player:hasSkill("crafting_armorsmith_master") or player:hasSkill("crafting_architect_master") or player:hasSkill("crafting_chef_master") or player:hasSkill ("crafting_tailor_master") or player:hasSkill("crafting_mechanic_master") then
				response:addRadialMenuItem(104, 3, "Craft Heavy Tool")--heavy tool
			end
		end
	end
end

function bf_gcw_crafting_menu:handleObjectMenuSelect(pSceneObject, pPlayer, selectedID)
	local playerCreature = LuaCreatureObject(pPlayer)
	local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")
	local name = LuaSceneObject(pSceneObject):getCustomObjectName()
	local iff = "object/tangible/gcw/gcw_crafting/gcw_resource.iff"

	if  not bf_gcw_crafting_menu:testItem(pPlayer, iff) then
		return
	end
	if (SceneObject(pInventory):isContainerFullRecursive()) then
		playerCreature:sendSystemMessage("Your Inventory is too full to complete this task.")
		return
	end
	--normal tool
	local tool = ""
	local damage = 100
	if (selectedID == 101) then
		tool = "object/tangible/mindsoft/crafting/gcw_repair_tool.iff"
		damage = (-50)
	elseif (selectedID == 102) then
		tool = "object/tangible/mindsoft/crafting/gcw_crafting_tool.iff"
		damage = (-100)
	elseif (selectedID == 103) then
		tool = "object/tangible/mindsoft/crafting/gcw_structure_crafting_tool.iff"
		damage = (-100)
	elseif (selectedID == 104) then
		tool = "object/tangible/mindsoft/crafting/gcw_heavy_crafting_tool.iff"
		damage = (-200)
	else
		return 0
	end

	local cond = LuaTangibleObject(pSceneObject):setMaxCondition(0)

	if cond + damage > 0 then
		LuaTangibleObject(pSceneObject):setMaxCondition(damage)
	elseif cond + damage < 0 then
		CreatureObject(pPlayer):sendSystemMessage("Insufficient Resources for this action.")
		return false
	else	
		bf_gcw_crafting_menu:destroy(pSceneObject)
	end

	if (pInventory ~= nil) then
		local pReward = giveItem(pInventory, tool, -1, true)
		if (pReward == nil) then
			CreatureObject(pPlayer):sendSystemMessage("Error: Unable to generate item.")
			return false
		end
		LuaTangibleObject(pReward):setMaxCondition(100)
		bf_gcw_crafting_menu:miniGame(pPlayer,100)
		playerCreature:sendSystemMessage("Your tool has been constructed")
	end
end

function bf_gcw_crafting_menu:destroy(pObject) --TODO move to bf_tools
	if pObject ~= nil and LuaSceneObject(pObject) ~= nil then

		LuaSceneObject(pObject):destroyObjectFromDatabase()
		LuaSceneObject(pObject):destroyObjectFromWorld()
	end
	return 0
end

--if destroy = true -desroy if found item and return true, else return true if found item
function bf_gcw_crafting_menu:testItem(pPlayer, iff, destroy) --TODO move to bf_tools
	local pInventory = CreatureObject(pPlayer):getSlottedObject("inventory")
	if pInventory == nil then
		return false
	end

	local pInvItem = getContainerObjectByTemplate(pInventory, iff, true)

	if pInvItem ~= nil then
		if destroy == true then
			SceneObject(pInvItem):destroyObjectFromWorld()
			SceneObject(pInvItem):destroyObjectFromDatabase()
		end
	else
		return false
	end
	return true
end

--position test
function bf_gcw_troop_menu:testc(pPlayer,faction)
	local player = LuaCreatureObject(pPlayer)
	if LuaCreatureObject(pPlayer):isInvisible() then
		player:sendSystemMessage("You cannot be cloaked for this action")
		player:setPosture(0) --interrupt session
	end

	local posture = player:getPosture()
	local pobID = LuaSceneObject(pPlayer):getObjectID()
	local sobID = readData((pobID)..":bf_Capturing")
	local Object = LuaSceneObject(getSceneObject(sobID))
	local name = Object:getCustomObjectName()
	if posture ~= 1 then
		if name == "Capturing (Rebel)" or name == "Capturing (Imperial)" then
			Object:setCustomObjectName("Capture Aborted")

		elseif name == "Building ("..faction..")" then
			Object:setCustomObjectName("Build Aborted ("..faction..")")
		elseif name == "Sabotaging" then
			Object:setCustomObjectName("Interupted")
		elseif name == "Upgrading" then
			Object:setCustomObjectName("Interupted")
		end
		return 0

	elseif name == faction.." Spawner" or name == "Troop Control Point ("..faction..")" or name == "Work Complete" then
		Object:showFlyText("crafting", "tool_status_finished", 0, 255, 255)
		player:setPosture(0)
		return 0
	end
	createEvent(1000,"bf_gcw_troop_menu","testc",pPlayer,faction)
	return 0
end

function bf_gcw_crafting_menu:miniGame(pPlayer,chance)
	local roll = math.random(1,chance)
	local itemList = {
	"gcw_loot_globe_naboo.iff",
	"gcw_loot_globe_tatooine.iff",
	"gcw_loot_globe_rori.iff",
	"gcw_loot_globe_talus.iff",
	"gcw_loot_globe_corellia.iff",
	"object/tangible/gcw/gcw_crafting/gcw_resource.iff",
	"object/tangible/mindsoft/bf_teleports/bf_teleport_cnet_group.iff",
	"object/tangible/mindsoft/bf_teleports/bf_teleport_cnet.iff",
	"object/tangible/mindsoft/bf_teleports/bf_teleport_gold_cnet.iff",
	"object/tangible/mindsoft/crafting/gcw_heavy_crafting_tool.iff",
	"object/tangible/mindsoft/crafting/gcw_structure_crafting_tool.iff",
	"object/tangible/mindsoft/crafting/gcw_repair_tool.iff"
	}
	local chosenReward = math.random(1, #itemList)
	if roll >= chance then
		local rewardTemplate = itemList[chosenReward]
		local pInventory = LuaSceneObject(pPlayer):getSlottedObject("inventory")
		CreatureObject(pPlayer):sendSystemMessage("Bloodfin smiles on you,\nYou have recieved a reward!")
		if (SceneObject(pInventory):isContainerFullRecursive()) then
			CreatureObject(pPlayer):sendSystemMessage("Your Inventory is too full to recieve this reward.")
			return false
		end

		if (pInventory ~= nil) then
			local pReward = giveItem(pInventory, rewardTemplate, -1, true)

			if (pReward == nil) then
				CreatureObject(pPlayer):sendSystemMessage("Error: Unable to generate item.")
				return false
			end
			LuaTangibleObject(pReward):setMaxCondition(density)
		end
	end
end

function bf_gcw_crafting_menu:getCraftBonus(pPlayer)
	local bonus = 1
	local playerCreature = LuaCreatureObject(pPlayer)
	if playerCreature:hasSkill("gcw_skill_crafting_novice") then
		bonus = 2
		if playerCreature:hasSkill("gcw_skill_crafting_09") then
			bonus = 5
		elseif playerCreature:hasSkill("gcw_skill_crafting_07") then
			bonus = 4
		elseif playerCreature:hasSkill("gcw_skill_crafting_04") then
			bonus = 3
		end
	end
	return bonus
end

--toAlpha
function bf_gcw_troop_menu:toAlpha(value) --TODO move to bf_tools
	local alpha = "a"
	if value ~= nil and value > 0 then
		if value == 1 then
			alpha = "a"
		elseif value == 2 then
			alpha = "b"
		elseif value == 3 then
			alpha = "c"
		elseif value == 4 then
			alpha = "d"
		elseif value == 5 then
			alpha = "e"
		elseif value == 6 then
			alpha = "f"
		elseif value == 7 then
			alpha = "g"
		elseif value == 8 then
			alpha = "h"
		end
	end
	return alpha	
end

bf_gcw_loot_globe_menu = { }
--Fill Menu
function bf_gcw_loot_globe_menu:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
	local response = LuaObjectMenuResponse(pMenuResponse)
--[[if (sceneObject == NULL)
		return;

	ManagedReference<SceneObject*> parent = sceneObject->getParent().get();

	if (parent == NULL || !parent->isCellObject())
		return;

	ManagedReference<SceneObject*> obj = parent->getParent().get();

	if (obj == NULL || !obj->isBuildingObject())
		return;

	ManagedReference<BuildingObject*> buio = cast<BuildingObject*>( obj.get());

	//Is this player on the permission list?
	if (!buio->isOnAdminList(player))
		return;

	if (sceneObject->isPlayerCreature() || sceneObject->isPet())
return;]]
	--response:addRadialMenuItem(10, 3, "@ui_radial:item_pickup"); --Pick up TODO add in ownership/building id code
	if readData(tostring(pSceneObject)..":MenuState") ~= 1 then
		response:addRadialMenuItem(22, 3, "Rotate Globe")
	end
end
--Handle Selections
function bf_gcw_loot_globe_menu:handleObjectMenuSelect(pSceneObject, pPlayer, selectedID)
	if pSceneObject == nil then
		return false
	end
	if (selectedID == 22) and readData(tostring(pSceneObject)..":MenuState") ~= 1 then
		bf_gcw_loot_globe_menu:rotate(pSceneObject,360)
		writeData(tostring(pSceneObject)..":MenuState",1,true)
	end
end
--Rotate (Loop)
function bf_gcw_loot_globe_menu:rotate(pSceneObject,timer)
	local timeLeft = timer - 1
	local sObject = LuaSceneObject(pSceneObject)
	sObject:rotateObject(1)
	if timeLeft > 0 then
		createEvent(100,"bf_gcw_loot_globe_menu","rotate",pSceneObject,timeLeft)
	else
		deleteData(tostring(pSceneObject)..":MenuState")
	end
	return 0
end

--	(Property of BloodfinEMU.net)	2016

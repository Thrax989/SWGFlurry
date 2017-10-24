-- By: Mindsoft (Property of BloodfinEMU.net) 2016

---------------------------------------------(Screenplay & Spawns)
bf_gcw_sensor_menu = {  }

------------(Turret Spawner fill menu)
function bf_gcw_sensor_menu:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
	if pSceneObject == nil or pPlayer == nil then
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
	local sObject = LuaSceneObject(pSceneObject)
	local name = sObject:getCustomObjectName()
	local response = LuaObjectMenuResponse(pMenuResponse)
	local pointer = ("bf_troop:"..tostring(pSceneObject))
	local pOB = CreatureObject(pPlayer):getPlayerObject()
	local ltoSOB = LuaTangibleObject(pSceneObject)
	local mask = ltoSOB:getPvpStatusBitmask()
	local playerObject = LuaPlayerObject(pOB)
	local rank = readData((pointer)..":bf_Rank")

	if playerObject:isOvert() == false then
		player:sendSystemMessage("You must be 'Special Forces' for this action")
		return false
	end

	if playerObject:hasGodMode() then
		response:addRadialMenuItem(112, 3, "(STAFF) Reset Pylon")
	end

-- Unclaimed control point
	if ltoSOB:isNeutral() then
		if mask == 0 then	
			response:addRadialMenuItem(101, 3, "Claim Control Point")
		end
-- control point
	elseif mask == 0 then
		if ltoSOB:getFaction() == LuaTangibleObject(pPlayer):getFaction() then
			response:addRadialMenuItem(100, 3, "Check Status")

			if CreatureObject(pPlayer):hasSkill("crafting_artisan_master") == true then
				response:addRadialMenuItem(22, 3, "Construct Sensor")
			end				

			if CreatureObject(pPlayer):hasSkill("combat_smuggler_novice") and readData((pointer)..":bf_sliced") == 1 then
				response:addRadialMenuItem(111, 3, "Slice")
			end
		else
			response:addRadialMenuItem(21, 3, "Sabotage Control Point")
		end
-- pylon started
	elseif mask == 4 then
		if ltoSOB:getFaction() == LuaTangibleObject(pPlayer):getFaction() then
			response:addRadialMenuItem(100, 3, "Check Status")
			if CreatureObject(pPlayer):hasSkill("crafting_artisan_master") then
				response:addRadialMenuItem(25, 3, "Activate Sensor")
				if rank < 4 then
					if readData((pointer)..":bf_Armor") == rank then
						response:addRadialMenuItem(26, 3, "Upgrade Lifespan")
					end
					if readData((pointer)..":bf_Weapon") == rank then
						response:addRadialMenuItem(27, 3, "Upgrade Range")
					end
					if readData((pointer)..":bf_Ham") == rank then
						response:addRadialMenuItem(28, 3, "Upgrade Recharge")
					end
					if rank < readData((pointer)..":bf_Armor") and rank < readData((pointer)..":bf_Weapon") and rank < readData((pointer)..":bf_Ham") then
						response:addRadialMenuItem(29, 3, "Upgrade Rank")
					end
				end
			end
			if CreatureObject(pPlayer):hasSkill("combat_smuggler_novice") and readData((pointer)..":bf_sliced") == 1 then
				response:addRadialMenuItem(111, 3, "Slice")
			end
		else
			response:addRadialMenuItem(24, 3, "Sabotage Spawner")
		end
	else
		return false
	end

	return 0
end

------------(Turret Spawner menu select process)
function bf_gcw_sensor_menu:handleObjectMenuSelect(pSceneObject, pPlayer, selectedID)
	if pSceneObject == nil or pPlayer == nil then
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

	local playerCreature = LuaCreatureObject(pPlayer)
	local name = LuaSceneObject(pSceneObject):getCustomObjectName()
	local ltoSOB = LuaTangibleObject(pSceneObject)
	local pointer = ("bf_troop:"..tostring(pSceneObject))
	local pobID = LuaSceneObject(pPlayer):getObjectID()
	local Object = LuaSceneObject(pSceneObject)
	local sobID = Object:getObjectID()
	local pOB = CreatureObject(pPlayer):getPlayerObject()
	local obType = readData((pointer)..":bf_type")
	local playerObject = LuaPlayerObject(pOB)
	local rank = readData((pointer)..":bf_Rank")

	if playerObject:isOvert() == false then
		player:sendSystemMessage("You must be 'Special Forces' for this action")
		return false
	end

	writeData(pointer..":bf_player",pobID,true) --capture playerobject on sceneobject 
	writeData(pobID..":bf_Capturing",sobID,true) --capture sceneobject on playerobject

	if (selectedID == 112) and playerObject:hasGodMode() then
		createEvent(3000,"bf_gcw_troop_menu","rename",pSceneObject,"Sensor Control Point")
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
		if name == "Sensor Control Point" or name == "Sensor Control Point (Rebel)" or name == "Sensor Control Point (Imperial)" then
			--print("passed",ltoSOB:isNeutral(),selectedID,obType)
			if ltoSOB:isNeutral() and (selectedID == 101) and obType == 0 then				
				Object:setCustomObjectName("Capturing ("..faction..")")
				createEvent(8000, "bf_gcw_sensor_menu", "testa",pSceneObject)
				createEvent(1000,"bf_gcw_sensor_menu","testc",pPlayer,faction)
				ltoSOB:setPvpStatusBitmask(1)
				Object:showFlyText("spacequest/recovery/corellia_imperial_tier3_3d", "capture_phase_1", 255, 0, 0)
				playerCreature:setPosture(1)
			elseif ltoSOB:getFaction() == LuaTangibleObject(pPlayer):getFaction() then
				if (selectedID == 100) then
					bf_gcw_sensor_menu:checkStatus(pSceneObject)
				elseif playerCreature:hasSkill("crafting_artisan_master") then
					if (selectedID == 22) then
						Object:setCustomObjectName("Building ("..faction..")")
						Object:showFlyText("crafting", "tool_status_working", 0, 255, 255)
						createEvent(11000,"bf_gcw_sensor_menu","testb",pSceneObject,faction)
						createEvent(1000,"bf_gcw_sensor_menu","testc",pPlayer,faction)
						ltoSOB:setPvpStatusBitmask(1)
						playerCreature:setPosture(1)
					end
				end
				if (selectedID == 111) and playerCreature:hasSkill("combat_smuggler_novice") and readData((pointer)..":bf_sliced") == 1 then
					bf_gcw_troop_menu:slice(pSceneObject,pPlayer,pointer)
				end

			elseif (selectedID == 21) then
				bf_gcw_sensor_menu:setSabotage(pSceneObject,pPlayer,faction)
			end
		end		
-- Sensor Spawner
	elseif ltoSOB:getPvpStatusBitmask() == 4 and (name == "Rebel Sensor" or name == "Imperial Sensor") then
		if ltoSOB:getFaction() == LuaTangibleObject(pPlayer):getFaction() then
			if (selectedID == 100) then
				bf_gcw_sensor_menu:checkStatus(pSceneObject)
			elseif (selectedID == 25) then
				if ltoSOB:isRebel() then
					Object:setCustomObjectName("(Rebel Sensor)")
				else
					Object:setCustomObjectName("(Imperial Sensor)")
				end	
				bf_gcw_sensor_menu:spawnTroop(pSceneObject)
			elseif playerCreature:hasSkill("crafting_artisan_master") then
				if (selectedID == 26) then
					bf_gcw_sensor_menu:setUpgrade(pSceneObject,pPlayer,":bf_Armor","armorsmith",faction)
				elseif (selectedID == 27) then
					bf_gcw_sensor_menu:setUpgrade(pSceneObject,pPlayer,":bf_Weapon","weaponsmith",faction)
				elseif (selectedID == 28) then
					bf_gcw_sensor_menu:setUpgrade(pSceneObject,pPlayer,":bf_Ham","chef",faction)
				elseif (selectedID == 29) then
					if rank < readData((pointer)..":bf_Armor") and rank < readData((pointer)..":bf_Weapon") and rank < readData((pointer)..":bf_Ham") then
						bf_gcw_sensor_menu:setUpgrade(pSceneObject,pPlayer,":bf_Rank","tailor",faction)
					end
				end
			end
			if (selectedID == 111) and playerCreature:hasSkill("combat_smuggler_novice") and readData((pointer)..":bf_sliced") == 1 then
				bf_gcw_troop_menu:slice(pSceneObject,pPlayer,pointer)
			end 
		elseif (selectedID == 24) then
			bf_gcw_sensor_menu:setSabotage(pSceneObject,pPlayer,faction)
		end
	end
	return 0
end

--Check Status
function bf_gcw_sensor_menu:checkStatus(pSceneObject)
	if LuaSceneObject(pSceneObject) ~= nil then
		local pointer = ("bf_troop:"..tostring(pSceneObject))
		local status = "Sensor Status"
		status = (status.."\nLifespan: "..readData((pointer)..":bf_Armor") )
		status = (status.."\nRecharge: "..readData((pointer)..":bf_Ham") )
		status = (status.."\nRange: "..readData((pointer)..":bf_Weapon"))
		status = (status.."\nRank: "..readData((pointer)..":bf_Rank"))
		local sliced = (readData(pointer..":bf_sliced"))
			if sliced == 2 then
				status = (status.."\nSliced: TRUE")
			else
				status = (status.."\nSliced: False")
			end

		spatialChat(pSceneObject, status)
	end
	return 0
end

--test capture
function bf_gcw_sensor_menu:testa(pSceneObject)
	local Object = LuaSceneObject(pSceneObject)
	local ltObject = LuaTangibleObject(pSceneObject)
	local name = Object:getCustomObjectName()
	if name == "Capture Aborted" then
		Object:setCustomObjectName("Sensor Control Point")
		ltObject:setPvpStatusBitmask(0)
		return 0
	elseif  name == "Capturing (Rebel)" then
		Object:setCustomObjectName("Sensor Control Point (Rebel)")
		ltObject:setFaction(0x16148850)
	elseif name == "Capturing (Imperial)" then
		Object:setCustomObjectName("Sensor Control Point (Imperial)")
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
function bf_gcw_sensor_menu:testb(pSceneObject,faction)
	local Object = LuaSceneObject(pSceneObject)
	local name = Object:getCustomObjectName()
	if name == "Build Aborted ("..faction..")" then
		Object:setCustomObjectName("Sensor Control Point ("..faction..")")
		LuaTangibleObject(pSceneObject):setPvpStatusBitmask(0)
	elseif name == "Building ("..faction..")" then
		Object:setCustomObjectName(""..faction.." Sensor")
		LuaTangibleObject(pSceneObject):setPvpStatusBitmask(4)
	end

	return 0
end

--position test
function bf_gcw_sensor_menu:testc(pPlayer,faction)
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

	elseif name == faction.." Sensor" or name == "Sensor Control Point ("..faction..")" or name == "Work Complete" then
		Object:showFlyText("crafting", "tool_status_finished", 0, 255, 255)
		player:setPosture(0)
		return 0
	end
	createEvent(1000,"bf_gcw_sensor_menu","testc",pPlayer,faction)
	return 0
end

-- Spawn Turret
function bf_gcw_sensor_menu:spawnTroop(pSceneObject)
	LuaTangibleObject(pSceneObject):setPvpStatusBitmask(6)
	local sObject = LuaSceneObject(pSceneObject)
	local sOBX = sObject:getPositionX()
	local sOBZ = sObject:getPositionZ()
	local sOBY = sObject:getPositionY()
	local sOBD = sObject:getDirectionAngle()
	local sOBP = sObject:getParentID()
	local zone = sObject:getZoneName()
	local troop = "object/installation/battlefield/destructible/antenna_tatt_style_1.iff"
	local sensor = spawnSceneObject(zone,troop,sOBX,sOBZ-.5,sOBY,sOBP,math.rad(sOBD))
	local turret = LuaSceneObject(sensor)
	local name = LuaSceneObject(pSceneObject):getCustomObjectName()
	local pointer = ("bf_troop:"..tostring(pSceneObject))
	local rank = readData((pointer)..":bf_Rank")
	local timer = 180000 * rank
	local pType = readData((pointer)..":bf_type")
	if  name == "(Rebel Sensor)" then --set name and faction to reb
		turret:setCustomObjectName("Rebel Sensor")
		LuaTangibleObject(sensor):setFaction(0x16148850)
		createEvent(1000,"bf_gcw_sensor_menu","scanInvis",sensor,timer)
	elseif name == "(Imperial Sensor)" then --set name and faction to imp
		turret:setCustomObjectName("Imperial Sensor")
		LuaTangibleObject(sensor):setFaction(0xDB4ACC54)
		createEvent(1000,"bf_gcw_sensor_menu","scanInvis",sensor,timer)
	end

	local tobID = turret:getObjectID()
	local sobID = sObject:getObjectID()
	writeData(tobID..":bf_Capturing",sobID,true)
	createEvent(timer,"bf_gcw_sensor_menu","kill",sensor)
	print("timer start",timer)
	return 0
end

function bf_gcw_sensor_menu:scanInvis(pSensor,timer)
	print("timer",timer)
	local sensor = LuaSceneObject(pSensor)
	local tobID = sensor:getObjectID()
	local sobID = readData((tobID)..":bf_Capturing")
	local pSceneObject = getSceneObject(sobID)
	local name = sensor:getCustomObjectName()
	local pointer = ("bf_troop:"..tostring(pSceneObject))
	local rank = readData((pointer)..":bf_Rank")
	print("rank",rank)
	local pulse = (25000 - (rank*5000))
	print("pulse",pulse)
	local range = 10+(10*rank)
	print("range",range)
	local decloakChance = 10+(5*rank)
	print("decloak",decloakChance)
	sensor:scan( LuaTangibleObject(pSensor):getFaction(), range, decloakChance )--scan(faction,range,chance)
	local timer = timer - pulse
	if timer > 0 then
		createEvent(pulse,"bf_gcw_sensor_menu","scanInvis",pSensor,timer)
	end
	return 0
end

--Sensor kill
function bf_gcw_sensor_menu:kill(pSensor)
	local LTsensor = LuaTangibleObject(pSensor)
	spatialChat(pSensor,"Sensor Lifespan Delpleated")
	LTsensor:setConditionDamage(2000)
	bf_gcw_sensor_menu:troopsDead(pSensor)
	return 0
end

--notify troop died
function bf_gcw_sensor_menu:troopsDead(trooper)
	--print("trooper",trooper)
	--print("sob",LuaSceneObject(trooper))
	local tobID = LuaSceneObject(trooper):getObjectID()
	local sobID = readData((tobID)..":bf_Capturing")
	local pSceneObject = getSceneObject(sobID)
	local pointer = ("bf_troop:"..tostring(pSceneObject))
	local rank = readData((pointer)..":bf_Rank")
	local timer = 70000 - (rank*10000)
	createEvent(20000,"bf_gcw_crafting_menu","destroy",trooper)
	createEvent(timer,"bf_gcw_sensor_menu","resetSpawn",pSceneObject)
	return 0
end

--Reset Spawn
function bf_gcw_sensor_menu:resetSpawn(pSceneObject)
	local name = LuaSceneObject(pSceneObject):getCustomObjectName()
	if name == "(Rebel Sensor)" or name == "(Imperial Sensor)" then
		local pointer = ("bf_troop:"..tostring(pSceneObject))
		local pType = readData((pointer)..":bf_type")
		bf_gcw_troop_menu:resetStatic(pSceneObject,pType)
		bf_gcw_troop_menu:rename(pSceneObject, "Sensor Control Point")
		LuaTangibleObject(pSceneObject):setPvpStatusBitmask(0)
	end
end

--Sabotage   ( LOOP )
function bf_gcw_sensor_menu:Sabotage(pSceneObject,oldName)
	local Object = LuaSceneObject(pSceneObject)
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
		--print("timer",timer)
		timer = (timer - 5)
		if timer > 0 then
			writeData(pointer..":bf_timer",timer)
			createEvent(5000,"bf_gcw_sensor_menu","Sabotage",pSceneObject,oldName)
		else
			Object:setCustomObjectName("Work Complete")
			--if clonerrank > 1 then reduce it and use old name, else
			local rank = readData((pointer)..":bf_Rank")
			--print("rank, obType",rank,obType)
			if rank == 1 then
				LuaTangibleObject(pSceneObject):setPvpStatusBitmask(0)
				if obType ~= 0 then
					bf_gcw_troop_menu:resetStatic(pSceneObject,obType)
					playerCreature:sendSystemMessage("Control Point Reset.")
					createEvent(3000,"bf_gcw_troop_menu","rename",pSceneObject,"Sensor Control Point")
					return 0
				end
				bf_gcw_troop_menu:resetStatic(pSceneObject,obType)
				createEvent(3000,"bf_gcw_troop_menu","rename",pSceneObject,"Sensor Control Point")
				--LuaTangibleObject(pSceneObject):setFaction(0)
				return 0
			else
				writeData((pointer)..":bf_Rank",rank-1)
				createEvent(3000,"bf_gcw_troop_menu","rename",pSceneObject,oldName)
			end
			LuaTangibleObject(pSceneObject):setPvpStatusBitmask(mask-1)
		end
	end
	return 0
end

--set Sabotage
function bf_gcw_sensor_menu:setSabotage(pSceneObject,pPlayer,faction)
	if LuaSceneObject(pSceneObject) ~= nil and pPlayer ~= nil then
		local sobID = LuaSceneObject(pSceneObject):getObjectID()
		local Object = LuaSceneObject(pSceneObject)
		local name = Object:getCustomObjectName()
		local pointer = ("bf_troop:"..tostring(pSceneObject))
		local rank = readData((pointer)..":bf_Rank")
		local timer = (rank*20)
		local obType = readData((pointer)..":bf_type")
		if rank == 1 and LuaTangibleObject(pSceneObject):getPvpStatusBitmask() == 0 and obType ~= 0 then
			LuaCreatureObject(pPlayer):sendSystemMessage("This Object cannot be sabotaged further at this time.")
			return 0
		end
		writeData(pointer..":bf_timer",timer)
		LuaSceneObject(pSceneObject):setCustomObjectName("Sabotaging")
		LuaCreatureObject(pPlayer):setPosture(1)
		LuaTangibleObject(pSceneObject):setPvpStatusBitmask(LuaTangibleObject(pSceneObject):getPvpStatusBitmask()+1)
		createEvent(4999,"bf_gcw_sensor_menu","Sabotage",pSceneObject,name)
		createEvent(1000,"bf_gcw_sensor_menu","testc",pPlayer,faction)
	end
	return 0
end

--Upgrade   ( LOOP ) **
function bf_gcw_sensor_menu:Upgrade(pSceneObject,oldName)
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
			createEvent(5000,"bf_gcw_sensor_menu","Upgrade",pSceneObject,oldName)
		else
			local upgrade = readStringData((pointer)..":bf_upgrade")
			local level = readData((pointer)..upgrade)
			local award = (15 * bf_gcw_crafting_menu:getCraftBonus(getSceneObject(player)) )
			local iff = "object/tangible/mindsoft/crafting/gcw_structure_crafting_tool.iff"
			if upgrade == ":bf_Rank" then
				iff = "object/tangible/mindsoft/crafting/gcw_heavy_crafting_tool.iff"
				award = award * 1.3
			end
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
function bf_gcw_sensor_menu:setUpgrade(pSceneObject,pPlayer,pStat,pSkillName,faction)
	if LuaSceneObject(pSceneObject) ~= nil and pPlayer ~= nil then
		local playerCreature = LuaCreatureObject(pPlayer)
		local iff = "object/tangible/mindsoft/crafting/gcw_structure_crafting_tool.iff"
		if pStat == ":bf_Rank" then
			iff = "object/tangible/mindsoft/crafting/gcw_heavy_crafting_tool.iff"
		end
		if bf_gcw_crafting_menu:testItem(pPlayer, iff) then
			local pointer = ("bf_troop:"..tostring(pSceneObject))
			local bonus = 0
			local Object = LuaSceneObject(pSceneObject)
			local name = Object:getCustomObjectName()
			local State = readData((pointer)..pStat)
			local timer = (State*20)+5
			if State > 3 or State > readData((pointer)..":bf_Rank") then
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
			createEvent(4999,"bf_gcw_sensor_menu","Upgrade",pSceneObject,name)
			createEvent(1000,"bf_gcw_sensor_menu","testc",pPlayer,faction)
			Object:showFlyText("crafting", "tool_status_working", 0, 255, 255)
			playerCreature:setPosture(1)
		else
			playerCreature:sendSystemMessage("You are missing the required tool for this action")
		end
		return 0
	end
end

--	(Property of BloodfinEMU.net)	2016

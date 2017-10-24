-- By: Mindsoft (Property of BloodfinEMU.net) 2016

---------------------------------------------(Screenplay & Spawns)
dev_tool_menu = {  }

------------(Turret Spawner fill menu)
function dev_tool_menu:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
	print("filling menu")
	if pSceneObject == nil or pPlayer == nil then
		return false
	end
	local player = LuaCreatureObject(pPlayer)
	local sObject = LuaSceneObject(pSceneObject)
	local name = sObject:getCustomObjectName()
	local response = LuaObjectMenuResponse(pMenuResponse)
	local pOB = CreatureObject(pPlayer):getPlayerObject()
	local ltoSOB = LuaTangibleObject(pSceneObject)
	local playerObject = LuaPlayerObject(pOB)

	if playerObject:hasGodMode() then
		response:addRadialMenuItem(101, 3, "(STAFF) Use Dev Tool")
		response:addRadialMenuItem(102, 3, "(STAFF) Drop Troop Pylon")
		response:addRadialMenuItem(103, 3, "(STAFF) Drop Turret Pylon")
		response:addRadialMenuItem(104, 3, "(STAFF) Drop Heavy Pylon")
		response:addRadialMenuItem(105, 3, "(STAFF) Drop Wall Pylon")
	end
	response:addRadialMenuItem(106, 3, "(STAFF) Non-Mode Option")
end

------------(Turret Spawner menu select process)
function dev_tool_menu:handleObjectMenuSelect(pSceneObject, pPlayer, selectedID)
	if pSceneObject == nil or pPlayer == nil then
		return false
	end
	local playerCreature = LuaCreatureObject(pPlayer)
	local name = LuaSceneObject(pSceneObject):getCustomObjectName()
	local ltoSOB = LuaTangibleObject(pSceneObject)
	local pobID = LuaSceneObject(pPlayer):getObjectID()
	local Object = LuaSceneObject(pSceneObject)
	local sobID = Object:getObjectID()
	local pOB = CreatureObject(pPlayer):getPlayerObject()
	local playerObject = LuaPlayerObject(pOB)

	if not playerObject:hasGodMode() then
		print("\n\n       WARNING\n** Non-staff using dev tool **\n\n")	
		return 0
	end
	local iff = " "
	if (selectedID == 101) then
		print("dev tool used")
		baseBust:initiate(pSceneObject)
		return true
	elseif (selectedID == 102) then
		iff = "object/tangible/ui/gcw_spawner_npc.iff"
	elseif (selectedID == 103) then
		iff = "object/tangible/ui/gcw_spawner_turret.iff"
	elseif (selectedID == 104) then
		iff = "object/tangible/ui/gcw_spawner_heavy.iff"
	elseif (selectedID == 105) then
		iff = "object/installation/battlefield/destructible/bfield_gungan_damaged_wall_lg.iff"
		--iff = "object/tangible/ui/gcw_spawner_wall.iff"
	else
		print("\n\nImpossible ID Hooked By DEV TOOL")
	end
	dev_tool_menu:spawnPylon(pPlayer,iff)
	return 0
end

function dev_tool_menu:spawnPylon(pPlayer,iff)
	if iff == " " or pPlayer == nil then return 0 end
	local sObject = LuaSceneObject(pPlayer)
	local name = sObject:getCustomObjectName()
	local sOBX = sObject:getPositionX()
	local sOBZ = sObject:getPositionZ()
	local sOBY = sObject:getPositionY()
	local sOBD = sObject:getDirectionAngle()
	local sOBP = sObject:getParentID()
	local zone = sObject:getZoneName()
	local pPylon = spawnSceneObject(zone,iff,sOBX,sOBZ+.2,sOBY,sOBP,math.rad(sOBD))
	ltoPylon = LuaTangibleObject(pPylon)
	--ltoPylon:setOptionsBitmask(128)
	ltoPylon:setPvpStatusBit(ATTACKABLE) 
	ltoPylon:setPvpStatusBitmask(6)
	return 0
end

--	(Property of BloodfinEMU.net)	2016

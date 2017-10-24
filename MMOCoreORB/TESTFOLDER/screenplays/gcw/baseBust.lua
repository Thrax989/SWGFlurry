baseBust = ScreenPlay:new {
	numberOfActs = 1,
  	questString = "baseBust",
  	defenseTick = 350,
  	attackTick = 150,
	range = 90,
	interval = 60000,
	ticks = "20",
	lockTimer = 3600000,
}
  
registerScreenPlay("baseBust", true)
  
function baseBust:start()
	
end

--create tick area
function baseBust:initiate(pObject)
	local lsob = LuaSceneObject(pObject)
	if not lsob:isValid() then
		return 0
	end

	local name = lsob:getCustomObjectName()
	if string.match(name, "Hijacked") then
		return 0
	end

	local newName = ("\\#FF0000Hijacked "..name)
	lsob:setCustomObjectName(newName)

	local sOBX = lsob:getPositionX()
	local sOBZ = lsob:getPositionZ()
	local sOBY = lsob:getPositionY()
	local zone = lsob:getZoneName()

	local tbl = LuaSceneObject(pObject):inRangePlayers(self.range)
	foreach(tbl, function(pPlr) writeData("BBQualify"..tostring(pPlr)) end)

	local pSpawnArea = spawnSceneObject(zone, "object/active_area.iff", sOBX, sOBZ, sOBY, 0, 0, 0, 0, 0)
	if (pSpawnArea ~= nil) then
		local activeArea = LuaActiveArea(pSpawnArea)
		activeArea:setCellObjectID(0)
		activeArea:setRadius(self.range)
		createObserver(ENTEREDAREA, "baseBust", "notifySpawnArea", pSpawnArea)
		createObserver(EXITEDAREA, "baseBust", "notifySpawnAreaLeave", pSpawnArea)
		createEvent(self.interval*self.ticks, "baseBust", "terminate", pSpawnArea)
		createEvent(math.random(100)+10, "baseBust", "pulse", pObject,self.ticks)
		createEvent(self.lockTimer, "baseBust", "restoreName", pObject)
	end

	return 0
end

--remove area from world
function baseBust:terminate(pActiveArea)
	bf_tools:destroy( pActiveArea )
	return 0
end

--clear player base bust data
function baseBust:clearData(pPlayer)
	deleteData("BBQualify"..tostring(pPlayer))
	return 0
end

--restore base name
function baseBust:restoreName(pObject)
	local lsob = LuaSceneObject(pObject)
	if not lsob:isValid() then
		return 0
	end

	local name = lsob:getCustomObjectName()
	if string.match(name, "Hijacked") then
		name = string.gsub(name, "\\#FF0000Hijacked ", "")
		lsob:setCustomObjectName(name)
		return 0
	end
end

--pulse
function baseBust:pulse(pObject,ticksLeft)
	local ticks = tonumber(ticksLeft)
	if not LuaSceneObject(pObject):isValid() or ticks < 1 then
		return 0
	end
	createEvent(self.interval, "baseBust", "pulse", pObject,tostring(ticks-1))
	baseBust:getPlayers(pObject, self.attackTick, self.defenseTick, self.range)
	return 0
end

--get & reward players
function baseBust:getPlayers(pSceneObject,attackTick,defenseTick,range)
	local sObj = LuaSceneObject(pSceneObject)
	if not sObj:isValid() then
		return 0
	end

	local faction
	if sObj:isBuildingObject() then
		faction = LuaBuildingObject(pSceneObject):getFaction()
	elseif sObj:isCreature() then
		faction = LuaCreatureObject(pSceneObject):getFaction()
	else
		faction = LuaTangibleObject(pSceneObject):getFaction()
	end

	if faction == 0 then faction = 0x16148850 end

	local tbl = LuaSceneObject(pSceneObject):inRangePlayers(range)
	foreach(tbl, function(pPlr)
		local creature = LuaCreatureObject(pPlr)
		local player = LuaPlayerObject(creature:getPlayerObject())
		if player:isOvert() and (not creature:isInvisible()) and (not creature:isDead()) and readData("BBQualify"..tostring(pPlr)) == 0 then
			writeData("BBQualify"..tostring(pPlr),1)
			createEvent((self.interval-100)+math.random(90), "baseBust", "clearData", pPlr)
			if (creature:getFaction() == faction) then
				creature:sendSystemMessage("You Recieve "..tonumber(defenseTick).." GCW Defense Bonus!" )
				player:addExperience("gcw_skill_xp", defenseTick, true)
			else
				creature:sendSystemMessage("You Recieve "..tonumber(attackTick).." GCW Attack Bonus!" )
				player:addExperience("gcw_skill_xp", attackTick, true)
			end
		end
	 end)
	return 0
end

--player entered zone
function baseBust:notifySpawnArea(pActiveArea, pMovingObject)
	if not LuaSceneObject(pMovingObject):isPlayerCreature() then
		return 0
	end
	LuaCreatureObject(pMovingObject):sendSystemMessage("You have entered a Base Bust Bonus Area!") 
	return 0
end

--player exited zone
function baseBust:notifySpawnAreaLeave(pActiveArea, pMovingObject)
	if not LuaSceneObject(pMovingObject):isPlayerCreature() then
		return 0
	end
	LuaCreatureObject(pMovingObject):sendSystemMessage("You have Left a Base Bust Bonus Area!") 
	return 0
end


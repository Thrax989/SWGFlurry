click_menu = {  }

function click_menu:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
	local response = LuaObjectMenuResponse(pMenuResponse)
	local object = LuaSceneObject(pSceneObject)
	local player = LuaCreatureObject(pPlayer)
	local obStr = tostring(pSceneObject)
	local str = readStringData("spName:"..obStr)
	if str ~= nil and obStr ~= nil then
		local tbl = splitString(str,",")--(questString, functionName, testState, rewardState, timer, buttonText, id, animation)
		local state = player:getScreenPlayState( tbl[1] )
		if state == tonumber(tbl[3]) then
			response:addRadialMenuItem(100, 3, tbl[5])
		end
	end
		if player:hasSkill("admin_base") then 
		response:addRadialMenuItem(101, 1, "[ADMIN Tools]")
		response:addRadialMenuItemToRadialID(101,106,3,"[Clicky Info]")
		response:addRadialMenuItemToRadialID(101,105,3,"[Reset ALL]")
		response:addRadialMenuItemToRadialID(101,104,3,"[Group Info]")
		response:addRadialMenuItemToRadialID(101,103,3,"[Self Reset]")
		response:addRadialMenuItemToRadialID(101,102,3,"[Quest Info]")

	end
	return 0
end

function click_menu:handleObjectMenuSelect(pSceneObject, pPlayer, selectedID)
	local player = LuaCreatureObject(pPlayer)
	if player:isInCombat() or player:isIncapacitated() or player:isDead() then
		return 0
	end
	if not player:isInRangeWithObject(pSceneObject, 6) then
		return 0
	end
	if selectedID == 100 or selectedID == 20 then
		player:sendSystemMessage("Interacting...")
		local obStr = tostring(pSceneObject)
		local str = readStringData("spName:"..obStr)
		if str ~= nil and obStr ~= nil then
			local tbl = splitString(str,",")--(questString, functionName, testState, timer, buttonText, id, animation)
			local state = player:getScreenPlayState( tbl[1] )
			if player:isInRangeWithObject(pSceneObject,5) and state == tonumber(tbl[3]) then
				local timer = tonumber(tbl[4])
				createEvent(timer, tbl[1], tbl[2], pPlayer)
				if tbl[7] then
					player:doAnimation(tbl[7])
				else
					player:doAnimation("forage")
				end
			else
				player:sendSystemMessage("You cannot use this now")
			end
		end
	elseif player:hasSkill("admin_base") then
		local obStr = tostring(pSceneObject)
		local str = readStringData("spName:"..obStr)
		local tbl = splitString(str,",")--(questString, functionName, testState, timer, buttonText, id, animation)
		str = "questString, functionName, testState, timer, buttonText, id, animation"
		if selectedID == 102 then
			str = ("Quest-Line: "..tbl[1].."   Required State: "..tbl[3].."   Your State: "..tostring(player:getScreenPlayState( tbl[1] )) )
			player:sendSystemMessage(str)
		elseif selectedID == 103 then
			--bf_tools:resetQuest( player, tbl[1], 0 )
			--bf_tools:addWaypointSpecial(pPlayer,true,tbl[6])
			player:sendSystemMessage("currently disabled")
		elseif selectedID == 104 then
			player:sendSystemMessage("currently disabled")
			--bf_tools:resetQuest( player, tbl[1], 32 )
			--TODO add in group info function
		elseif selectedID == 105 then
			player:sendSystemMessage("currently disabled")
			--bf_tools:rewardGroupAll( pPlayer, "resetQuest", tbl[1], tbl[6] )
		elseif selectedID == 106 then
			player:sendSystemMessage(str)
			str = readStringData("spName:"..obStr)
			player:sendSystemMessage(str)
		end
	end
	return 0
end

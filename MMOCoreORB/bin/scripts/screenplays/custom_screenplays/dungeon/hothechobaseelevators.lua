
HothEchoBaseElevatorsScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "HothEchoBaseElevatorsScreenPlay",
}
 
registerScreenPlay("HothEchoBaseElevatorsScreenPlay", true)
 
function HothEchoBaseElevatorsScreenPlay:start()
	if (isZoneEnabled("dungeon2")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end



function HothEchoBaseElevatorsScreenPlay:spawnSceneObjects()


local pCollector1 = spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_down.iff",-1.1,64.3,101.8,14201113,0,0,0,0)

	local collector1 = LuaSceneObject(pCollector1)
	collector1:setCustomObjectName("\\#FF0000Down")
	createObserver(OBJECTRADIALUSED, "HothEchoBaseElevatorsScreenPlay", "teleportdowncommand", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function HothEchoBaseElevatorsScreenPlay:teleportdowncommand(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("dungeon2", 82.6, -14.6, 265.8, 14201134)
	return 0


end




function HothEchoBaseElevatorsScreenPlay:spawnMobiles()




end

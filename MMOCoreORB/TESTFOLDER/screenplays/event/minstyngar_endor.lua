minstyngar_endorScreenplay = ScreenPlay:new {
	numberOfActs = 1,

	spawnPoints = {
		{x= 1,y= 1,radius= 4000 },
		{x= -2500,y= 2500,radius= 2000},
		{x= 2500,y= 2500,radius= 2000},
		{x= 2500,y= -2500,radius= 2000},
		{x= -2500,y= -2500,radius= 2000},
	}
}
registerScreenPlay("minstyngar_endorScreenplay", true)

function minstyngar_endorScreenplay:start()
	if (isZoneEnabled("endor")) then
		self:spawnMobiles(self.spawnPoints)
	end
end

function minstyngar_endorScreenplay:spawnMobiles(spawnList) --spawn all mobiles in the list
	for k,v in ipairs(spawnList) do --for each indexed item in the spawn list
		local pBoss = spawnMobile("endor", "minstyngar", -1, math.random(v.radius) + v.x, 0, math.random(v.radius) + v.y, math.random(360), 0)
		local creature = CreatureObject(pBoss)
		creature:setScreenPlayState(k, "minstyngar_endorScreenplay")
		createObserver(OBJECTDESTRUCTION, "minstyngar_endorScreenplay", "bossDead", pBoss)
	end
end

function minstyngar_endorScreenplay:bossDead(pBoss)
	local respawnTimer = 3600*1000
	createEvent(respawnTimer,"minstyngar_endorScreenplay","newSpawn",pBoss)
	createEvent(120*1000,"minstyngar_endorScreenplay","KillBoss",pBoss) --create event to destroy old boss' corpse and data
	return 0
end

function minstyngar_endorScreenplay:newSpawn(pBoss)
	print("Minstyngar Killed")
	local creature = CreatureObject(pBoss) --get creature object
	local listNum = creature:getScreenPlayState("minstyngar_endorScreenplay") --get list number from objects screenplay state
	local v = self.spawnPoints[listNum] --get spawn table for boss object and store it in v


	local pBoss = spawnMobile("endor", "minstyngar", -1, math.random(v.radius) + v.x, 0, math.random(v.radius) + v.y, math.random(360), 0) --spawn new boss
	local creature = CreatureObject(pBoss) --get new boss object

	creature:setScreenPlayState(listNum, "minstyngar_endorScreenplay") --store the listnumber for the new boss in it's screenplay state
	createObserver(OBJECTDESTRUCTION, "minstyngar_endorScreenplay", "bossDead", pBoss) --create observer to track boss' death event

	--local bossAI = LuaAiAgent(pBoss) --TODO create ai agent for the new boss (not working as is)
	--bossAI:setAiTemplate("idlewander") --TODO set the new boss' ai agent to wander

	return 0
end


function minstyngar_endorScreenplay:KillBoss(pBoss) --Destroy boss object and it's data
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted Minstyngar Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
		SceneObject(pBoss):destroyObjectFromDatabase()
	end
	return 0
end

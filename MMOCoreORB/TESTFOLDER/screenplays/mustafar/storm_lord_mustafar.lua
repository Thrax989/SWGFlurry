storm_lord_mustafarScreenplay = ScreenPlay:new {
	numberOfActs = 1,

	spawnPoints = {
		{x= -2623,y= 3161,radius= 1}
	}
}
registerScreenPlay("storm_lord_mustafarScreenplay", true)

function storm_lord_mustafarScreenplay:start()
	if (isZoneEnabled("mustafar")) then
		self:spawnMobiles(self.spawnPoints)
	end
end

function storm_lord_mustafarScreenplay:spawnMobiles(spawnList) --spawn all mobiles in the list
	for k,v in ipairs(spawnList) do --for each indexed item in the spawn list
		local pBoss = spawnMobile("mustafar", "storm_lord", -1, math.random(v.radius) + v.x, 0, math.random(v.radius) + v.y, math.random(360), 0)
		local creature = CreatureObject(pBoss)
		creature:setScreenPlayState(k, "storm_lord_mustafarScreenplay")
		createObserver(OBJECTDESTRUCTION, "storm_lord_mustafarScreenplay", "bossDead", pBoss)
		print("observers created")
	end
end

function storm_lord_mustafarScreenplay:bossDead(pBoss)
	local respawnTimer = 3600*1000
	createEvent(respawnTimer,"storm_lord_mustafarScreenplay","newSpawn",pBoss)
	createEvent(120*1000,"storm_lord_mustafarScreenplay","KillBoss",pBoss) --create event to destroy old boss' corpse and data
	return 0
end

function storm_lord_mustafarScreenplay:newSpawn(pBoss)
	print("Storm Lord Killed")
	local creature = CreatureObject(pBoss) --get creature object
	local listNum = creature:getScreenPlayState("storm_lord_mustafarScreenplay") --get list number from objects screenplay state
	local v = self.spawnPoints[listNum] --get spawn table for boss object and store it in v


	local pBoss = spawnMobile("mustafar", "storm_lord", -1, math.random(v.radius) + v.x, 0, math.random(v.radius) + v.y, math.random(360), 0) --spawn new boss
	local creature = CreatureObject(pBoss) --get new boss object

	creature:setScreenPlayState(listNum, "storm_lord_mustafarScreenplay") --store the listnumber for the new boss in it's screenplay state
	createObserver(OBJECTDESTRUCTION, "storm_lord_mustafarScreenplay", "bossDead", pBoss) --create observer to track boss' death event
	
	--local bossAI = LuaAiAgent(pBoss) --TODO create ai agent for the new boss (not working as is)
	--bossAI:setAiTemplate("idlewander") --TODO set the new boss' ai agent to wander

	return 0
end


function storm_lord_mustafarScreenplay:KillBoss(pBoss) --Destroy boss object and it's data
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted Storm Lord Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
		SceneObject(pBoss):destroyObjectFromDatabase()
	end
	return 0
end
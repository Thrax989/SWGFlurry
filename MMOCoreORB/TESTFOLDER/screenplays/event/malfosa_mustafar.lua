malfosa_mustafarScreenplay = ScreenPlay:new {
	numberOfActs = 1,

	spawnPoints = {
		{x= -347,y= 2390,radius= 800 }
	}
}
registerScreenPlay("malfosa_mustafarScreenplay", true)

function malfosa_mustafarScreenplay:start()
	if (isZoneEnabled("mustafar")) then
		self:spawnMobiles(self.spawnPoints)
	end
end

function malfosa_mustafarScreenplay:spawnMobiles(spawnList) --spawn all mobiles in the list
	for k,v in ipairs(spawnList) do --for each indexed item in the spawn list
		local pBoss = spawnMobile("mustafar", "sher_kar_malfosa", -1, math.random(v.radius) + v.x, 0, math.random(v.radius) + v.y, math.random(360), 0)
		local creature = CreatureObject(pBoss)
		creature:setScreenPlayState(k, "malfosa_mustafarScreenplay")
		createObserver(OBJECTDESTRUCTION, "malfosa_mustafarScreenplay", "bossDead", pBoss)
		createObserver(OBJECTDESTRUCTION, "Quest_Engine_Demo", "malfosa", pBoss)--Mindsoft added for musty main quest line
		print("observers created")
	end
end

function malfosa_mustafarScreenplay:bossDead(pBoss)
	local respawnTimer = 3600*1000
	createEvent(respawnTimer,"malfosa_mustafarScreenplay","newSpawn",pBoss)
	createEvent(120*1000,"malfosa_mustafarScreenplay","KillBoss",pBoss) --create event to destroy old boss' corpse and data
	return 0
end

function malfosa_mustafarScreenplay:newSpawn(pBoss)
	print("Malfosa Killed")
	local creature = CreatureObject(pBoss) --get creature object
	local listNum = creature:getScreenPlayState("malfosa_mustafarScreenplay") --get list number from objects screenplay state
	local v = self.spawnPoints[listNum] --get spawn table for boss object and store it in v


	local pBoss = spawnMobile("mustafar", "sher_kar_malfosa", -1, math.random(v.radius) + v.x, 0, math.random(v.radius) + v.y, math.random(360), 0) --spawn new boss
	local creature = CreatureObject(pBoss) --get new boss object

	creature:setScreenPlayState(listNum, "malfosa_mustafarScreenplay") --store the listnumber for the new boss in it's screenplay state
	createObserver(OBJECTDESTRUCTION, "malfosa_mustafarScreenplay", "bossDead", pBoss) --create observer to track boss' death event
	createObserver(OBJECTDESTRUCTION, "Quest_Engine_Demo", "malfosa", pBoss)--Mindsoft added for musty main quest line

	--local bossAI = LuaAiAgent(pBoss) --TODO create ai agent for the new boss (not working as is)
	--bossAI:setAiTemplate("idlewander") --TODO set the new boss' ai agent to wander

	return 0
end


function malfosa_mustafarScreenplay:KillBoss(pBoss) --Destroy boss object and it's data
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted Malfosa Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
		SceneObject(pBoss):destroyObjectFromDatabase()
	end
	return 0
end

easter_yavin_huntScreenplay = ScreenPlay:new {
	numberOfActs = 1,

	spawnPoints = {
		{x= 1,y= 1,radius= 4000 },
		{x= -2500,y= 2500,radius= 2000},
		{x= 2500,y= 2500,radius= 2000},
		{x= 2500,y= -2500,radius= 2000},
		{x= -2500,y= -2500,radius= 2000}
	}
}
registerScreenPlay("easter_yavin_huntScreenplay", true)

function easter_yavin_huntScreenplay:start()
	print("easter yavin hunt screenplay started")
	if (isZoneEnabled("yavin4")) then
		self:spawnMobiles(self.spawnPoints)
	end
end

function easter_yavin_huntScreenplay:spawnMobiles(spawnList) --spawn all mobiles in the list
	for k,v in ipairs(spawnList) do --for each indexed item in the spawn list
		local pBoss = spawnMobile("yavin4", "killer_bunny", -1, math.random(v.radius) + v.x, 0, math.random(v.radius) + v.y, math.random(360), 0)
		local creature = CreatureObject(pBoss)
		creature:setScreenPlayState(k, "easter_yavin_huntScreenplay")
		createObserver(OBJECTDESTRUCTION, "easter_yavin_huntScreenplay", "bossDead", pBoss)
	end
end

function easter_yavin_huntScreenplay:bossDead(pBoss)
	local respawnTimer = 3600*1000
	createEvent(respawnTimer,"easter_yavin_huntScreenplay","newSpawn",pBoss)
	createEvent(120*1000,"easter_yavin_huntScreenplay","KillBoss",pBoss) --create event to destroy old boss' corpse and data
	return 0
end

function easter_yavin_huntScreenplay:newSpawn(pBoss)
	print("Killer Bunny Exterminated")
	local creature = CreatureObject(pBoss) --get creature object
	local listNum = creature:getScreenPlayState("easter_yavin_huntScreenplay") --get list number from objects screenplay state
	local v = self.spawnPoints[listNum] --get spawn table for boss object and store it in v


	local pBoss = spawnMobile("yavin4", "killer_bunny", -1, math.random(v.radius) + v.x, 0, math.random(v.radius) + v.y, math.random(360), 0) --spawn new boss
	local creature = CreatureObject(pBoss) --get new boss object

	creature:setScreenPlayState(listNum, "easter_yavin_huntScreenplay") --store the listnumber for the new boss in it's screenplay state
	createObserver(OBJECTDESTRUCTION, "easter_yavin_huntScreenplay", "bossDead", pBoss) --create observer to track boss' death event

	--local bossAI = LuaAiAgent(pBoss) --TODO create ai agent for the new boss (not working as is)
	--bossAI:setAiTemplate("idlewander") --TODO set the new boss' ai agent to wander

	return 0
end


function easter_yavin_huntScreenplay:KillBoss(pBoss) --Destroy boss object and it's data
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted Yavin Easter Bunny Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
		SceneObject(pBoss):destroyObjectFromDatabase()
	end
	return 0
end

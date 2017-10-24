exar_yavinScreenplay = ScreenPlay:new {
	numberOfActs = 1,

	spawnPoints = {
		{x= 1,y= 1,radius= 4000 },
		{x= -2500,y= 2500,radius= 2000},
		{x= 2500,y= 2500,radius= 2000},
		{x= 2500,y= -2500,radius= 2000},
		{x= -2500,y= -2500,radius= 2000},
		{x= 10,y= -3000,radius= 1500},
		{x= 10,y= 3000,radius= 1500}
	}
}
registerScreenPlay("exar_yavinScreenplay", true)

function exar_yavinScreenplay:start()
	if (isZoneEnabled("yavin4")) then
		self:spawnMobiles(self.spawnPoints)
	end
end

function exar_yavinScreenplay:spawnMobiles(spawnList) --spawn all mobiles in the list
	for k,v in ipairs(spawnList) do --for each indexed item in the spawn list
		local pBoss = spawnMobile("yavin4", "spirit_exar", -1, math.random(v.radius) + v.x, 0, math.random(v.radius) + v.y, math.random(360), 0)
		local creature = CreatureObject(pBoss)
		creature:setScreenPlayState(k, "exar_yavinScreenplay")
		createObserver(OBJECTDESTRUCTION, "exar_yavinScreenplay", "bossDead", pBoss)
	end
end

function exar_yavinScreenplay:bossDead(pBoss)
	print("Exar Killed")
	local creature = CreatureObject(pBoss) --get creature object
	local listNum = creature:getScreenPlayState("exar_yavinScreenplay") --get list number from objects screenplay state
	local v = self.spawnPoints[listNum] --get spawn table for boss object and store it in v
	
	createEvent(120*1000,"exar_yavinScreenplay","KillBoss",pBoss) --create event to destroy old boss' corpse and data

	local pBoss = spawnMobile("yavin4", "spirit_exar", -1, math.random(v.radius) + v.x, 0, math.random(v.radius) + v.y, math.random(360), 0) --spawn new boss
	local creature = CreatureObject(pBoss) --get new boss object

	creature:setScreenPlayState(listNum, "exar_yavinScreenplay") --store the listnumber for the new boss in it's screenplay state
	createObserver(OBJECTDESTRUCTION, "exar_yavinScreenplay", "bossDead", pBoss) --create observer to track boss' death event

	--local bossAI = LuaAiAgent(pBoss) --TODO create ai agent for the new boss (not working as is)
	--bossAI:setAiTemplate("idlewander") --TODO set the new boss' ai agent to wander

	return 0
end


function exar_yavinScreenplay:KillBoss(pBoss) --Destroy boss object and it's data
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted Exar Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
		SceneObject(pBoss):destroyObjectFromDatabase()
	end
	return 0
end

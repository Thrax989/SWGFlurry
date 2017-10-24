kaas_mutantScreenplay = ScreenPlay:new {
	numberOfActs = 1,

	spawnPoints = {
		{x= 1,y= 1,radius= 4000 }
	}
}
registerScreenPlay("kaas_mutantScreenplay", true)

function kaas_mutantScreenplay:start()
	if (isZoneEnabled("kaas")) then
		self:spawnMobiles(self.spawnPoints)
	end
end

function kaas_mutantScreenplay:spawnMobiles(spawnList) --spawn all mobiles in the list
	for k,v in ipairs(spawnList) do --for each indexed item in the spawn list
		local pBoss = spawnMobile("kaas", "mutated_ysalamiri", -1, math.random(v.radius) + v.x, 0, math.random(v.radius) + v.y, math.random(360), 0)
		local creature = CreatureObject(pBoss)
		creature:setScreenPlayState(k, "kaas_mutantScreenplay")
		createObserver(OBJECTDESTRUCTION, "kaas_mutantScreenplay", "bossDead", pBoss)
	end
end

function kaas_mutantScreenplay:bossDead(pBoss)
	local respawnTimer = 3600*1000
	createEvent(respawnTimer,"kaas_mutantScreenplay","newSpawn",pBoss)
	createEvent(120*1000,"kaas_mutantScreenplay","KillBoss",pBoss) --create event to destroy old boss' corpse and data
	return 0
end

function kaas_mutantScreenplay:newSpawn(pBoss)
	print("Mutated Ysalamiri Killed")
	local creature = CreatureObject(pBoss) --get creature object
	local listNum = creature:getScreenPlayState("kaas_mutantScreenplay") --get list number from objects screenplay state
	local v = self.spawnPoints[listNum] --get spawn table for boss object and store it in v


	local pBoss = spawnMobile("kaas", "mutated_ysalamiri", -1, math.random(v.radius) + v.x, 0, math.random(v.radius) + v.y, math.random(360), 0) --spawn new boss
	local creature = CreatureObject(pBoss) --get new boss object

	creature:setScreenPlayState(listNum, "kaas_mutantScreenplay") --store the listnumber for the new boss in it's screenplay state
	createObserver(OBJECTDESTRUCTION, "kaas_mutantScreenplay", "bossDead", pBoss) --create observer to track boss' death event

	--local bossAI = LuaAiAgent(pBoss) --TODO create ai agent for the new boss (not working as is)
	--bossAI:setAiTemplate("idlewander") --TODO set the new boss' ai agent to wander

	return 0
end


function kaas_mutantScreenplay:KillBoss(pBoss) --Destroy boss object and it's data
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted Mutated Ysalamiri Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
		SceneObject(pBoss):destroyObjectFromDatabase()
	end
	return 0
end

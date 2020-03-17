custom_exar_kun_boss_shard_1 = ScreenPlay:new {
	numberOfActs = 1,

}
spHelper = require("screenplayHelper")
registerScreenPlay("custom_exar_kun_boss_shard_1", true)
local ObjectManager = require("managers.object.object_manager")


function custom_exar_kun_boss_shard_1:start()
	if (isZoneEnabled("yavin4")) then
		self:spawnMobiles()		
 	end
end

function custom_exar_kun_boss_shard_1:spawnMobiles()
	local pTrigger = spawnMobile("yavin4", "custom_exar_kun_cultist", 3600, 5108,73,5537,0,0)
	if (pTrigger ~= nil ) then	
		createObserver(OBJECTDESTRUCTION, "custom_exar_kun_boss_shard_1", "notifyTriggerDead", pTrigger)
	end
	writeData("custom_exar_kun_boss_shard_1:spawnState",0)
         return 0
end

function custom_exar_kun_boss_shard_1:notifyTriggerDead(pTrigger, pPlayer)
	local pBoss = spawnMobile("yavin4", "custom_exar_kun_boss", 0, 5108,73,5537,0,0)
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("custom_exar_kun_boss_shard_1:spawnState", 1)
		writeData("kunboss", oBoss:getObjectID())			
		spatialChat(pBoss, "Who dares to disturb my slumber?!?! Now YOU WILL DIE!!!")	
		createObserver(OBJECTDESTRUCTION, "custom_exar_kun_boss_shard_1", "notifyBossDead", pBoss)
		createEvent(1800000, "custom_exar_kun_boss_shard_1", "despawnBoss", pBoss)		
	end)
	return 0
end

function custom_exar_kun_boss_shard_1:notifyBossDead(pBoss, pPlayer)
	writeData("custom_exar_kun_boss_shard_1:spawnState", 0)
	return 0
end

function custom_exar_kun_boss_shard_1:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("kunboss"),true)
	writeData("custom_exar_kun_boss_shard_1:spawnState", 0)
	return 0
end

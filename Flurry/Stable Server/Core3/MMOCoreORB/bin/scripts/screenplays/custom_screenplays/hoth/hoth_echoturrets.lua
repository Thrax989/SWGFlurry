local ObjectManager = require("managers.object.object_manager")

EchoTurretsScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "EchoTurretsScreenPlay",

	ebTurrets = {
		{ "object/installation/turret/turret_dish_large.iff", -5067.6, 100.4, 5676.0 },
		{ "object/installation/turret/turret_dish_large.iff", -5107.3, 106.7, 5757.0 },
		{ "object/installation/turret/turret_dish_large.iff", -5170.4, 100.4, 5818.3 },
		{ "object/installation/turret/turret_dish_large.iff", -4951.3, 81.6, 5392.0 },
	}

}

registerScreenPlay("EchoTurretsScreenPlay", true)

function EchoTurretsScreenPlay:start()
	if (isZoneEnabled("hoth")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function EchoTurretsScreenPlay:spawnSceneObjects()


	for i = 1, #self.ebTurrets, 1 do
		local turretID = readData("ebTurrets:" .. i)

		local pTurret = getSceneObject(turretID)

		if (pTurret == nil) then
			local ebTurretData = self.ebTurrets[i]
			pTurret = spawnSceneObject("hoth", ebTurretData[1], ebTurretData[2], ebTurretData[3], ebTurretData[4], 0, 0.707107, 0, 0.707107, 0)
			
			if pTurret ~= nil then
				local turret = TangibleObject(pTurret)
				turret:setFaction(FACTIONREBEL)
				turret:setPvpStatusBitmask(1)
			end

			createObserver(OBJECTDESTRUCTION, "EchoTurretsScreenPlay", "notifyTurretDestroyed", pTurret)

			if (pTurret ~= nil) then
				writeData("ebTurrets:" .. i, SceneObject(pTurret):getObjectID())
			end
		end
	end

	return 0



end


function EchoTurretsScreenPlay:notifyTurretDestroyed(pTurret, pPlayer)

	SceneObject(pTurret):destroyObjectFromWorld()
	createEvent(360000, "EchoTurretsScreenPlay", "respawnTurret", pTurret, "")
	CreatureObject(pPlayer):clearCombatState(1)
	return 0

end

function EchoTurretsScreenPlay:respawnTurret(pTurret)
	if pTurret == nil then 
		return 
	end

	TangibleObject(pTurret):setConditionDamage(0, false)
	local pZone = getZoneByName("hoth")

	if pZone == nil then 
		return 
	end

	SceneObject(pZone):transferObject(pTurret, -1, true)
end



function EchoTurretsScreenPlay:spawnMobiles()

	
end


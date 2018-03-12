--------------------------------------
--   Creator : TOXIC
--   Date : 03/10/2018
--------------------------------------
restussClonerScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "restussClonerScreenPlay",
}

registerScreenPlay("restussClonerScreenPlay", true)

function restussClonerScreenPlay:start()
	if (isZoneEnabled("rori")) then
		self:spawnSceneObjects()
	end
end

function restussClonerScreenPlay:spawnSceneObjects()
spawnSceneObject("rori", "object/building/military/outpost_cloning_facility.iff", 5276.94, 79.4459, 6093.22, -0.999848, 0, 0, 0.0174522, 0)
spawnSceneObject("rori", "object/tangible/terminal/terminal_gcw_publish_gift.iff", 5300.52, 78.2746, 6135.97, 0, 0.899309, -0, -0.437313, 0)
spawnSceneObject("rori", "object/tangible/terminal/terminal_bank.iff", 5185.61, 80, 5584.07, 0, math.rad(90))
spawnSceneObject("rori", "object/tangible/terminal/terminal_bazaar.iff", 5203, 80, 5584.36, 0, math.rad(-90))
end

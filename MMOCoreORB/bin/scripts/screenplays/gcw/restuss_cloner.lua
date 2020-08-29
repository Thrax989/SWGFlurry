--------------------------------------
--   Creator : TOXIC
--   Date : 07/29/2020
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
spawnSceneObject("rori", "object/tangible/terminal/terminal_gcw_publish_gift.iff", 5270.27, 79.9068, 6107.8, 0, 0, 0, 0, 0)
spawnSceneObject("rori", "object/tangible/terminal/greeter_terminal.iff", 5269.84, 79.9311, 6105.63, 0, 0.743145, 0, 0.669131, 0)
end

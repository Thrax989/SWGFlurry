HothStarportScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "HothStarportScreenPlay"
}

registerScreenPlay("HothStarportScreenPlay", true)

function HothStarportScreenPlay:start()
	if (isZoneEnabled("hoth")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function HothStarportScreenPlay:spawnSceneObjects()

spawnSceneObject("hoth", "object/tangible/terminal/terminal_mission.iff", -3.53275, 0, -1987.58, 0, 0.00932471, 0, 0.999957, 0)
end

function HothStarportScreenPlay:spawnMobiles()

	--outside
	spawnMobile("hoth", "smuggler", 60, -40, 0, -2025, 300, 0)
	

end

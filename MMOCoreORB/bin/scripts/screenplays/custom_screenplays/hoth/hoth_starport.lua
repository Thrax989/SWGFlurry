HothStarportScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "HothStarportScreenPlay"
}

registerScreenPlay("HothStarportScreenPlay", true)

function HothStarportScreenPlay:start()
	if (isZoneEnabled("hoth")) then
		self:spawnMobiles()
	end
end

function HothStarportScreenPlay:spawnSceneObjects()
--spawns the mission terminal
spawnSceneObject("hoth", "object/tangible/terminal/terminal_mission_imperial.iff", -3.53275, 0, -1987.58, 0, 0.00932471, 0, 0.999957, 0)
end

function HothStarportScreenPlay:spawnMobiles()

	--outside
	spawnMobile("hoth", "smuggler", 60, -40, 0, -2025, 300, 0)
	

end

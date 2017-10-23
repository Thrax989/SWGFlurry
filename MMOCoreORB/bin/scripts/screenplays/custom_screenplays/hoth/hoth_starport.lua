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

function HothStarportScreenPlay:spawnMobiles()

	--outside
	spawnMobile("hoth", "smuggler", 60, -40, 0, -2025, 300, 0)
	

end

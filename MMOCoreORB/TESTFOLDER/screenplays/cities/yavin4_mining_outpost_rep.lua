Yavin4MiningOutpostRepScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "Yavin4MiningOutpostRepScreenPlay"
}

registerScreenPlay("Yavin4MiningOutpostRepScreenPlay", true)

function Yavin4MiningOutpostRepScreenPlay:start()
	if (isZoneEnabled("yavin4")) then
		self:spawnMobiles()
	end
end

function Yavin4MiningOutpostRepScreenPlay:spawnMobiles()

end

Yavin4MiningOutpostImpScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "Yavin4MiningOutpostImpScreenPlay"
}

registerScreenPlay("Yavin4MiningOutpostImpScreenPlay", true)

function Yavin4MiningOutpostImpScreenPlay:start()
	if (isZoneEnabled("yavin4")) then
		self:spawnMobiles()
	end
end

function Yavin4MiningOutpostImpScreenPlay:spawnMobiles()

end

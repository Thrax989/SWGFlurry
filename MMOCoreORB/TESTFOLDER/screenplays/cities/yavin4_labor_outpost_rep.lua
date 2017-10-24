Yavin4LaborOutpostRepScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "Yavin4LaborOutpostRepScreenPlay"
}

registerScreenPlay("Yavin4LaborOutpostRepScreenPlay", true)

function Yavin4LaborOutpostRepScreenPlay:start()
	if (isZoneEnabled("yavin4")) then
		self:spawnMobiles()
	end
end

function Yavin4LaborOutpostRepScreenPlay:spawnMobiles()

end

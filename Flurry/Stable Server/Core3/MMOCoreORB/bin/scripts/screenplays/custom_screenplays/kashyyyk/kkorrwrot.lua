KkorrwrotScreenPlay = CityScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "KkorrwrotScreenPlay",

	planet = "kashyyyk",

}

registerScreenPlay("KkorrwrotScreenPlay", true)

function KkorrwrotScreenPlay:start()
	if (isZoneEnabled("kashyyyk")) then
		self:spawnMobiles()
		self:spawnSceneObjects()

	end
end

function KkorrwrotScreenPlay:spawnSceneObjects()


end

function KkorrwrotScreenPlay:spawnMobiles()

	spawnMobile("kashyyyk", "kkorrwrot", 3600, -1384.1, 14 3557.2, 180, 0)
	
end

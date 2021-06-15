--TEMP FOR GEONOSIS SPAWNS, WILL CHANGE WHEN PLANET IS COMPLETE
GeonosisStaticSpawnsScreenPlay = ScreenPlay:new
{
	numberOfActs = 1,

	screenplayName = "GeonosisStaticSpawnsScreenPlay",
}

registerScreenPlay("GeonosisStaticSpawnsScreenPlay", true)

function GeonosisStaticSpawnsScreenPlay:start()
	if (isZoneEnabled("lok")) then
		self:spawnMobiles()
	end
end

function GeonosisStaticSpawnsScreenPlay:spawnMobiles()

	--Need to add the rest of static spawns (Incomplete).


	spawnMobile("geonosis", "geoworld_boss1",10800, getRandomNumber(12000) + -6000, 0, getRandomNumber(12000) + -6000, getRandomNumber(360), 0)
	spawnMobile("geonosis", "geoworld_boss2",10800, getRandomNumber(12000) + -6000, 0, getRandomNumber(12000) + -6000, getRandomNumber(360), 0)
	spawnMobile("geonosis", "geoworld_boss3",10800, getRandomNumber(12000) + -6000, 0, getRandomNumber(12000) + -6000, getRandomNumber(360), 0)
	spawnMobile("geonosis", "geoworld_boss4",10800, getRandomNumber(12000) + -6000, 0, getRandomNumber(12000) + -6000, getRandomNumber(360), 0)
	spawnMobile("geonosis", "geoworld_boss5",10800, getRandomNumber(12000) + -6000, 0, getRandomNumber(12000) + -6000, getRandomNumber(360), 0)
	spawnMobile("geonosis", "geoworld_boss6",10800, getRandomNumber(12000) + -6000, 0, getRandomNumber(12000) + -6000, getRandomNumber(360), 0)
	spawnMobile("geonosis", "geoworld_boss7",10800, getRandomNumber(12000) + -6000, 0, getRandomNumber(12000) + -6000, getRandomNumber(360), 0)
	spawnMobile("geonosis", "geoworld_boss8",10800, getRandomNumber(12000) + -6000, 0, getRandomNumber(12000) + -6000, getRandomNumber(360), 0)



  spawnMobile("geonosis", "rare_force1",7200, getRandomNumber(12000) + -6000, 0, getRandomNumber(12000) + -6000, getRandomNumber(360), 0)
  spawnMobile("geonosis", "rare_force2",7200, getRandomNumber(12000) + -6000, 0, getRandomNumber(12000) + -6000, getRandomNumber(360), 0)
  spawnMobile("geonosis", "rare_force3",7200, getRandomNumber(12000) + -6000, 0, getRandomNumber(12000) + -6000, getRandomNumber(360), 0)
  spawnMobile("geonosis", "rare_force4",7200, getRandomNumber(12000) + -6000, 0, getRandomNumber(12000) + -6000, getRandomNumber(360), 0)
  spawnMobile("geonosis", "rare_force5",7200, getRandomNumber(12000) + -6000, 0, getRandomNumber(12000) + -6000, getRandomNumber(360), 0)
  spawnMobile("geonosis", "rare_force6",7200, getRandomNumber(12000) + -6000, 0, getRandomNumber(12000) + -6000, getRandomNumber(360), 0)
  spawnMobile("geonosis", "rare_force7",7200, getRandomNumber(12000) + -6000, 0, getRandomNumber(12000) + -6000, getRandomNumber(360), 0)  

end
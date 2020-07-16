DuneSeaKraytsScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("DuneSeaKraytsScreenPlay", true)

function DuneSeaKraytsScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnMobiles()
	end
end

function DuneSeaKraytsScreenPlay:spawnMobiles()

  local pAnchor = spawnMobile("tatooine", "dune_sea_queen", 10800, -5409, 37, 6113, getRandomNumber(360), 0)
  
  local xCoord = getRandomNumber(500) + -5409
  local yCoord = getRandomNumber(500) + 6113
  local zCoord = getTerrainHeight(pAnchor, xCoord, yCoord)

	spawnMobile("tatooine", "dune_sea_krayt", 1800, xCoord, zCoord, yCoord, getRandomNumber(360), 0)
	spawnMobile("tatooine", "dune_sea_krayt", 1800, xCoord, zCoord, yCoord, getRandomNumber(360), 0)
	spawnMobile("tatooine", "dune_sea_krayt", 1800, xCoord, zCoord, yCoord, getRandomNumber(360), 0)
	spawnMobile("tatooine", "dune_sea_krayt", 1800, xCoord, zCoord, yCoord, getRandomNumber(360), 0)
	spawnMobile("tatooine", "dune_sea_krayt", 1800, xCoord, zCoord, yCoord, getRandomNumber(360), 0)
	spawnMobile("tatooine", "dune_sea_krayt", 1800, xCoord, zCoord, yCoord, getRandomNumber(360), 0)
	spawnMobile("tatooine", "dune_sea_krayt", 1800, xCoord, zCoord, yCoord, getRandomNumber(360), 0)
  spawnMobile("tatooine", "dune_sea_krayt", 1800, xCoord, zCoord, yCoord, getRandomNumber(360), 0)
  spawnMobile("tatooine", "dune_sea_krayt", 1800, xCoord, zCoord, yCoord, getRandomNumber(360), 0)
  spawnMobile("tatooine", "dune_sea_krayt", 1800, xCoord, zCoord, yCoord, getRandomNumber(360), 0)

end

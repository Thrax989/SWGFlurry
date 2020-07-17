DuneSeaKraytsScreenPlay = ScreenPlay:new {
    planet = "tatooine",
    bossMobile = "dune_sea_queen",
    bossRespawn = getRandomNumber(7200) + 7200,
    xCoord = -5409,
    yCoord = 6113,
    kraytMobile = "dune_sea_krayt_dragon",
    kraytRespawn = 1800,
    offset = 500,
    maxSpawns = 20,
}

registerScreenPlay("DuneSeaKraytsScreenPlay", true)

function DuneSeaKraytsScreenPlay:start()
    if (isZoneEnabled(self.planet)) then
        self:spawnMobiles()
    end
end

function DuneSeaKraytsScreenPlay:spawnMobiles()
    local pAnchor = spawnMobile(self.planet, self.bossMobile, self.bossRespawn, self.xCoord, 37, self.yCoord, getRandomNumber(360), 0)
    self:spawnKraytMobiles(pAnchor)
end

function DuneSeaKraytsScreenPlay:spawnKraytMobiles(pAnchor)
    local count = 0
    local halfoffset = self.offset/2
    while (count <= self.maxSpawns) do
        x = getRandomNumber(halfoffset*-1, halfoffset) + self.xCoord
        y = getRandomNumber(halfoffset*-1, halfoffset) + self.yCoord
        z = getTerrainHeight(pAnchor, x, y)
        spawnMobile(self.planet, self.kraytMobile, self.kraytRespawn, x, z, y, getRandomNumber(360), 0)
        count = count + 1
    end
end
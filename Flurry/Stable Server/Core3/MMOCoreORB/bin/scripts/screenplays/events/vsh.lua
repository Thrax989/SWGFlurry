vshScreenPlay = ScreenPlay:new {
    planet = "corellia",

local xCoord = getRandomNumber(15000) + -7500
local yCoord = getRandomNumber(15000) + -7500

-- zone, x, y, min distance, max distance, force
local spawnPoint = getSpawnPoint("corellia", xCoord, yCoord, 800, 1000, true)

spawnMobile("corellia", "vsh", getRandomNumber(10) * 60000, spawnPoint[1], spawnPoint[2], spawnPoint[3], getRandomNumber(360), 0)

}

registerScreenPlay("vshScreenPlay", true)

function vshScreenPlay:start()
    if (isZoneEnabled(self.planet)) then
        self:spawnMobiles()
    end
end
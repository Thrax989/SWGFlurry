--------------------------------------
--   Creator : TOXIC
--   Date : 01/1/2019
--------------------------------------
pvpScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "pvpScreenPlay",
}

registerScreenPlay("pvpScreenPlay", true)

function pvpScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnSceneObjects()
	end
end

function pvpScreenPlay:spawnSceneObjects()
--Spawn PvP Terminal for 2v2 Imperial Vs Rebel
end

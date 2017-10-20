local screenplayHelper = {}

custom_nerf_boss_screenplay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "custom_nerf_boss_screenplay",

}

registerScreenPlay("custom_nerf_boss_screenplay", true)

function custom_nerf_boss_screenplay:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
	end
end

function custom_nerf_boss_screenplay:spawnMobiles()
  	pNerfBoss = spawnMobile("corellia", "custom_nerf_boss", 1800, 6489, 20, -2841, 15, 0)
	AiAgent(pNerfBoss):setAiTemplate("idlewander")
--Need code to add spawns as time goes by
	pNpc = spawnMobile("corellia", "custom_nerf_herd", 1800, -6157, 6, 1959, 15, 0)
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("corellia", "custom_nerf_herd", 1800, -6190, 10, 1925, 15, 0)
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("corellia", "custom_nerf_herd", 1800, -6262, 12, 1914, 15, 0)
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("corellia", "custom_nerf_herd", 1800, -6214, 10, 1990, 15, 0)
	AiAgent(pNpc):setAiTemplate("idlewander")
end


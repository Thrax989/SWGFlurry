local ObjectManager = require("managers.object.object_manager")

tatooine_mos_entha_gcw = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "tatooine_mos_entha_gcw"
}

registerScreenPlay("tatooine_mos_entha_gcw", true)

function tatooine_mos_entha_gcw:start()
	if (isZoneEnabled("tatooine")) then
	if math.random(100) >= 50 then
			self:spawnRebels()
		else
			self:spawnImperials()
		end
	end
end
function tatooine_mos_entha_gcw:spawnImperials()

	--Imp Npc's Outside
	--{"crackdown_comm_operator",400,1626.03,7.36699,3513.56,31.2213,0, "npc_imperial", ""},
	--{"crackdown_elite_sand_trooper",400,1618.9,11,3241.7,86.0025,0, "npc_imperial", ""},
	--{"crackdown_elite_sand_trooper",400,1376.6,7,3267.5,133.004,0, "npc_imperial", ""},
	spawnMobile("tatooine", "crackdown_elite_sand_trooper",400,1629.95,7.34272,3522.79,42.3654,0)
	--{"crackdown_imperial_exterminator",400,1593.3,7,3020.2,82.0024,0, "npc_imperial", ""},
	spawnMobile("tatooine", "crackdown_imperial_exterminator",400,1502.5,7,3156.9,359.01,0)
	--{"crackdown_imperial_noncom",400,1566.7,11,3230.16,357.031,0, "npc_imperial", ""},
	spawnMobile("tatooine", "crackdown_imperial_sergeant",400,1602.89,11,3255.09,268.945,0)
	--{"crackdown_imperial_sharpshooter",400,1538.7,10.866,3219.9,266.008,0, "npc_imperial", ""},
	spawnMobile("tatooine", "crackdown_sand_trooper",400,1605.71,11,3255.47,290.005,0)
	--{"crackdown_sand_trooper",400,1600.5,11,3188.98,71.1851,0, "npc_imperial", ""},
	--{"crackdown_sand_trooper",400,1738.6,7.6,3191.1,178.005,0, "npc_imperial", ""},
	--{"crackdown_sand_trooper",400,1715.3,7,3147.1,176.005,0, "npc_imperial", ""},
	--{"crackdown_sand_trooper",400,1688.8,7,3125.2,358.011,0, "npc_imperial", ""},
	--{"crackdown_sand_trooper",400,1759.6,7,3186.1,78.0023,0, "npc_imperial", ""},
	--{"crackdown_sand_trooper",400,1663,7,3109.8,147.004,0, "npc_imperial", ""},
	--{"crackdown_sand_trooper",400,1637.2,7,2980.3,181.005,0, "npc_imperial", ""},
	--{"crackdown_sand_trooper",400,1557.7,9.5,3045.7,173.005,0, "npc_imperial", ""},
	spawnMobile("tatooine", "crackdown_sand_trooper",400,1508.1,7,3127.9,174.005,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,1444.6,7,3106.9,90.0027,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,1380.4,9.5,3012.4,181.005,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,1333.6,7,3490,93.0027,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,1286.3,7.7102,2954.7,42.0012,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,1181.3,7,3087.9,281.008,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,1264,7,3159.3,278.008,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,1272.7,7,3255.9,87.0026,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,1431.6,9.5,3372.5,181.005,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,1625.7,7,2978.1,137,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,1626.92,7.34652,3512.12,27.1283,0)
	--{"crackdown_sand_trooper",400,1598.04,11,3188.15,71.1795,0, "npc_imperial", ""},
	--{"crackdown_sand_trooper",400,1407.2,7.6,3472.1,175,0, "npc_imperial", ""},
	spawnMobile("tatooine", "crackdown_sand_trooper",400,1624.2,7.41708,3516.48,81.6028,0)
	--{"crackdown_scout_trooper",400,1487.2,7,3240.8,318.009,0, "npc_imperial", ""},
	--{"crackdown_scout_trooper",400,1455.2,7,3232.5,188.006,0, "npc_imperial", ""},
	spawnMobile("tatooine", "crackdown_scout_trooper",400,1597.4,11,3186.76,74.2722,0)
	--{"crackdown_storm_commando",400,1289.2,7,3128,26.0008,0, "npc_imperial", ""},
	--{"crackdown_storm_commando",400,1282.4,7,3133.1,28.0008,0, "npc_imperial", ""},
	spawnMobile("tatooine", "crackdown_storm_commando",400,1320.9,9.5,3382.9,90.0027,0)
	spawnMobile("tatooine", "crackdown_stormtrooper",400,1401,7,3094.3,267.747,0)
	spawnMobile("tatooine", "crackdown_stormtrooper",400,1399.4,7,3094.3,268.154,0)
	spawnMobile("tatooine", "crackdown_stormtrooper",400,1628.23,7.32035,3512.41,23.9809,0)
	--{"crackdown_stormtrooper",400,1565.41,11,3235.35,191.674,0, "npc_imperial", ""},
	spawnMobile("tatooine", "crackdown_stormtrooper",400,1623.03,7.45177,3516.22,42.7463,0)
	spawnMobile("tatooine", "crackdown_stormtrooper_captain",400,1400.2,7,3090.2,241.546,0)
	spawnMobile("tatooine", "crackdown_stormtrooper_rifleman",400,1256,7.7102,2954.3,306.009,0)
	

end

function tatooine_mos_entha_gcw:spawnRebels()

        --Reb Npc's Outside
	--{"crackdown_comm_operator",400,1626.03,7.36699,3513.56,31.2213,0, "npc_imperial", ""},
	--{"crackdown_elite_sand_trooper",400,1618.9,11,3241.7,86.0025,0, "npc_imperial", ""},
	--{"crackdown_elite_sand_trooper",400,1376.6,7,3267.5,133.004,0, "npc_imperial", ""},
	spawnMobile("tatooine", "crackdown_elite_sand_trooper",400,1629.95,7.34272,3522.79,42.3654,0)
	--{"crackdown_imperial_exterminator",400,1593.3,7,3020.2,82.0024,0, "npc_imperial", ""},
	spawnMobile("tatooine", "crackdown_imperial_exterminator",400,1502.5,7,3156.9,359.01,0)
	--{"crackdown_imperial_noncom",400,1566.7,11,3230.16,357.031,0, "npc_imperial", ""},
	spawnMobile("tatooine", "crackdown_imperial_sergeant",400,1602.89,11,3255.09,268.945,0)
	--{"crackdown_imperial_sharpshooter",400,1538.7,10.866,3219.9,266.008,0, "npc_imperial", ""},
	spawnMobile("tatooine", "rebel_trooper",400,1605.71,11,3255.47,290.005,0)
	--{"rebel_trooper",400,1600.5,11,3188.98,71.1851,0, "npc_imperial", ""},
	--{"rebel_trooper",400,1738.6,7.6,3191.1,178.005,0, "npc_imperial", ""},
	--{"rebel_trooper",400,1715.3,7,3147.1,176.005,0, "npc_imperial", ""},
	--{"rebel_trooper",400,1688.8,7,3125.2,358.011,0, "npc_imperial", ""},
	--{"rebel_trooper",400,1759.6,7,3186.1,78.0023,0, "npc_imperial", ""},
	--{"rebel_trooper",400,1663,7,3109.8,147.004,0, "npc_imperial", ""},
	--{"rebel_trooper",400,1637.2,7,2980.3,181.005,0, "npc_imperial", ""},
	--{"rebel_trooper",400,1557.7,9.5,3045.7,173.005,0, "npc_imperial", ""},
	spawnMobile("tatooine", "rebel_trooper",400,1508.1,7,3127.9,174.005,0)
	spawnMobile("tatooine", "rebel_trooper",400,1444.6,7,3106.9,90.0027,0)
	spawnMobile("tatooine", "rebel_trooper",400,1380.4,9.5,3012.4,181.005,0)
	spawnMobile("tatooine", "rebel_trooper",400,1333.6,7,3490,93.0027,0)
	spawnMobile("tatooine", "rebel_trooper",400,1286.3,7.7102,2954.7,42.0012,0)
	spawnMobile("tatooine", "rebel_trooper",400,1181.3,7,3087.9,281.008,0)
	spawnMobile("tatooine", "rebel_trooper",400,1264,7,3159.3,278.008,0)
	spawnMobile("tatooine", "rebel_trooper",400,1272.7,7,3255.9,87.0026,0)
	spawnMobile("tatooine", "rebel_trooper",400,1431.6,9.5,3372.5,181.005,0)
	spawnMobile("tatooine", "rebel_trooper",400,1625.7,7,2978.1,137,0)
	spawnMobile("tatooine", "rebel_trooper",400,1626.92,7.34652,3512.12,27.1283,0)
	--{"rebel_trooper",400,1598.04,11,3188.15,71.1795,0, "npc_imperial", ""},
	--{"rebel_trooper",400,1407.2,7.6,3472.1,175,0, "npc_imperial", ""},
	spawnMobile("tatooine", "rebel_trooper",400,1624.2,7.41708,3516.48,81.6028,0)
	--{"rebel_trooper",400,1487.2,7,3240.8,318.009,0, "npc_imperial", ""},
	--{"rebel_trooper",400,1455.2,7,3232.5,188.006,0, "npc_imperial", ""},
	spawnMobile("tatooine", "rebel_staff_sergeant",400,1597.4,11,3186.76,74.2722,0)
	--{"rebel_commando",400,1289.2,7,3128,26.0008,0, "npc_imperial", ""},
	--{"rebel_commando",400,1282.4,7,3133.1,28.0008,0, "npc_imperial", ""},
	spawnMobile("tatooine", "rebel_commando",400,1320.9,9.5,3382.9,90.0027,0)
	spawnMobile("tatooine", "rebel_trooper",400,1401,7,3094.3,267.747,0)
	spawnMobile("tatooine", "rebel_trooper",400,1399.4,7,3094.3,268.154,0)
	spawnMobile("tatooine", "rebel_trooper",400,1628.23,7.32035,3512.41,23.9809,0)
	--{"rebel_trooper",400,1565.41,11,3235.35,191.674,0, "npc_imperial", ""},
	spawnMobile("tatooine", "rebel_trooper",400,1623.03,7.45177,3516.22,42.7463,0)
	spawnMobile("tatooine", "crackdown_stormtrooper_captain",400,1400.2,7,3090.2,241.546,0)
	spawnMobile("tatooine", "rebel_staff_sergeant",400,1256,7.7102,2954.3,306.009,0)
end

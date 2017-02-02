
  --*--    Created on: 1/19/2017    --*--
  --*--      Author: TOXIC	    --*--


local ObjectManager = require("managers.object.object_manager") --print("Object manager loaded for SOE")

spirit_exar = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("spirit_exar", true) --print("registered SOE")

function spirit_exar:start()
	if (isZoneEnabled("yavin4")) then
		print("yavin4 Enabled: Spawning SOE")
		self:spawnMobiles()
	end
end

function spirit_exar:spawnMobiles()

--Boss 1 Trigger
	local p1Padawan = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 3600, 5181.38, 83.5944, 5529.54, 143, 0)
        	createObserver(OBJECTDESTRUCTION, "spirit_exar", "notify1PadawanDead", p1Padawan)
--Boss 2 Trigger
	local p2Padawan = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 3600, 5115.91, 75, 5606.78, 131, 0)
        	createObserver(OBJECTDESTRUCTION, "spirit_exar", "notify2PadawanDead", p2Padawan)
--Boss 3 Trigger
	local p3Padawan = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 3600, 5006.22, 87, 5677.7, 17, 0)
        	createObserver(OBJECTDESTRUCTION, "spirit_exar", "notify3PadawanDead", p3Padawan)
--Boss 4 Trigger
	local p4Padawan = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 3600, 4979.88, 86.842, 5444.86, 106, 0)
        	createObserver(OBJECTDESTRUCTION, "spirit_exar", "notify4PadawanDead", p4Padawan)
--Boss 5 Trigger
	local p5Padawan = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 3600, 5042.3, 86.9599, 5391.06, 336, 0)
        	createObserver(OBJECTDESTRUCTION, "spirit_exar", "notify5PadawanDead", p5Padawan)
--Boss 6 Trigger
	local p6Padawan = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 3600, -11.2725, 55, 52.4342, 106, 3465362)
        	createObserver(OBJECTDESTRUCTION, "spirit_exar", "notify6PadawanDead", p6Padawan)
--Boss 7 Trigger
	local p7Padawan = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 3600, 11.5, 55, 52.5, 204, 3465362)
        	createObserver(OBJECTDESTRUCTION, "spirit_exar", "notify7PadawanDead", p7Padawan)
--Boss 8 Trigger
	local p8Padawan = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 3600, -35.8999, 32, 52.5, 282, 3465357)
        	createObserver(OBJECTDESTRUCTION, "spirit_exar", "notify8PadawanDead", p8Padawan)
--Boss 9 Trigger
	local p9Padawan = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 3600, -35.8999, 32, 59, 210, 3465357)
        	createObserver(OBJECTDESTRUCTION, "spirit_exar", "notify9PadawanDead", p9Padawan)
--Boss 10 Trigger
	local p10Padawan = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 3600, -66.6774, 2, 72.6603, 347, 3465354)
        	createObserver(OBJECTDESTRUCTION, "spirit_exar", "notify10PadawanDead", p10Padawan)

end
--Phase 1 Of 10 Boss Instance
function spirit_exar:notify1PadawanDead(p1Padawan, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("yavin4", "palpatine_elder", 0, 3721.06, 847.156, -2334.28, 117, 0) print("spawned POTDS")
			spatialChat(pBoss, "It has been said that anyone who knows the ways of the Force can set her- or himself up as a King on any world where only she or he knows the ways of the Force. Any Jedi could do this. But the Jedi, fools that they are, adhere to a religion in which the Force is used only in the service of others. How shortsighted of them. Is that not why they lost the galaxy to the dark side?")
        return 0
end
--Phase 2 Of 10 Boss Instance
function spirit_exar:notify2PadawanDead(p2Padawan, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("yavin4", "som_dark_jedi_boss", 0, 5926.69, 705.359, -4303.09, 104, 0) print("spawned POTDS")
			spatialChat(pBoss, "Equality is a lie...a myth to appease the masses. Simply look around and you will see the lie for what it is! There are those with power, those with the strength and will to lead. And there are those meant to follow - those incapable of anything but servitude and a meager, worthless existence")
        return 0
end
--Phase 3 Of 10 Boss Instance
function spirit_exar:notify3PadawanDead(p3Padawan, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("yavin4", "master_kah", 0, 1378.33, 38.9991, -6421.11, 230, 0) print("spawned POTDS")
			spatialChat(pBoss, "You Have Awoken The Ancient Spirit Of Master Kah")
			spatialChat(pBoss, "To we who dwell in the Force, normal life is little more than pretense. Our only actions of significance are those we undertake in service to the dark side")

        return 0
end
--Phase 4 Of 10 Boss Instance
function spirit_exar:notify4PadawanDead(p4Padawan, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("yavin4", "spirit_exar", 0, -4373.94, 883.465, 7587.54, 359, 0) print("spawned POTDS")
			spatialChat(pBoss, "You Have Awoken The Ancient Spirit Exar Kun")
			spatialChat(pBoss, "You'll know you're making real progress on the Sith path when you go from being suicidal to homicidal")
			spatialChat(pBoss, "Fear. Fear attracts the fearful. The strong. The weak. The innocent. The corrupt. Fear. Fear is my ally")
        return 0
end
--Phase 5 Of 10 Boss Instance
function spirit_exar:notify5PadawanDead(p5Padawan, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("yavin4", "som_kenobi_reunite_dark_jedi", 0, -6403.6, 782.893, 1784.61, 213, 0) print("spawned POTDS")
			spatialChat(pBoss, "Do you feel it? Do you feel the power of the dark side? The only real power! The only thing worth living for!")
        return 0
end
--Phase 6 Of 10 Boss Instance
function spirit_exar:notify6PadawanDead(p6Padawan, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 1, 3.12346, 55, 17.1349, 354, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 1, 3.00043, 55, 19.0396, 356, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 1, 2.89682, 55, 21.0366, 356, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 1, 2.75349, 55, 23.0005, 356, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 1, 2.66215, 55, 24.8757, 354, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 1, 1.20168, 55, 17.2431, 349, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 1, 1.05362, 55, 19.077, 356, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 1, 0.883819, 55, 21.3692, 356, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 1, 0.771231, 55, 22.9493, 356, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 1, 0.947764, 55, 25.0766, 355, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 1, -1.13556, 55, 25.0938, 359, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 1, -1.10505, 55, 23.2187, 359, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 1, -0.990747, 55, 21.2994, 355, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 1, -0.848418, 55, 19.1403, 349, 3465362) 
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 1, -0.822818, 55, 17.1363, 1, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 1, -2.88974, 55, 17.2917, 358, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 1, -2.91377, 55, 18.8587, 358, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 1, -3.02919, 55, 21.1004, 358, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 1, -3.03012, 55, 23.1535, 358, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 1, -3.051, 55, 25.4926, 358, 3465362)
        return 0
end
--Phase 7 Of 10 Boss Instance
function spirit_exar:notify7PadawanDead(p7Padawan, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 0, -2.99722, 55, 47.4599, 179, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 0, -2.98978, 55, 49.423, 179, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 0, -3.02599, 55, 51.4506, 179, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 0, -3.02468, 55, 53.3119, 179, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 0, -3.0115, 55, 55.0159, 183, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 0, -0.98184, 55, 54.8885, 170, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 0, -1.41435, 55, 53.2561, 169, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 0, -1.14851, 55, 51.4932, 181, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 0, -1.25997, 55, 49.521, 171, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 0, -1.33811, 55, 47.3425, 177, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 0, 1.11813, 55, 47.6579, 177, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 0, 0.988694, 55, 49.6127, 177, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 0, 0.875212, 55, 51.661, 177, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 0, 0.796526, 55, 53.2093, 177, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 0, 1.26792, 55, 55.013, 225, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 0, 3.09313, 55, 55.1277, 200, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 0, 3.11156, 55, 53.1639, 179, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 0, 3.11428, 55, 51.4303, 179, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 0, 3.14082, 55, 49.1829, 179, 3465362)
        local pBoss = spawnMobile("yavin4", "som_kenobi_historian_dark_jedi", 0, 3.11969, 55, 47.4015, 179, 3465362)
        return 0
end
--Phase 8 Of 10 Boss Instance
function spirit_exar:notify8PadawanDead(p8Padawan, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("yavin4", "acklay_elder_overlord", 0, -39.4874, 32, 43.2726, 21, 3465357) print("spawned POTDS")
        return 0
end
--Phase 9 Of 10 Boss Instance
function spirit_exar:notify9PadawanDead(p9Padawan, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("yavin4", "thrawn1", 0, -24.4433, 32, 49.0843, 305, 3465358) print("spawned POTDS")
        return 0
end
--Phase 10 Of 10 Boss Instance
function spirit_exar:notify10PadawanDead(p10Padawan, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("yavin4", "sher_kar", 0, 22.257, 2, 73.4836, 264, 3465355) print("spawned POTDS")
        return 0
end

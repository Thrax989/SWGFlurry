

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


end

--Phase 1 Of 5 Boss Instance [Triggered From "dark_jedi_master", [5077.57, 73.6699, 5518.51,]LOCATION OF TRIGGER]

function spirit_exar:notify1PadawanDead(p1Padawan, pKiller)

	local player = LuaCreatureObject(pKiller)

        local pBoss = spawnMobile("yavin4", "palpatine_elder", 0, 5088.44, 73.5, 5522.02, 0, 0) print("spawned POTDS")

			spatialChat(pBoss, "It has been said that anyone who knows the ways of the Force can set her- or himself up as a King on any world where only she or he knows the ways of the Force. Any Jedi could do this. But the Jedi, fools that they are, adhere to a religion in which the Force is used only in the service of others. How shortsighted of them. Is that not why they lost the galaxy to the dark side?")

        return 0

end

--Phase 2 Of 5 Boss Instance [Triggered From "dark_jedi_master", [5077.57, 73.6699, 5525.29,]LOCATION OF TRIGGER]

function spirit_exar:notify2PadawanDead(p2Padawan, pKiller)

	local player = LuaCreatureObject(pKiller)

        local pBoss = spawnMobile("yavin4", "som_dark_jedi_boss", 0, 5090.05, 73.5, 5531, 0, 0) print("spawned POTDS")

			spatialChat(pBoss, "Equality is a lie...a myth to appease the masses. Simply look around and you will see the lie for what it is! There are those with power, those with the strength and will to lead. And there are those meant to follow - those incapable of anything but servitude and a meager, worthless existence")

        return 0

end

--Phase 3 Of 5 Boss Instance [Triggered From "dark_jedi_master", [5079.4, 73.6699, 5538.11,]LOCATION OF TRIGGER]

function spirit_exar:notify3PadawanDead(p3Padawan, pKiller)

	local player = LuaCreatureObject(pKiller)

        local pBoss = spawnMobile("yavin4", "master_kah", 0, 5090.13, 73.5, 5537.83, 0, 0) print("spawned POTDS")

			spatialChat(pBoss, "You Have Awoken The Ancient Spirit Of Master Kah")

			spatialChat(pBoss, "To we who dwell in the Force, normal life is little more than pretense. Our only actions of significance are those we undertake in service to the dark side")



        return 0

end

--Phase 4 Of 5 Boss Instance [Triggered From "dark_jedi_master", [5077.52, 73.6689, 5550.29,]LOCATION OF TRIGGER]

function spirit_exar:notify4PadawanDead(p4Padawan, pKiller)

	local player = LuaCreatureObject(pKiller)

        local pBoss = spawnMobile("yavin4", "spirit_exar", 0, 5090.59, 73.5, 5545.82, 0, 0) print("spawned POTDS")

			spatialChat(pBoss, "You Have Awoken The Ancient Spirit Exar Kun")

			spatialChat(pBoss, "You'll know you're making real progress on the Sith path when you go from being suicidal to homicidal")

			spatialChat(pBoss, "Fear. Fear attracts the fearful. The strong. The weak. The innocent. The corrupt. Fear. Fear is my ally")

        return 0

end

--Phase 5 Of 5 Boss Instance [Triggered From "dark_jedi_master", [5077.57, 73.6709, 5556.94,]LOCATION OF TRIGGER]

function spirit_exar:notify5PadawanDead(p5Padawan, pKiller)

	local player = LuaCreatureObject(pKiller)

        local pBoss = spawnMobile("yavin4", "som_kenobi_reunite_dark_jedi", 0, 5090.64, 73.5, 5556.78, 0, 0) print("spawned POTDS")

			spatialChat(pBoss, "Do you feel it? Do you feel the power of the dark side? The only real power! The only thing worth living for!")

        return 0

end

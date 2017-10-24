local ObjectManager = require("managers.object.object_manager")

naboo_theed_gcw = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "naboo_theed_gcw"
}

registerScreenPlay("naboo_theed_gcw", true)

function naboo_theed_gcw:start()
	if (isZoneEnabled("naboo")) then
	if math.random(100) >= 50 then
			self:spawnRebels()
		else
			self:spawnImperials()
		end
	end
end
function naboo_theed_gcw:spawnImperials()

	--Imperial Npcs
	--{"coa2_imperial_coordinator",0,-5431.8,6,4168.58,145.531,0, "npc_imperial", ""},

	spawnMobile("naboo", "imperial_recruiter",0,-4928,6,4231,174,0)
	spawnMobile("naboo", "imperial_recruiter",0,-4936,6,4231,174,0)

	spawnMobile("naboo", "stormtrooper",400,-5206.32,6,4182.8,329.254,0)
	spawnMobile("naboo", "stormtrooper",400,-4800,6,4113,121.097,0)
	spawnMobile("naboo", "stormtrooper",400,-5126.48,6.52214,4130.79,184.164,0)
	spawnMobile("naboo", "stormtrooper",400,-5132.44,6,4087.27,158.596,0)
	spawnMobile("naboo", "stormtrooper",400,-5016.16,6,4107,226.021,0)
	spawnMobile("naboo", "stormtrooper",400,-4848.1,6.55806,4172.25,222.445,0)
	spawnMobile("naboo", "stormtrooper",400,-4933.43,6,4233.84,32.6463,0)
	spawnMobile("naboo", "stormtrooper_groupleader",400,-4857.84,6.43289,4178.31,222.445,0)
	--{"stormtrooper_groupleader",400,-5969.83,6,4246.76,173.432,0, "", "VK-481"},
	spawnMobile("naboo", "stormtrooper_rifleman",400,-5160.99,6.52214,4159.54,216.801,0)
	spawnMobile("naboo", "stormtrooper_rifleman",400,-4845.17,6.43094,4167.68,222.445,0)

end

function naboo_theed_gcw:spawnRebels()
        --Rebel NPCs
	--{"coa2_rebel_coordinator",0,-5431.8,6,4168.58,145.531,0, "npc_rebel", ""},

	spawnMobile("naboo", "rebel_recruiter",0,-4928,6,4231,174,0)
	spawnMobile("naboo", "rebel_recruiter",0,-4936,6,4231,174,0)

	spawnMobile("naboo", "rebel_trooper",400,-5206.32,6,4182.8,329.254,0)
	spawnMobile("naboo", "rebel_trooper",400,-4800,6,4113,121.097,0)
	spawnMobile("naboo", "rebel_trooper",400,-5126.48,6.52214,4130.79,184.164,0)
	spawnMobile("naboo", "rebel_trooper",400,-5132.44,6,4087.27,158.596,0)
	spawnMobile("naboo", "rebel_trooper",400,-5016.16,6,4107,226.021,0)
	spawnMobile("naboo", "rebel_trooper",400,-4848.1,6.55806,4172.25,222.445,0)
	spawnMobile("naboo", "rebel_trooper",400,-4933.43,6,4233.84,32.6463,0)
	spawnMobile("naboo", "rebel_specforce_colonel",400,-4857.84,6.43289,4178.31,222.445,0)
	--{"rebel_specforce_colonel",400,-5969.83,6,4246.76,173.432,0, "", "Veek Monmal"},
	spawnMobile("naboo", "specforce_marine",400,-5160.99,6.52214,4159.54,216.801,0)
	spawnMobile("naboo", "specforce_marine",400,-4845.17,6.43094,4167.68,222.445,0)
end

local ObjectManager = require("managers.object.object_manager")

includeFile("dungeon/geonosian_lab/conversations/geonosianConvoHandlers.lua")

GeonosianLabScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	keypadCodes = { 32281, 12872, 51892, 12753, 86332, 11380, 52577, 78660 },
	lockedCells = { 1627785, 1627786, 1627790, 1627805, 1627812, 1627815, 1627822, 1627823 },

	--debris fields, all respawns are set to 4 minutes
	debris = {
		{ template = "object/static/destructible/destructible_cave_wall_damprock.iff", x = -105.8, z = -29.6, y = -368.3, cell = 1627818 },
		{ template = "object/static/destructible/destructible_tato_drum_dented.iff", x = 37.5, z = -34.0, y = -333.5, cell = 1627822 },
		{ template = "object/static/destructible/destructible_tato_drum_storage1.iff", x = 37.6, z = -34.0, y = -334.4, cell = 1627822 },
		{ template = "object/static/destructible/destructible_tato_drum_storage1.iff", x = 37.2, z = -34.0, y = -335.2, cell = 1627822 },
		{ template = "object/static/destructible/destructible_tato_drum_storage1.iff", x = 36.4, z = -34.0, y = -335.7, cell = 1627822 },
		{ template = "object/static/destructible/destructible_tato_cave_rock_lg.iff", x = -121.3, z = -33.5, y = -226.5, cell = 1627809 },
		{ template = "object/static/destructible/destructible_tato_cave_rock_med.iff", x = -121.8, z = -33.6, y = -227.7, cell = 1627809 },
		{ template = "object/static/destructible/destructible_tato_cave_rock_med.iff", x = -121.5, z = -33.6, y = -228.4, cell = 1627809 },
		{ template = "object/static/destructible/destructible_tato_cave_rock_med.iff", x = -122.0, z = -33.6, y = -229.1, cell = 1627809 },
		{ template = "object/static/destructible/destructible_tato_cave_rock_med.iff", x = -122.3, z = -33.6, y = -228.4, cell = 1627809 },
		{ template = "object/static/destructible/destructible_tato_cave_rock_med.iff", x = -74.5, z = -21.9, y = -109.7, cell = 1627792 },
		{ template = "object/static/destructible/destructible_tato_cave_rock_med.iff", x = -75.0, z = -21.9, y = -110.3, cell = 1627792 },
		{ template = "object/static/destructible/destructible_tato_cave_rock_med.iff", x = -75.2, z = -22.0, y = -111.0, cell = 1627792 },
		{ template = "object/static/destructible/destructible_tato_cave_rock_med.iff", x = -75.3, z = -22.0, y = -111.6, cell = 1627792 },
		{ template = "object/static/destructible/destructible_tato_cave_rock_lg.iff", x = -74.1, z = -22.5, y = -110.7, cell = 1627792 }
	},

	keypads = {
		{ x = -34, z = -18, y = -31, cell = 1627784, dw = 0.707107, dx = 0, dy = 0.707107, dz = 0 },
		{ x = -47, z = -18, y = -56, cell = 1627785, dw = 1, dx = 0, dy = 0, dz = 0 },
		{ x = -105, z = -18, y = -64, cell = 1627789, dw = 0, dx = 0, dy = -1, dz = 0 },
		{ x = -79, z = -22, y = -146, cell = 1627804, dw = 1, dx = 0, dy = 0, dz = 0 },
		{ x = -67, z = -34, y = -260, cell = 1627811, dw = 1, dx = 0, dy = 0, dz = 0 },
		{ x = -133, z = -34, y = -204, cell = 1627814, dw = 0, dx = 0, dy = -1, dz = 0 },
		{ x = -4, z = -34, y = -417, cell = 1627821, dw = 0.707107, dx = 0, dy = -0.707107, dz = 0 },
		{ x = 38, z = -34, y = -333, cell = 1627822, dw = 0.707107, dx = 0, dy = -0.707107, dz = 0 }
	},

	doorActiveAreas = {
		{ worldX = -6404.5, worldZ = 64.3, worldY = -412.4, cell = 1627784 },
		{ worldX = -6376.5, worldZ = 64.3, worldY = -413.6, cell = 1627785 },
		{ worldX = -6338.8, worldZ = 64.3, worldY = -457.9, cell = 1627789 },
		{ worldX = -6284.8, worldZ = 60.3, worldY = -392.6, cell = 1627804 },
		{ worldX = -6193.3, worldZ = 48.3, worldY = -324.1, cell = 1627811 },
		{ worldX = -6204.7, worldZ = 48.3, worldY = -410.2, cell = 1627814 },
		{ worldX = -6089.5, worldZ = 48.3, worldY = -191.4, cell = 1627821 },
		{ worldX = -6181.5, worldZ = 48.3, worldY = -196.5, cell = 1627822 },
	},

	poisonShutoffDuration = 30000, --30 seconds

	geoDatapad = "object/tangible/loot/dungeon/geonosian_mad_bunker/engineering_datapad.iff",

	geoTenloss = "object/tangible/loot/loot_schematic/geonosian_tenloss_dxr6_schematic.iff"

}

registerScreenPlay("GeonosianLabScreenPlay", true)

function GeonosianLabScreenPlay:start()
	if (isZoneEnabled("yavin4")) then
		self:spawnActiveAreas()
		self:spawnSceneObjects()
		self:spawnMobiles()
		self:setupPermissionGroups()
	end
end

function GeonosianLabScreenPlay:spawnActiveAreas()
	local pActiveArea = spawnActiveArea("yavin4", "object/active_area.iff", -6435.5, 85.6, -367, 10, 1627783)
	if pActiveArea ~= nil then
		createObserver(ENTEREDAREA, "GeonosianLabScreenPlay", "notifyEnteredPoisonGas", pActiveArea)
	end

	local pGasArea = spawnActiveArea("yavin4", "object/active_area.iff", -6181.9, 48.3, -197.2, 4, 1627822)
	if pGasArea ~= nil then
		createObserver(ENTEREDAREA, "GeonosianLabScreenPlay", "notifyEnteredPoisonGas", pGasArea)
	end

	local pShockArea = spawnActiveArea("yavin4", "object/active_area.iff", -6169.0, 48.3, -382.3, 4, 1627813)
	if pShockArea ~= nil then
		createObserver(ENTEREDAREA, "GeonosianLabScreenPlay", "notifyElectroShock", pShockArea)
	end
end

function GeonosianLabScreenPlay:spawnSceneObjects()

	local pGasLeak = spawnSceneObject("yavin4", "object/tangible/dungeon/poison_gas_cloud.iff", 21.7, 3.3, -29.1, 1627783, 0, 0, 0, 0)
	if (pGasLeak ~= nil) then
		writeData("geonosian_lab:gasLeakID", SceneObject(pGasLeak):getObjectID()) --set the gas leak as started
	end

	spawnSceneObject("yavin4", "object/tangible/dungeon/poison_gas_cloud.iff", 37.6, -34.0, -334.7, 1627822, 0, 0, 0, 0)

	--Building observer to lock all security doors.
	local pBuilding = getSceneObject(1627780) -- Geo lab building
	if (pBuilding ~= nil) then
		createObserver(ENTEREDBUILDING, "GeonosianLabScreenPlay", "notifyEnteredLab", pBuilding)
	end

	--Gas Valve
	local pSceneObject = spawnSceneObject("yavin4", "object/tangible/dungeon/wall_terminal_s1.iff", 2.27, -1.9, -15.73, 1627824, 0.701707, 0, -0.701707, 0)
	if (pSceneObject ~= nil) then
		createObserver(OBJECTRADIALUSED, "GeonosianLabScreenPlay", "notifyGasValveUsed", pSceneObject);
	end
	writeData("geonosian_lab:gasleak", 1) --set the gas leak as started

	--Keypads
	for i = 1, 8, 1 do
		local kp = self.keypads[i]
		pSceneObject = spawnSceneObject("yavin4", "object/tangible/dungeon/wall_terminal_s3.iff", kp.x, kp.z, kp.y, kp.cell, kp.dw, kp.dx, kp.dy, kp.dz)

		if (pSceneObject ~= nil) then
			writeData(SceneObject(pSceneObject):getObjectID() .. ":geonosian_lab:keypad_index", i)
			createObserver(OBJECTRADIALUSED, "GeonosianLabScreenPlay", "notifyKeypadUsed", pSceneObject)
		end

		local aa = self.doorActiveAreas[i]
		local pActiveArea = spawnActiveArea("yavin4", "object/active_area.iff", aa.worldX, aa.worldZ, aa.worldY, 4, aa.cell)
		if pActiveArea ~= nil then
			writeData(SceneObject(pActiveArea):getObjectID() .. ":GeoLabKeypad", i)
			createObserver(ENTEREDAREA, "GeonosianLabScreenPlay", "notifyLockedDoorArea", pActiveArea)
		end
	end

	for i = 1, 15, 1 do
		local debrisData = self.debris[i]
		local pDebris = spawnSceneObject("yavin4", debrisData.template, debrisData.x, debrisData.z, debrisData.y, debrisData.cell, 1, 0, 0, 0)
		if (pDebris ~= nil) then
			writeData(SceneObject(pDebris):getObjectID() .. ":geonosian_lab:debris_index", i)
			createObserver(OBJECTDESTRUCTION, "GeonosianLabScreenPlay", "notifyDebrisDestroyed", pDebris)
		end
	end
end

function GeonosianLabScreenPlay:spawnMobiles()
	spawnMobile("yavin4", "biogenic_crazyguy", 1, -2.8, 10.8, 10.2, 69, 1627781)--biogen_crazy
	spawnMobile("yavin4", "biogenic_securitytech", 1, -48, -18, -31, -180, 1627785)--biogen_security
	spawnMobile("yavin4", "biogenic_scientist_human", 1, 23.8, -32, -83.2, 130, 1627798)--biogen_human
	spawnMobile("yavin4", "biogenic_construction", 1, -134.5, -21.7, -74.8, 90, 1627794)--biogen_constuc
	spawnMobile("yavin4", "biogenic_engineertech", 1,-107.7,-18,-33.8,176,1627790)--biogen_engineer
	spawnMobile("yavin4", "biogenic_assistant", 1, -36, -21.9, -162.8, 0, 1627803)--biogen_assistant
	spawnMobile("yavin4", "biogenic_scientist_generic_01", 1, -72.0, -34, -272.9, 0, 1627812)--biogen_gen01
	spawnMobile("yavin4", "biogenic_scientist_generic_02", 1, -127.2, -34, -189.0, -93, 1627815)--biogen_gen02
	spawnMobile("yavin4", "biogenic_scientist_geonosian", 1, 7.4, -22, -333, 180, 1627822) -- biogen_geo

	if isZoneEnabled("corellia") then
		spawnMobile("corellia", "herald_biogenic_teraeza", 60, 21.3645, 1.28309, 9.48413, 142.744, 1935823)
	end
	if isZoneEnabled("naboo") then
		spawnMobile("naboo", "herald_biogenic_harmon", 60, 5094, -192, 6754, -173, 0)
	end

	spawnMobile("yavin4", "herald_biogenic_gardo", 60, -3.8, 0.1, -3.8, 88, 1713374)

	spawnMobile("yavin4", "acklay",900,101.1,-34.3,-321.6,-136,1627823, true) --Randomized respawn
	spawnMobile("yavin4", "enhanced_gaping_spider",900,-130,-22.1,-85,-180,1627794, true) -- Randomized respawn

	spawnMobile("yavin4", "imperial_observer",300,-23,-22,-116,-90,1627802)
	spawnMobile("yavin4", "imperial_observer",300,-16.4,-22,-114.5,-150,1627802)
	spawnMobile("yavin4", "crazed_geonosian_guard",300,1.2,9.1,-8.1,63,1627781)
	spawnMobile("yavin4", "crazed_geonosian_guard",300,0.6,9.5,-3.5,99,1627781)
	spawnMobile("yavin4", "crazed_geonosian_guard",300,26.6,10.3,-13.3,-8,1627782)
	spawnMobile("yavin4", "crazed_geonosian_guard",300,32.3,9.5,-8.1,-105,1627782)
	spawnMobile("yavin4", "crazed_geonosian_guard",300,34.7,10.3,-14.4,-70,1627782)
	spawnMobile("yavin4", "crazed_geonosian_guard",300,37.4,9.8,-8.2,-109,1627782)
	spawnMobile("yavin4", "crazed_geonosian_guard",300,-55.9,-18,-33.9,95,1627785)
	spawnMobile("yavin4", "crazed_geonosian_guard",300,-55.6,-18,-43.2,72,1627785)
	spawnMobile("yavin4", "crazed_geonosian_guard",300,-38.7,-18,-47.5,-75,1627785)
	spawnMobile("yavin4", "crazed_geonosian_guard",300,-66.7,-19,-41.2,-77,1627788)
	spawnMobile("yavin4", "crazed_geonosian_guard",300,-70.5,-18.9,-34.5,-161,1627788)
	spawnMobile("yavin4", "crazed_geonosian_guard",300,-83.9,-18.5,-42.3,85,1627788)
	spawnMobile("yavin4", "crazed_geonosian_guard",300,-36,-22,-151.4,180,1627803)
	spawnMobile("yavin4", "crazed_geonosian_guard",300,-26.8,-22.9,-158,-90,1627803)
	spawnMobile("yavin4", "crazed_geonosian_guard",300,-19.4,-22.6,-151.7,-135,1627803)
	spawnMobile("yavin4", "cavern_spider",300,-62,-21.8,-109.6,0,1627792)
	spawnMobile("yavin4", "cavern_spider",300,-48,-21.8,-158,0,1627800)
	spawnMobile("yavin4", "cavern_spider",300,-48,-21.8,-143,0,1627800)
	spawnMobile("yavin4", "cavern_spider",300,-41,-21.8,-136,-90,1627801)
	spawnMobile("yavin4", "cavern_spider",300,-88.3,-21.8,-110.3,210,1627793)
	spawnMobile("yavin4", "cavern_spider",300,-98,-21.9,-114.7,50,1627793)
	spawnMobile("yavin4", "cavern_spider",300,-107.3,-22.2,-96.6,180,1627793)
	spawnMobile("yavin4", "cavern_spider",300,-108,-21.8,-126,0,1627793)
	spawnMobile("yavin4", "cavern_spider",300,-123,-22,-109.5,80,1627793)
	spawnMobile("yavin4", "cavern_spider",300,-134.7,-20.9,-112.2,77,1627793)
	spawnMobile("yavin4", "alert_droideka",300,-34.2,-22,-128,-180,1627801)
	spawnMobile("yavin4", "alert_droideka",300,-3.8,-30.2,-92,-180,1627796)
	spawnMobile("yavin4", "cavern_spider",300,-16.8,-30.2,-115.1,22,1627796)
	spawnMobile("yavin4", "alert_droideka",300,-18,-18,-36,0,1627784)
	spawnMobile("yavin4", "alert_droideka",300,-62,-18,-59.5,-180,1627786)
	spawnMobile("yavin4", "alert_droideka",300,-90.5,-18,-76,0,1627789)
	spawnMobile("yavin4", "alert_droideka",300,-53.5,-18.2,-81.7,-90,1627791)
	spawnMobile("yavin4", "alert_droideka",300,-108,-34,-214,89,1627808)
	spawnMobile("yavin4", "alert_droideka",300,-61.5,-34,-252,-90,1627811)
	spawnMobile("yavin4", "geonosian_scientist",300,-116.5,-20,-38.4,88,1627790)
	spawnMobile("yavin4", "enhanced_kwi",300,9.5,-16.0,-27.9,89,1627824)
	spawnMobile("yavin4", "enhanced_kwi",300,10.8,-6.3,-7.8,-93,1627824)
	spawnMobile("yavin4", "enhanced_kwi",300,-104.2,-28.7,-193.4,0,1627807)
	spawnMobile("yavin4", "enhanced_kwi",300,-143.2,-34,-180.8,-139,1627815)
	spawnMobile("yavin4", "enhanced_kliknik",300,-129.0,-34,-192.6,-32,1627815)
	spawnMobile("yavin4", "geonosian_scientist",300,-124.3,-34.0,-199.5,-60,1627815)
	spawnMobile("yavin4", "geonosian_scientist",300,-60.0,-34.0,-273.7,0,1627812)
	spawnMobile("yavin4", "alert_droideka",300,-63.9,-22.0,-143.0,-3,1627804)
	spawnMobile("yavin4", "alert_droideka",300,-129.8,-34.0,-267.9,87,1627816)
	spawnMobile("yavin4", "enhanced_kliknik",300,26,-31.5,-78,170,1627798)
	spawnMobile("yavin4", "enhanced_kliknik",300,36.5,-29.9,-82.7,-120,1627798)
	spawnMobile("yavin4", "enhanced_kliknik",300,29.5,-30.1,-88,-45,1627798)
	spawnMobile("yavin4", "enhanced_kliknik",300,-139.8,-34,-194.3,57,1627815)
	spawnMobile("yavin4", "enhanced_kliknik",300,-64.9,-34,-266.5,-143,1627812)
	spawnMobile("yavin4", "enhanced_kwi",300,-66.5,-34,-283.1,35,1627812)
	spawnMobile("yavin4", "enhanced_kliknik",300,-87,-34.1,-386.5,210,1627819)
	spawnMobile("yavin4", "cavern_spider",300,-128.2,-34.4,-322.4,-30,1627817)
	spawnMobile("yavin4", "cavern_spider",300,-143.5,-33.5,-321.7,134,1627817)
	spawnMobile("yavin4", "cavern_spider",300,-131.1,-33.9,-339.0,145,1627817)
	spawnMobile("yavin4", "cavern_spider",300,-135.5,-33.8,-342.8,-1,1627817)
	spawnMobile("yavin4", "cavern_spider",300,-118.9,-34.0,-349.2,-98,1627818)
	spawnMobile("yavin4", "cavern_spider",300,-134.5,-34.0,-373.2,-2,1627818)
	spawnMobile("yavin4", "enhanced_kliknik",300,-129.4,-33.6,-384.1,-2,1627818)
	spawnMobile("yavin4", "enhanced_force_kliknik",300,-86.5,-33.9,-372.8,-91,1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik",300,-88.0,-34.6,-365.9,-102,1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik",300,-71.5,-34,-348.1,-95,1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik",300,-72.6,-33.8,-376.0,-168,1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik",300,-72.7,-34.2,-382.5,-179,1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik",300,-69.0,-34.0,-407.2,-7,1627820)
	spawnMobile("yavin4", "enhanced_force_kliknik",300,-46.8,-34.0,-407.5,92,1627820)
	spawnMobile("yavin4", "enhanced_force_kliknik",300,-28.5,-34.2,-408.4,-27,1627820)
	spawnMobile("yavin4", "alert_droideka",300,-11.9,-34.0,-412.5,179,1627821)
	spawnMobile("yavin4", "cavern_spider",300,4.1,-34.0,-402.4,171,1627822)
	spawnMobile("yavin4", "enhanced_force_kliknik",300,16.5,-34.0,-368.3,161,1627822)
	spawnMobile("yavin4", "enhanced_kliknik",300,24.0,-34.0,-397.1,117,1627822)
	spawnMobile("yavin4", "enhanced_force_kliknik",300,22.9,-34.0,-370.1,11,1627822)
	spawnMobile("yavin4", "cavern_spider",300,24.8,-24.0,-333.8,87,1627822)
	spawnMobile("yavin4", "cavern_spider",300,13.3,-24.0,-341.6,89,1627822)
	spawnMobile("yavin4", "cavern_spider",300,13.4,-22.0,-337.3,-179,1627822)
	spawnMobile("yavin4", "enhanced_kwi",300,48.0,-34.0,-334.4,0,1627823)
	spawnMobile("yavin4", "cavern_spider",300,91.2,-33.9,-347.9,5,1627823)
	spawnMobile("yavin4", "enhanced_kliknik",300,98.0,-34.1,-334.4,-53,1627823)
	spawnMobile("yavin4", "enhanced_kliknik",300,120.2,-33.9,-330.6,-33,1627823)
	spawnMobile("yavin4", "cavern_spider",300,85.0,-33.8,-309.1,143,1627823)
	spawnMobile("yavin4", "cavern_spider",300,74.7,-34.1,-329.0,-90,1627823)
	spawnMobile("yavin4", "mercenary_sentry",300,-74.9,-22,-153.7,-119,1627805)
	spawnMobile("yavin4", "mercenary_sentry",300,-74.3,-22,-162.3,-40,1627805)
	spawnMobile("yavin4", "mercenary_sentry",300,-82.3,-22,-161.7,74,1627805)
	spawnMobile("yavin4", "mercenary_sentry",300,-82.2,-22,-155.1,106,1627805)
--custom
	spawnMobile("yavin4", "enhanced_gaping_spider", 900, 37.4778, 9.86098, -20.4351, 337, 1627783)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, 16.4847, 2.42704, -28.8011, 84, 1627783)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, 28.7123, 5.90844, -27.7786, 81, 1627783)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, 2.53042, 1.76115, -28.223, 247, 1627783)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -0.0440804, 1.7259, -24.486, 11, 1627783)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, 1.77873, -3.00351, -13.8596, 86, 1627824)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -0.0379767, -3.20563, -13.5787, 5, 1627824)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -1.95172, -3.00785, -12.7815, 290, 1627824)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, 18.8589, -8.12228, -7.78263, 268, 1627824)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, 19.8648, -10.1492, -16.7747, 187, 1627824)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, 20.155, -13.243, -23.7814, 170, 1627824)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, 16.8664, -13.2802, -28.4112, 277, 1627824)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, 2.96754, -18.299, -28.0208, 91, 1627784)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -7.34155, -18.2707, -27.84, 269, 1627784)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -19.2206, -18, -26.7798, 172, 1627784)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -33.4355, -18, -33.1, 0, 1627784)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -33.3435, -18, -30.85, 0, 1627784)
--room 1 key code room
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -37.6466, -18, -35.2805, 2, 1627785)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -36.718, -18, -32.5894, 90, 1627785)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -46.8326, -18, -33.8008, 76, 1627785)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -59.3128, -18, -31.4265, 114, 1627785)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -58.3013, -18, -39.0469, 80, 1627785)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -44.8449, -18, -54.1792, 269, 1627785)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -57.4559, -18, -52.2974, 169, 1627785)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -37.5909, -18, -51.7494, 348, 1627785)
--room 2 key code room
	spawnMobile("yavin4", "alert_droideka", 300, -60.9607, -18, -68.9275, 318, 1627786)
	spawnMobile("yavin4", "enhanced_gaping_spider", 900, -68.9267, -18.9399, -41.7186, 309, 1627788)
	spawnMobile("yavin4", "enhanced_gaping_spider", 900, -83.5864, -18.5159, -40.1805, 125, 1627788)
	spawnMobile("yavin4", "enhanced_gaping_spider", 900, -72.9359, -18.5958, -31.4524, 186, 1627788)
--room 3 key code room
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_01_m", 600, -118.322, -18, -32.3576, 251, 1627790)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_01_m", 600, -121.823, -18, -32.5331, 82, 1627790)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_01_m", 600, -119.917, -18, -34.2456, 356, 1627790)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_01_m", 600, -120.069, -18, -30.744, 187, 1627790)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_02_m", 600, -109.904, -18, -30.6376, 258, 1627790)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_02_m", 600, -110.3, -18, -40.7, 160, 1627790)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_02_m", 600, -104.794, -18, -50.6178, 195, 1627790)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_02_m", 600, -110.3, -18, -54.3831, 159, 1627790)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_02_m", 600, -109.288, -18, -61.0303, 342, 1627790)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -118.28, -18, -59.6135, 279, 1627790)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -120.048, -18, -61.3769, 357, 1627790)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -121.783, -18, -59.5831, 84, 1627790)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -119.947, -18, -57.8737, 182, 1627790)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -133.62, -18, -58.6576, 230, 1627790)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -131.78, -18, -60.0609, 207, 1627790)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -129.7, -18, -51.3, 119, 1627790)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -130.276, -18, -34.607, 144, 1627790)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -112.479, -20, -53.5682, 177, 1627790)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -127.432, -20, -53.4838, 264, 1627790)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -127.553, -20, -38.5562, 5, 1627790)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -113, -20, -38.5962, 90, 1627790)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -68.7523, -17.7989, -68.0419, 270, 1627786)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -76.0694, -17.7989, -68.1741, 284, 1627787)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -88.8837, -18.231, -67.9545, 191, 1627789)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -91.3, -18, -66.5, 328, 1627789)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -93.5098, -18, -71.9592, 271, 1627789)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -100.812, -18, -72.042, 268, 1627789) 
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -104.8, -18, -64.1, 44, 1627789) 
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -107.053, -18, -65.9966, 273, 1627789)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -76.0315, -17.8009, -71.8946, 178, 1627787)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -69.8896, -17.9063, -82.5589, 87, 1627791)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -65.8829, -17.8279, -82.0972, 88, 1627791)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -61.9428, -17.8678, -82.1405, 86, 1627791)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -62.093, -17.7989, -87.4301, 174, 1627791) 
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -62.1737, -20.2301, -97.7246, 178, 1627792)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -61.9609, -21.7989, -105.814, 178, 1627792)
--cavern room 1
	spawnMobile("yavin4", "enhanced_gaping_spider", 900, -78.8054, -22.1989, -110.868, 279, 1627793)
	spawnMobile("yavin4", "enhanced_gaping_spider", 900, -97.787, -21.9075, -113.59, 77, 1627793)
	spawnMobile("yavin4", "enhanced_gaping_spider", 900, -102.304, -21.8599, -104.253, 112, 1627793)
	spawnMobile("yavin4", "enhanced_gaping_spider", 900, -136.86, -21.0759, -110.928, 84, 1627793) 
	spawnMobile("yavin4", "enhanced_gaping_spider", 900, -132.529, -22.0242, -93.0467, 185, 1627794)
--mini boss hallway 1
	spawnMobile("yavin4", "acklay", 900, 31.255, -30.8632, -82.2567, 173, 1627798)
	--spawnMobile("yavin4", "acklay_young", 3600, 23.9835, -31.4904, -73.4157, 161, 1627798)
	--spawnMobile("yavin4", "acklay_young", 3600, 35.1533, -29.7583, -86.6539, 290, 1627798)
	--spawnMobile("yavin4", "acklay_young", 3600, 23.4561, -31.7291, -80.3411, 56, 1627798)
	--spawnMobile("yavin4", "deathsting", 3600, 26.2187, -29.8924, -98.5503, 0, 1627797)
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, -55.0936, -22.1153, -111.109, 269, 1627792)
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, -53.1212, -22.0886, -108.42, 293, 1627792)
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, -50.1918, -22.1449, -111.29, 270, 1627792)
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, -45.2183, -22.0645, -108.737, 270, 1627795)
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, -40.9717, -21.8812, -111.024, 240, 1627795)
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, -40.0979, -22.0113, -104.522, 235, 1627795)
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, -42.7806, -21.846, -97.2147, 181, 1627795) 
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, -39.469, -22.0857, -96.3597, 209, 1627795)
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, -35.6179, -22.1921, -99.7852, 263, 1627795)
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, -27.9996, -26.0061, -96.1971, 232, 1627795)
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, -26.0795, -25.9811, -99.7689, 266, 1627796)
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, -11.3444, -29.7884, -99.6563, 256, 1627796)
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, -6.2617, -30.0347, -96.3115, 269, 1627796)
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, -2.17208, -29.9858, -96.1326, 224, 1627796)
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, 1.32413, -30.0258, -96.3899, 228, 1627796)
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, -0.487306, -30.1432, -99.567, 259, 1627796)
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, -5.5408, -30.1051, -102.017, 302, 1627796)
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, -5.37164, -30.0977, -105.135, 39, 1627796)
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, -2.37612, -29.9254, -109.937, 14, 1627796)
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, -2.91389, -30.1308, -102.41, 1, 1627796)
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, -7.19889, -30.0606, -108.737, 70, 1627796)
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, -10.7241, -30.0062, -111.835, 56, 1627796)
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, -13.6872, -30.0495, -108.241, 84, 1627796)
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, -17.3767, -29.8888, -109.675, 70, 1627796)
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, 6.5425, -30.1102, -96.3457, 260, 1627797)
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, 8.48007, -30.1279, -99.3683, 282, 1627797) 
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, 11.6514, -30.1273, -99.5999, 256, 1627797)
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, 12.5902, -30.2448, -96.0949, 160, 1627797)
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, 20.9612, -30.0694, -99.7045, 256, 1627797) 
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, 22.103, -30.1147, -96.5055, 243, 1627797)
	--spawnMobile("yavin4", "volcano_cyborg_lt", 600, 27.7956, -29.9243, -97.6685, 289, 1627797)
--imperial room
	spawnMobile("yavin4", "alert_droideka", 300, -14.6594, -22, -119.192, 297, 1627802)
	spawnMobile("yavin4", "alert_droideka", 300, -25.5, -22, -119.2, 24, 1627802)
	spawnMobile("yavin4", "alert_droideka", 300, -25.5, -22, -112.8, 116, 1627802)
	spawnMobile("yavin4", "alert_droideka", 300, -14.5, -22, -112.7, 210, 1627802)
	spawnMobile("yavin4", "alert_droideka", 300, -19.9522, -22, -113.135, 174, 1627802)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -19.4336, -22, -133.3, 263, 1627801)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -32.7007, -22, -137.02, 284, 1627801)
--mini boss halway 2
	--spawnMobile("yavin4", "acklay_young", 1, -35.9168, -21.7989, -157.862, 236, 1627803)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -17.0819, -22.4411, -153.011, 231, 1627803)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -22.6439, -22.4259, -150.518, 98, 1627803) 
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -23.8802, -22.7803, -153.248, 254, 1627803)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -23.2473, -23.9219, -159.682, 310, 1627803)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -20.3788, -23.3851, -156.07, 250, 1627803)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -33.6156, -21.7989, -157.1, 299, 1627803)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -34.1893, -22.7535, -149.732, 223, 1627803)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -36.9445, -22.9311, -148.403, 141, 1627803)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -34.0795, -22.1498, -169.178, 121, 1627803)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -33.3666, -22.2699, -168.082, 117, 1627803)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -33.4289, -22.2721, -165.605, 40, 1627803)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -36.9, -21.898, -163.641, 307, 1627803)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -36.9, -21.8305, -160.825, 318, 1627803) 
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -36.9, -21.82, -155.974, 211, 1627803)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -41.6329, -21.7989, -158.9, 222, 1627803)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -48.9, -21.7989, -158.9, 3, 1627800)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -47.1, -21.7989, -152.039, 237, 1627800)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -48.9, -21.7989, -144.562, 330, 1627800)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -47.1, -21.7989, -139.395, 60, 1627800)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -48.5223, -21.7989, -137.671, 64, 1627800)
--hall way to key code room 4
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -61.888, -21.7989, -113.687, 178, 1627792)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -61.8437, -21.7989, -117.465, 181, 1627799)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -61.679, -21.7989, -121.909, 184, 1627799)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -61.9393, -21.7989, -124.42, 187, 1627799)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -58.1177, -21.7989, -124.42, 81, 1627799)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -55.0429, -21.7989, -124.28, 88, 1627799)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -51.5745, -21.7989, -124.087, 85, 1627799)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -47.6755, -21.7989, -124.103, 92, 1627799)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -47.7431, -21.7989, -128.578, 185, 1627799)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -47.9055, -21.7989, -131.765, 181, 1627800)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -44.5037, -21.7989, -135.759, 112, 1627800)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -52.0714, -21.7989, -135.852, 267, 1627800)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -57.5149, -21.7989, -136.089, 267, 1627804)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -65.3, -22, -134.5, 309, 1627804)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -71.0765, -22, -141, 210, 1627804)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -70.0417, -22, -138.7, 344, 1627804)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -79.3, -22, -139.434, 316, 1627804)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -76.9644, -22, -146.315, 132, 1627804)

--key code room 5
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -59.383, -34, -266.155, 206, 1627812)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -55.2211, -34, -269.687, 180, 1627812)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -55.761, -34, -271.579, 33, 1627812)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -55.4736, -34, -273.206, 49, 1627812)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -60.1075, -34, -277.238, 183, 1627812)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -58.0045, -34, -281.882, 259, 1627812)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -64.7859, -34, -273.769, 257, 1627812) 
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -65.0619, -34, -276.407, 338, 1627812)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -67.2035, -34, -276.307, 21, 1627812)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -67.626, -34, -274.015, 102, 1627812)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -66.6084, -34, -264.695, 28, 1627812)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -71.1803, -34, -267.316, 261, 1627812)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -75.7269, -34, -263.726, 47, 1627812)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -76.7969, -34, -266.011, 336, 1627812)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -74.4069, -34, -270.613, 150, 1627812)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -72.0415, -34, -277.176, 155, 1627812)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -74.2207, -34, -281.138, 117, 1627812) 
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -69.8529, -34, -281.887, 17, 1627812)

--key code room 6
	--spawnMobile("yavin4", "gungi", 3600, -133.902, -34, -179.736, 183, 1627815)
	--spawnMobile("yavin4", "crazed_geonosian_guard", 300, -128.356, -34, -199.703, 207, 1627815)
	--spawnMobile("yavin4", "crazed_geonosian_guard", 300, -133.615, -34, -200.214, 182, 1627815)
	--spawnMobile("yavin4", "crazed_geonosian_guard", 300, -136.228, -34, -200.694, 258, 1627815)
	--spawnMobile("yavin4", "crazed_geonosian_guard", 300, -138.515, -34, -199.04, 309, 1627815)
	--spawnMobile("yavin4", "crazed_geonosian_guard", 300, -143.037, -34, -197.529, 344, 1627815)
	--spawnMobile("yavin4", "crazed_geonosian_guard", 300, -144.762, -34, -193.607, 193, 1627815)
	--spawnMobile("yavin4", "crazed_geonosian_guard", 300, -142.4, -34, -191.531, 61, 1627815)
	--spawnMobile("yavin4", "crazed_geonosian_guard", 300, -140.657, -34, -188.411, 29, 1627815)
	--spawnMobile("yavin4", "crazed_geonosian_guard", 300, -144.5, -34, -186.965, 301, 1627815)
	--spawnMobile("yavin4", "crazed_geonosian_guard", 300, -139.543, -34, -182.854, 7, 1627815) 
	--spawnMobile("yavin4", "crazed_geonosian_guard", 300, -134.109, -34, -187.991, 12, 1627815)
	--spawnMobile("yavin4", "crazed_geonosian_guard", 300, -127.362, -34, -194.463, 285, 1627815)
	--spawnMobile("yavin4", "crazed_geonosian_guard", 300, -127.395, -34, -183.525, 264, 1627815)
	--spawnMobile("yavin4", "crazed_geonosian_guard", 300, -128.619, -34, -182.178, 100, 1627815)
--cave main room
	--spawnMobile("yavin4", "poggle_the_lesser", 3600, -139.593, -34.1191, -363.929, 35, 1627818)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -123.549, -33.5651, -346.328, 307, 1627818)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -120.8, -33.8384, -348.05, 245, 1627818) 
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -123.928, -33.6912, -351.156, 210, 1627818)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -115.793, -33.9653, -346.867, 24, 1627818)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -119.487, -34.0551, -356.295, 200, 1627818)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -115.952, -33.5485, -355.764, 94, 1627818)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -114.606, -33.1995, -355.336, 120, 1627818)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -155.671, -33.6885, -378.664, 238, 1627818)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -150.652, -33.6613, -376.043, 247, 1627818) 
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -146.33, -33.514, -375.698, 285, 1627818)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -140.816, -33.7596, -376.422, 266, 1627818)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -135.271, -34.1887, -375.819, 258, 1627818)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -117.263, -33.5889, -386.731, 116, 1627818)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -124.09, -33.245, -384.162, 58, 1627818)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -127.027, -33.3873, -385.723, 77, 1627818)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -134.399, -34.2784, -384.649, 119, 1627818)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -140.527, -33.7483, -383.187, 63, 1627818)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -145.175, -33.4261, -386.171, 69, 1627818)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -151.611, -34.6221, -386.314, 105, 1627818)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, -156.971, -34.1888, -383.543, 112, 1627818)
--key code room 7
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, 35.2865, -23.9954, -335.695, 103, 1627822)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, 30.4315, -23.9954, -335.39, 217, 1627822)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, 21.7, -23.9954, -335.39, 215, 1627822)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, 20.5971, -23.9954, -334.261, 58, 1627822)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, 20.5747, -23.9954, -336.278, 58, 1627822)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, 20.5292, -23.9954, -340.371, 67, 1627822)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, 20.5055, -23.9954, -342.5, 134, 1627822)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, 17.0117, -23.9954, -342.5, 111, 1627822)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, 8.83282, -23.9954, -342.5, 160, 1627822)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, 6.6, -23.9954, -342.5, 204, 1627822)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, 9.94801, -22.0067, -339.021, 251, 1627822)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, 11.7468, -22.0227, -334.716, 107, 1627822)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, 13.5269, -22.0424, -333.203, 166, 1627822)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, 17.5063, -22.0891, -332.512, 21, 1627822)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, 15.2517, -22.0626, -334.653, 207, 1627822)
	spawnMobile("yavin4", "crazed_geonosian_guard", 300, 17.0312, -22.0082, -339.062, 158, 1627822)
	spawnMobile("yavin4", "enhanced_gaping_spider", 900, 34.4404, -34, -336.024, 201, 1627822)
	spawnMobile("yavin4", "enhanced_gaping_spider", 900, 28.3748, -34, -352.629, 290, 1627822)
	spawnMobile("yavin4", "enhanced_gaping_spider", 900, 6.75722, -34, -346.725, 137, 1627822)
	spawnMobile("yavin4", "enhanced_gaping_spider", 900, 12.3748, -34, -373.006, 178, 1627822)
	spawnMobile("yavin4", "enhanced_gaping_spider", 900, 22.2997, -34, -385.661, 348, 1627822) 
	spawnMobile("yavin4", "enhanced_gaping_spider", 900, 34.7713, -33.9995, -403.715, 322, 1627822)
	spawnMobile("yavin4", "enhanced_gaping_spider", 900, 0.720029, -34, -395.06, 142, 1627822)
	spawnMobile("yavin4", "enhanced_gaping_spider", 900, 12.4455, -34, -414.684, 308, 1627822)
--final cave room befor acklay room
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -77.2011, -33.3058, -407.709, 191, 1627820) 
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -70.5323, -32.9212, -411.387, 333, 1627820)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -64.5315, -33.9877, -409.491, 234, 1627820)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -54.3952, -33.823, -402.153, 312, 1627820) 
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -41.5212, -34.1132, -412.283, 215, 1627820)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -24.5855, -34.0223, -417.238, 109, 1627821)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -26.2893, -34.1366, -418.081, 69, 1627821)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -27.5282, -33.9343, -419.682, 295, 1627821)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -21.6855, -34.1223, -418.902, 357, 1627821)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -21.0779, -34.098, -421.419, 150, 1627821)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -11.829, -33.9954, -421.006, 251, 1627821)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -13.3773, -33.9954, -417.993, 245, 1627821)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -4.00242, -33.9977, -417.102, 111, 1627821)
	--spawnMobile("yavin4", "outbreak_undead_deathtrooper_07_m", 600, -3.79856, -33.9986, -414.901, 30, 1627821)
end

function GeonosianLabScreenPlay:notifyGasValveUsed(pGasValve, pPlayer, radialSelected)
	if (pPlayer == nil) then
		return 0
	end

	if (radialSelected == 20) then
		local isGasLeaking = readData("geonosian_lab:gasleak")
		if (isGasLeaking == 1) then
			CreatureObject(pPlayer):sendSystemMessage("@dungeon/geonosian_madbio:gas_off") --You have shut off the gas leak.
			local gasLeakID = readData("geonosian_lab:gasLeakID")
			local pGasLeak = getSceneObject(gasLeakID)

			if (pGasLeak ~= nil) then
				SceneObject(pGasLeak):destroyObjectFromWorld()
			end

			deleteData("geonosian_lab:gasLeakID")

			writeData("geonosian_lab:gasleak", 0)
			createServerEvent(self.poisonShutoffDuration, "GeonosianLabScreenPlay", "restartGasLeak", "GasLeakRestart")
		else
			CreatureObject(pPlayer):sendSystemMessage("@dungeon/geonosian_madbio:gas_already_off") --The gas leak has already been repaired...
		end
	end

	return 0
end

function GeonosianLabScreenPlay:notifyKeypadUsed(pKeypad, pPlayer, radialSelected)
	if (pKeypad == nil or pPlayer == nil) then
		return 0
	end

	if (radialSelected == 20) then
		local suiManager = LuaSuiManager()
		suiManager:sendKeypadSui(pKeypad, pPlayer, "GeonosianLabScreenPlay", "keypadSuiCallback")
	end

	return 0
end

function GeonosianLabScreenPlay:restartGasLeak()
	local pGasLeak = spawnSceneObject("yavin4", "object/tangible/dungeon/poison_gas_cloud.iff", 21.7, 3.3, -29.1, 1627783, 0, 0, 0, 0)

	if (pGasLeak ~= nil) then
		writeData("geonosian_lab:gasLeakID", SceneObject(pGasLeak):getObjectID())
		writeData("geonosian_lab:gasleak", 1)
	end
end

function GeonosianLabScreenPlay:keypadSuiCallback(pCreature, pSui, eventIndex, enteredCode, pressedButton)
	local cancelPressed = (eventIndex == 1)

	if (pCreature == nil or pSui == nil or cancelPressed) then
		return
	end

	local suiBox = LuaSuiBox(pSui)
	local pUsingObject = suiBox:getUsingObject()

	if (pUsingObject == nil) then
		return
	end

	local keypadIndex = readData(SceneObject(pUsingObject):getObjectID() .. ":geonosian_lab:keypad_index")
	local keypadCode = self.keypadCodes[keypadIndex]

	if (pressedButton == "enter") then
		if (tonumber(enteredCode) == keypadCode) then
			CreatureObject(pCreature):sendSystemMessage("@dungeon/geonosian_madbio:right_code") --You have successfully entered the code for this door.
			self:givePermission(pCreature, "GeoLabKeypad" .. keypadIndex)
		else
			CreatureObject(pCreature):sendSystemMessage("@dungeon/geonosian_madbio:bad_code") --The number that you entered is not a valid code for this door.
		end
	elseif (pressedButton == "slice") then
		if (CreatureObject(pCreature):hasSkill("combat_smuggler_slicing_01")) then
			CreatureObject(pCreature):sendSystemMessage("@dungeon/geonosian_madbio:hack_success") --You have successfully hacked this terminal.
			self:givePermission(pCreature, "GeoLabKeypad" .. keypadIndex)
		else
			CreatureObject(pCreature):sendSystemMessage("@dungeon/geonosian_madbio:hack_fail") --Unable to successfully slice the keypad, you realize that the only way to reset it is to carefully repair what damage you have done.
		end
	elseif (pressedButton == "keycard") then
		if (keypadIndex ~= 4 and self:hasGeoItem(pCreature, "object/tangible/loot/dungeon/geonosian_mad_bunker/passkey.iff")) then
			self:removeGeoItem(pCreature, "object/tangible/loot/dungeon/geonosian_mad_bunker/passkey.iff")
			CreatureObject(pCreature):sendSystemMessage("@dungeon/geonosian_madbio:keycard_success") --You have successfully used a keycard on this door.
			self:givePermission(pCreature, "GeoLabKeypad" .. keypadIndex)
		elseif (keypadIndex == 4 and self:hasGeoItem(pCreature, "object/tangible/loot/dungeon/geonosian_mad_bunker/engineering_key.iff")) then
			self:removeGeoItem(pCreature, "object/tangible/loot/dungeon/geonosian_mad_bunker/engineering_key.iff")
			CreatureObject(pCreature):sendSystemMessage("@dungeon/geonosian_madbio:keycard_success") --You have successfully used a keycard on this door.
			self:givePermission(pCreature, "GeoLabKeypad" .. keypadIndex)
		end
	end
end

function GeonosianLabScreenPlay:notifyEnteredLab(pBuilding, pPlayer)
	if pPlayer == nil or not SceneObject(pPlayer):isCreatureObject() then
		return 0
	end

	if (CreatureObject(pPlayer):isAiAgent()) then
		return 0
	end

	for i = 1, #self.lockedCells, 1 do
		self:removePermission(pPlayer, "GeoLabKeypad" .. i)
	end

	local playerID = SceneObject(pPlayer):getObjectID()

	deleteData(playerID .. ":geo_engineertech_talked")
	deleteData(playerID .. ":geo_assistant_talked")
	deleteData(playerID .. ":geo_security_tech_talked")
	CreatureObject(pPlayer):removeScreenPlayState(1, "geonosian_lab_datapad_delivered")
	CreatureObject(pPlayer):removeScreenPlayState(1, "geonosian_lab_tenloss")

	CreatureObject(pPlayer):sendSystemMessage("@dungeon/geonosian_madbio:relock") --Security systems at this facility have been cycled and reset.
		
	return 0
end

function GeonosianLabScreenPlay:notifyLockedDoorArea(pArea, pPlayer)
	if (pPlayer == nil or not SceneObject(pPlayer):isCreatureObject()) then
		return 0
	end

	if (CreatureObject(pPlayer):isAiAgent()) then
		return 0
	end

	local areaDoor = readData(SceneObject(pArea):getObjectID() .. ":GeoLabKeypad")
	if not self:hasPermission(pPlayer, "GeoLabKeypad" .. areaDoor) then
		CreatureObject(pPlayer):sendSystemMessage("@dungeon/geonosian_madbio:door_locked") -- This door is locked.
	end

	return 0
end

function GeonosianLabScreenPlay:setupPermissionGroups()
	for i = 1, #self.lockedCells, 1 do
		local pCell = getSceneObject(self.lockedCells[i])
		if pCell ~= nil then
			SceneObject(pCell):setContainerInheritPermissionsFromParent(false)
			SceneObject(pCell):clearContainerDefaultDenyPermission(WALKIN)
			SceneObject(pCell):clearContainerDefaultAllowPermission(WALKIN)
			SceneObject(pCell):setContainerAllowPermission("GeoLabKeypad" .. i, WALKIN)
			SceneObject(pCell):setContainerDenyPermission("GeoLabKeypad" .. i, MOVEIN)
		end
	end
end

function GeonosianLabScreenPlay:givePermission(pPlayer, permissionGroup)
	local pGhost = CreatureObject(pPlayer):getPlayerObject()

	if (pGhost ~= nil) then
		PlayerObject(pGhost):addPermissionGroup(permissionGroup, true)
	end
end

function GeonosianLabScreenPlay:removePermission(pPlayer, permissionGroup)
	local pGhost = CreatureObject(pPlayer):getPlayerObject()

	if (pGhost == nil) then
		return
	end

	if (PlayerObject(pGhost):hasPermissionGroup(permissionGroup)) then
		PlayerObject(pGhost):removePermissionGroup(permissionGroup, true)
	end
end

function GeonosianLabScreenPlay:hasPermission(pPlayer, permissionGroup)
	local pGhost = CreatureObject(pPlayer):getPlayerObject()

	if (pGhost == nil) then
		return false
	end

	return PlayerObject(pGhost):hasPermissionGroup(permissionGroup)
end

function GeonosianLabScreenPlay:notifyEnteredPoisonGas(pActiveArea, pMovingObject)
	if (pMovingObject == nil or pActiveArea == nil or not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end

	if (CreatureObject(pMovingObject):isAiAgent() and not AiAgent(pMovingObject):isPet()) then
		return 0
	end

	local objectID = CreatureObject(pMovingObject):getObjectID()
	local isGasLeaking = readData("geonosian_lab:gasleak")

	if (isGasLeaking == 0) then
		return 0
	end

	if (self:hasRebreather(pMovingObject)) then
		CreatureObject(pMovingObject):sendSystemMessage("@dungeon/geonosian_madbio:gasmask") --Your gasmask diffuses the poison gas and you are able to breathe with no difficulty.
	else
		local areaID = SceneObject(pActiveArea):getObjectID()

		if (ActiveArea(pActiveArea):getCellObjectID() == 1627783) then
			CreatureObject(pMovingObject):addDotState(pMovingObject, POISONED, getRandomNumber(20) + 80, HEALTH, 1000, 2000, areaID, 0)
		else
			CreatureObject(pMovingObject):addDotState(pMovingObject, POISONED, getRandomNumber(100) + 200, HEALTH, 1000, 2000, areaID, 0)
		end
		CreatureObject(pMovingObject):sendSystemMessage("@dungeon/geonosian_madbio:toxic_fumes") --You breathe in toxic fumes!
	end
	return 0
end

function GeonosianLabScreenPlay:notifyElectroShock(pActiveArea, pMovingObject)
	if (pMovingObject == nil or pActiveArea == nil or not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end

	if (SceneObject(pMovingObject):isAiAgent() and not AiAgent(pMovingObject):isPet()) then
		return 0
	end

	CreatureObject(pMovingObject):inflictDamage(pMovingObject, 0, 1000, 0)
	CreatureObject(pMovingObject):sendSystemMessage("@dungeon/geonosian_madbio:shock") --You feel electricity coursing through your body!
	return 0
end


function GeonosianLabScreenPlay:hasRebreather(pCreature)
	if (pCreature == nil) then
		return false
	end

	--TODO: Change this to be a skill mod check for private_poison_rebreather
	local pRebreather = CreatureObject(pCreature):getSlottedObject("eyes")

	if pRebreather == nil then
		return false
	end

	local headSlot = SceneObject(pRebreather):getTemplateObjectPath()
	return (headSlot == "object/tangible/wearables/goggles/rebreather.iff" or headSlot == "object/tangible/wearables/armor/mandalorian/armor_mandalorian_helmet.iff")
end

function GeonosianLabScreenPlay:respawnDebris(pDebris)
	if (pDebris == nil) then
		return
	end

	TangibleObject(pDebris):setConditionDamage(0, false)
	local debrisData = self.debris[readData(SceneObject(pDebris):getObjectID() .. ":geonosian_lab:debris_index")]

	local pCell = getSceneObject(debrisData.cell)

	if (pCell ~= nil) then
		SceneObject(pCell):transferObject(pDebris, -1, true)
	end
end

function GeonosianLabScreenPlay:notifyDebrisDestroyed(pDebris, pPlayer)
	if (pPlayer == nil or pDebris == nil) then
		return 0
	end

	createEvent(240000, "GeonosianLabScreenPlay", "respawnDebris", pDebris, "")
	SceneObject(pDebris):destroyObjectFromWorld()

	CreatureObject(pPlayer):clearCombatState(1)
	return 0
end

function GeonosianLabScreenPlay:hasGeoItem(pPlayer, itemTemplate)
	local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")

	if (pInventory == nil) then
		return 0
	end

	local pItem = getContainerObjectByTemplate(pInventory, itemTemplate, true)

	return pItem ~= nil
end

function GeonosianLabScreenPlay:removeGeoItem(pPlayer, itemTemplate)
	local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")

	if (pInventory == nil) then
		return
	end

	local pItem = getContainerObjectByTemplate(pInventory, itemTemplate, true)

	if (pItem ~= nil) then
		SceneObject(pItem):destroyObjectFromWorld()
		SceneObject(pItem):destroyObjectFromDatabase()
	end
end

function GeonosianLabScreenPlay:giveGeoItem(pPlayer, itemTemplate)
	local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")

	if (not self:hasGeoItem(pPlayer, itemTemplate)) then
		local pItem = giveItem(pInventory, itemTemplate, -1)
		if (pItem ~= nil) then
			SceneObject(pItem):sendTo(pPlayer)
		end
	end
end

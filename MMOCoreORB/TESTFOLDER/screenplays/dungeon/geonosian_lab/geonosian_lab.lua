--Additional Includes
--includeFile("dungeon/geonosian_lab/biogenic_scientist_geonosian_convo_handler.lua")
--includeFile("dungeon/geonosian_lab/biogenic_scientist_human_convo_handler.lua")
includeFile("dungeon/geonosian_lab/conversations/geonosianConvoHandlers.lua")

geonosian_labscreenplay = ScreenPlay:new 
{
	numberOfActs = 1,
	
	states = 
	{
		datapad = {started = 1, done = 2},
		tenloss = {started = 4, noreward = 8, done = 16}		
	},
	
	keypadCodes = 
	{
		32281,
		12872,
		51892,
		12753, --Door 4 is short circuited passkey or this code
		86332,
		11380,
		52577,
		78660
	},
	
	lockedCells = 
	{
		1627785,
		1627786,
		1627790,
		1627805,
		1627812,
		1627815,
		1627822,
		1627823
	},
	
	timers = 
	{
--		acklay = 900, --Acklay normally 7200 (2 hours)
		fbspider = 900 --Fire Breathing Spider normally 3600 (1 hour)
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
	geonosianLabObjectID = 1627780,

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
	
	poisonShutoffDuration = 30000, --30 seconds
	
	geoDatapad = "object/tangible/loot/dungeon/geonosian_mad_bunker/engineering_datapad.iff",

	geoTenloss = "object/tangible/loot/loot_schematic/geonosian_tenloss_dxr6_schematic.iff"

}

registerScreenPlay("geonosian_labscreenplay", true)

local ObjectManager = require("managers.object.object_manager")
local spHelper = require("screenplayHelper")

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function geonosian_labscreenplay:start()
	if (isZoneEnabled("yavin4")) then
		self:spawnActiveAreas()
		self:spawnSceneObjects()
		self:spawnMobiles()
		spHelper:setupPermissionGroups("GeoLabKeypad", self.lockedCells)
 	end
end

function geonosian_labscreenplay:spawnActiveAreas()
--poison area at entrance
	local pPoisonCloudAA = spawnSceneObject("yavin4", "object/active_area.iff", -6435.5, 85.6, -367, 0, 0, 0, 0, 0)
	
	if (pPoisonCloudAA ~= nil) then
		ObjectManager.withActiveArea(pPoisonCloudAA,  function(activeArea)
			activeArea:setCellObjectID(1627783)
			activeArea:setRadius(12)
			createObserver(ENTEREDAREA, "geonosian_labscreenplay", "notifyEnteredPoisonGas", pPoisonCloudAA)
		end)
	end

--poison area at entry of the acklay room

	local pPoisonCloudBB = spawnSceneObject("yavin4", "object/active_area.iff", -6181.9, 48.3, -197.2, 0, 0, 0, 0, 0)
	
	if (pPoisonCloudBB ~= nil) then
		ObjectManager.withActiveArea(pPoisonCloudBB,  function(activeArea)
			activeArea:setCellObjectID(1627822)
			activeArea:setRadius(6)
			createObserver(ENTEREDAREA, "geonosian_labscreenplay", "notifyEnteredPoisonGasStrong", pPoisonCloudBB)
		end)
	end

--poison area before new bosses
	local pPoisonCloudCC = spawnSceneObject("yavin4", "object/active_area.iff", -6243, 56, -397, 0, 0, 0, 0, 0)
	
	if (pPoisonCloudCC ~= nil) then
		ObjectManager.withActiveArea(pPoisonCloudCC,  function(activeArea)
			activeArea:setCellObjectID(1627807)
			activeArea:setRadius(20)
			createObserver(ENTEREDAREA, "geonosian_labscreenplay", "notifyEnteredPoisonGas", pPoisonCloudAA)
		end)
	end


--Primary electric shock area

	local pElectroShock = spawnSceneObject("yavin4", "object/active_area.iff", -6168.7, 48.3, -380.9, 0, 0, 0, 0, 0)
	
	if (pElectroShock ~= nil) then
		ObjectManager.withActiveArea(pElectroShock,  function(activeArea)
			activeArea:setCellObjectID(1627813)
			activeArea:setRadius(6)
			createObserver(ENTEREDAREA, "geonosian_labscreenplay", "notifyElectroShock", pElectroShock)
		end)
	end

--Secondary electric shock area

	local pElectroShock2 = spawnSceneObject("yavin4", "object/active_area.iff", -6150, 48, -364, 0, 0, 0, 0, 0)
	
	if (pElectroShock2 ~= nil) then
		ObjectManager.withActiveArea(pElectroShock2,  function(activeArea)
			activeArea:setCellObjectID(1627816)
			activeArea:setRadius(6)
			createObserver(ENTEREDAREA, "geonosian_labscreenplay", "notifyElectroShock", pElectroShock2)
		end)
	end

--Tertiary electric shock area

	local pElectroShock3 = spawnSceneObject("yavin4", "object/active_area.iff", -6087, 48, -195, 0, 0, 0, 0, 0)
	
	if (pElectroShock3 ~= nil) then
		ObjectManager.withActiveArea(pElectroShock3,  function(activeArea)
			activeArea:setCellObjectID(1627821)
			activeArea:setRadius(6)
			createObserver(ENTEREDAREA, "geonosian_labscreenplay", "notifyElectroShock", pElectroShock3)
		end)
	end
end


function geonosian_labscreenplay:spawnSceneObjects()
	spawnSceneObject("yavin4", "object/tangible/dungeon/poison_gas_cloud.iff", 21.7, 3.3, -29.1, 1627783, 0, 0, 0, 0)
    spawnSceneObject("yavin4", "object/tangible/dungeon/poison_gas_cloud.iff", 37.6, -34.0, -334.7, 1627822, 0, 0, 0, 0)
	
	--Building observer to lock all security doors.
	local pBuilding = getSceneObject(self.geonosianLabObjectID)
	createObserver(ENTEREDBUILDING, "geonosian_labscreenplay", "notifyEnteredLab", pBuilding)
	
	--Gas Valve
	local pSceneObject = spawnSceneObject("yavin4", "object/tangible/dungeon/wall_terminal_s1.iff", 2.27, -1.9, -15.73, 1627824, 0.701707, 0, -0.701707, 0)
	createObserver(OBJECTRADIALUSED, "geonosian_labscreenplay", "notifyGasValveUsed", pSceneObject);
	writeData("geonosian_lab:gasleak", 1) --set the gas leak as started
	
	
	--Keypads

  --Keypads
	for i = 1, 8, 1 do
		local kp = self.keypads[i]
		local pSceneObject = spawnSceneObject("yavin4", "object/tangible/dungeon/wall_terminal_s3.iff", kp.x, kp.z, kp.y, kp.cell, kp.dw, kp.dx, kp.dy, kp.dz)
		ObjectManager.withSceneObject(pSceneObject, function(scene)
			writeData(string.format("%#x", scene:getObjectID()) .. ":geonosian_lab:keypad_index", i)
			createObserver(OBJECTRADIALUSED, "geonosian_labscreenplay", "notifyKeypadUsed", pSceneObject)
		end)
	end

	--debri fields
	for i = 1, 15, 1 do
		local debrisData = self.debris[i]
		local pDebris = spawnSceneObject("yavin4", debrisData.template, debrisData.x, debrisData.z, debrisData.y, debrisData.cell, 1, 0, 0, 0)
		ObjectManager.withSceneObject(pDebris, function(debris)
			writeData(string.format("%#x",debris:getObjectID()) .. ":geonosian_lab:debris_index", i)
			createObserver(OBJECTDESTRUCTION, "geonosian_labscreenplay", "notifyDebrisDestroyed", pDebris)
		end)
	end

end

function geonosian_labscreenplay:spawnMobiles()
	spawnMobile("yavin4", "biogenic_crazyguy", 1, -2.8, 10.8, 10.2, 69, 1627781)--biogen_crazy
	spawnMobile("yavin4", "biogenic_securitytech", 1, -48, -18, -31, -180, 1627785)--biogen_security
	spawnMobile("yavin4", "biogenic_scientist_human", 1, 23.8, -32, -83.2, 130, 1627798)--biogen_human
	spawnMobile("yavin4", "biogenic_construction", 1, -134.5, -21.7, -74.8, 90, 1627794)--biogen_constuc
	spawnMobile("yavin4", "biogenic_engineertech", 1,-107.7,-18,-33.8,176,1627790)--biogen_engineer
	spawnMobile("yavin4", "biogenic_assistant", 1, -36, -21.9, -162.8, 0, 1627803)--biogen_assistant
	spawnMobile("yavin4", "biogenic_scientist_generic_01", 1, -72.0, -34, -272.9, 0, 1627812)--biogen_gen01
	spawnMobile("yavin4", "biogenic_scientist_generic_02", 1, -127.2, -34, -189.0, -93, 1627815)--biogen_gen02
	spawnMobile("yavin4", "biogenic_scientist_geonosian", 1, 24.9, -34, -355.2, -87, 1627822) -- biogen_geo
--	spawnMobile("yavin4", "acklay",900,101.1,-34.3,-321.6,-136,1627823)
	spawnMobile("yavin4", "enhanced_gaping_spider",900,-130,-22.1,-85,-180,1627794)
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
	spawnMobile("yavin4", "enhanced_cavern_spider",300,-62,-21.8,-109.6,0,1627792)
	spawnMobile("yavin4", "enhanced_cavern_spider",300,-48,-21.8,-158,0,1627800)
	spawnMobile("yavin4", "enhanced_cavern_spider",300,-48,-21.8,-143,0,1627800)
	spawnMobile("yavin4", "enhanced_cavern_spider",300,-41,-21.8,-136,-90,1627801)
	spawnMobile("yavin4", "enhanced_cavern_spider",300,-88.3,-21.8,-110.3,210,1627793)
	spawnMobile("yavin4", "enhanced_cavern_spider",300,-98,-21.9,-114.7,50,1627793)
	spawnMobile("yavin4", "enhanced_cavern_spider",300,-107.3,-22.2,-96.6,180,1627793)
	spawnMobile("yavin4", "enhanced_cavern_spider",300,-108,-21.8,-126,0,1627793)
	spawnMobile("yavin4", "enhanced_cavern_spider",300,-123,-22,-109.5,80,1627793)
	spawnMobile("yavin4", "enhanced_cavern_spider",300,-134.7,-20.9,-112.2,77,1627793)
	spawnMobile("yavin4", "alert_droideka",300,-34.2,-22,-128,-180,1627801)
	spawnMobile("yavin4", "alert_droideka",300,-3.8,-30.2,-92,-180,1627796)
	spawnMobile("yavin4", "enhanced_cavern_spider",300,-16.8,-30.2,-115.1,22,1627796)
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
	spawnMobile("yavin4", "failed_experiment_62",300,-66.5,-34,-282,-1,1627812)
	spawnMobile("yavin4", "enhanced_kliknik",300,-87,-34.1,-386.5,210,1627819)
	spawnMobile("yavin4", "enhanced_cavern_spider",300,-128.2,-34.4,-322.4,-30,1627817)
	spawnMobile("yavin4", "enhanced_cavern_spider",300,-143.5,-33.5,-321.7,134,1627817)
	spawnMobile("yavin4", "enhanced_cavern_spider",300,-131.1,-33.9,-339.0,145,1627817)
	spawnMobile("yavin4", "enhanced_cavern_spider",300,-135.5,-33.8,-342.8,-1,1627817)
	spHelper.spawnMobileAndIdle("yavin4", "enhanced_cavern_spider",300,-140.9,-34.0,-354.2,-98,1627818)
	spawnMobile("yavin4", "enhanced_cavern_spider",300,-134.5,-34.0,-373.2,-2,1627818)
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
	spawnMobile("yavin4", "enhanced_cavern_spider",300,4.1,-34.0,-402.4,171,1627822)
	spawnMobile("yavin4", "enhanced_force_kliknik",300,16.5,-34.0,-368.3,161,1627822)
	spawnMobile("yavin4", "enhanced_kliknik",300,24.0,-34.0,-397.1,117,1627822)
	spawnMobile("yavin4", "enhanced_force_kliknik",300,22.9,-34.0,-370.1,11,1627822)
	--	spawnMobile("yavin4", "enhanced_cavern_spider",300,24.8,-24.0,-333.8,87,1627822)
	--	spawnMobile("yavin4", "enhanced_cavern_spider",300,13.3,-24.0,-341.6,89,1627822)
	--	spawnMobile("yavin4", "enhanced_cavern_spider",300,13.4,-22.0,-337.3,-179,1627822)
	spawnMobile("yavin4", "enhanced_kwi",300,48.0,-34.0,-334.4,0,1627823)
	spawnMobile("yavin4", "enhanced_cavern_spider",300,91.2,-33.9,-347.9,5,1627823)
	spawnMobile("yavin4", "enhanced_kliknik",300,98.0,-34.1,-334.4,-53,1627823)
	spawnMobile("yavin4", "enhanced_kliknik",300,120.2,-33.9,-330.6,-33,1627823)
	spawnMobile("yavin4", "enhanced_cavern_spider",300,85.0,-33.8,-309.1,143,1627823)
	spawnMobile("yavin4", "enhanced_cavern_spider",300,74.7,-34.1,-329.0,-90,1627823)

	--Instant Respawn on live, and this was highly requested to be returned to the geo cave!
	spawnMobile("yavin4", "mercenary_sentry",1,-74.9,-22,-153.7,-119,1627805)
	spawnMobile("yavin4", "mercenary_sentry",1,-74.3,-22,-162.3,-40,1627805)
	spawnMobile("yavin4", "mercenary_sentry",1,-82.3,-22,-161.7,74,1627805)
	spawnMobile("yavin4", "mercenary_sentry",1,-82.2,-22,-155.1,106,1627805)
	--Instant Respawn on live, and this was highly requested to be returned to the geo cave!

	--Custom Stuff Below Here!--mercenary_sentry
	spawnMobile("yavin4", "enhanced_cavern_spider",300,-136.281,-21.9195,-107.037,100,1627793)
	spawnMobile("yavin4", "enhanced_cavern_spider",300,-134.739,-21.9293,-98.6984,-180,1627793)
	spawnMobile("yavin4", "enhanced_cavern_spider",300,-127.746,-21.5192,-99.6317,-180,1627793)
	spawnMobile("yavin4", "enhanced_cavern_spider",300,-109.496,-21.9789,-102.542,152,1627793)
	spawnMobile("yavin4", "enhanced_cavern_spider",300,-110.414,-21.9385,-119.157,12,1627793)
	spawnMobile("yavin4", "enhanced_cavern_spider",300,-98.5207,-22.112,-106.8,114,1627793)
	spawnMobile("yavin4", "enhanced_cavern_spider",300,-87.3095,-22.0783,-114.962,54,1627793)
	spawnMobile("yavin4", "enhanced_cavern_spider",300,-15.5608,-29.9814,-109.619,104,1627796)
	spawnMobile("yavin4", "enhanced_cavern_spider",300,-9.03449,-30.2318,-110.233,-10,1627796)
	spawnMobile("yavin4", "enhanced_cavern_spider",300,-3.14966,-29.8641,-110.242,-92,1627796)
	spawnMobile("yavin4", "enhanced_kliknik",300, 34.5883, -29.739, -87.0682, -49, 1627798)
	spawnMobile("yavin4", "enhanced_kliknik",300, 34.053, -31.4091, -78.1577, -151, 1627798)
	spawnMobile("yavin4", "enhanced_kliknik",300, 17.559, -30.2715, -70.4098, 104, 1627798)
	spawnMobile("yavin4", "enhanced_kliknik",300, 22.2525, -30.8983, -68.4103, 166, 1627798)
	spawnMobile("yavin4", "enhanced_kliknik",300, 24.1396, -31.4499, -86.7594, -5, 1627798)
	spawnMobile("yavin4", "enhanced_kliknik",300, 25.7397, -30.0366, -97.6475, -91, 1627797)
	spawnMobile("yavin4", "enhanced_kliknik",300, 97.541, -33.6629, -315.264, -138, 1627823)
	spawnMobile("yavin4", "enhanced_kliknik",300, 105.561, -33.8948, -327.069, -111, 1627823)
	spawnMobile("yavin4", "enhanced_kliknik",300, 92.8565, -34.3936, -320.798, -146, 1627823)
	spawnMobile("yavin4", "enhanced_kliknik",300, 68.3836, -33.8069, -333.971, -4, 1627823)
	spawnMobile("yavin4", "enhanced_kliknik",300, 67.7088, -34.1103, -324.325, 178, 1627823)
	spawnMobile("yavin4", "alert_droideka",300, -14.1654, -33.7943, -419.905, -88, 1627821)
	spawnMobile("yavin4", "alert_droideka",300, -96.4077, -26, -178.065, 88, 1627806)
	spawnMobile("yavin4", "alert_droideka",300, -137.526, -34, -212.02, 90, 1627814)
	spawnMobile("yavin4", "alert_droideka",300, -125.998, -34, -256.001, -4, 1627813)
	spawnMobile("yavin4", "alert_droideka",300, -136.393, -33.7989, -282.031, 88, 1627816)
	spawnMobile("yavin4", "crazed_geonosian_guard",300, -77.6631, -18.581, -31.3627, 143, 1627788)
	spawnMobile("yavin4", "crazed_geonosian_guard",300, -68.0155, -19.1212, -37.35, -128, 1627788)
	spawnMobile("yavin4", "crazed_geonosian_guard",300, -77.6182, -18.6051, -40.3633, -178, 1627788)
	spawnMobile("yavin4", "crazed_geonosian_guard",300, -76.7914, -18.4807, -43.8397, -36, 1627788)
	spawnMobile("yavin4", "crazed_geonosian_guard",300, -83.529, -18.508, -40.4251, 101, 1627788)
	spawnMobile("yavin4", "crazed_geonosian_guard",300, -74.2385, -18.3719, -49.4647, -174, 1627788)
	spawnMobile("yavin4", "crazed_geonosian_guard",300, -77.3553, -18.1229, -49.4936, 168, 1627788)
	spawnMobile("yavin4", "enhanced_kwi",300, -72.0886, -34, -276.774, 179, 1627812)
	spawnMobile("yavin4", "enhanced_kwi",300, -60.1653, -34, -276.636, 177, 1627812)
	spawnMobile("yavin4", "enhanced_kwi",300, -57.2151, -34, -264.249, -109, 1627812)
	spawnMobile("yavin4", "enhanced_kwi",300, -71.5566, -34, -264.136, 90, 1627812)
	spawnMobile("yavin4", "enhanced_kwi",300, -55.6416, -34, -283.675, -31, 1627812)
	-->>Super Enhanced Kwi?<<<
	spawnMobile("yavin4", "failed_ns_clone",300, -134.117, -34, -182.739, -179, 1627815)
	-->>Super Enhanced Kwi?<<<
	spawnMobile("yavin4", "enhanced_force_kliknik",300, -52.1084, -33.5828, -373.367, -87, 1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik",300, -51.5294, -33.9669, -365.18, -103, 1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik",300, -57.7441, -33.6945, -360.386, -134, 1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik",300, -76.2812, -34.1583, -363.449, -147, 1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik",300, -87.0132, -34.1783, -369.616, -87, 1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik",300, -88.667, -34.3344, -362.137, -110, 1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik",300, -67.6258, -34.1073, -387.756, -35, 1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik",300, -76.7003, -33.7948, -389.124, 28, 1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik",300, 13.6352, -34, -382.97, 177, 1627822)
	spawnMobile("yavin4", "enhanced_force_kliknik",300, 23.1283, -34, -381.871, -171, 1627822)
	spawnMobile("yavin4", "enhanced_force_kliknik",300, 9.96341, -34, -404.494, -141, 1627822)
	spawnMobile("yavin4", "enhanced_force_kliknik",300, 36.0805, -34, -341.97, -132, 1627822)
	spawnMobile("yavin4", "enhanced_force_kliknik",300, 32.9608, -34, -339.919, -132, 1627822)
	spawnMobile("yavin4", "enhanced_force_kliknik",300, 31.0486, -34, -338.153, -132, 1627822)
	spawnMobile("yavin4", "enhanced_force_kliknik",300, 29.1903, -34, -334.87, -128, 1627822)
	spawnMobile("yavin4", "enhanced_force_kliknik",300, -75.7891, -33.7396, -406.2, 35, 1627820)
	spawnMobile("yavin4", "enhanced_force_kliknik",300, -56.1903, -33.8068, -413.044, -23, 1627820)
	spawnMobile("yavin4", "enhanced_force_kliknik",300, -42.6794, -34.017, -412.7, -4, 1627820)
	spawnMobile("yavin4", "enhanced_force_kliknik",300, -25.8643, -34.2448, -412.436, -8, 1627820)
	-->>Enhanced Rancor??
	spawnMobile("yavin4", "enhanced_rancor",900, -145.7, -34.0, -369.8, 52, 1627818)
	-->>Enhanced Rancor??

	-->>Dark Jedi Jawa<<--
	spawnMobile("yavin4", "enhanced_force_jawa_lord",1600, 4.0, -34, -347.3, -91, 1627822)
	-->>Dark Jedi Jawa<<--
	
end

function geonosian_labscreenplay:notifyGasValveUsed(pGasValve, pPlayer, radialSelected)
	if (radialSelected == 20) then
		local player = LuaCreatureObject(pPlayer)
		local isGasLeaking = readData("geonosian_lab:gasleak")
		
		if (isGasLeaking == 1) then
			player:sendSystemMessage("@dungeon/geonosian_madbio:gas_off") --You have shut off the gas leak.
			writeData("geonosian_lab:gasleak", 0)
			createEvent(self.poisonShutoffDuration, "geonosian_labscreenplay", "restartGasLeak", pGasValve)
		else
			player:sendSystemMessage("@dungeon/geonosian_madbio:gas_already_off") --The gas leak has already been repaired...
		end
	end
	return 0
end

function geonosian_labscreenplay:notifyKeypadUsed(pKeypad, pPlayer, radialSelected)
	if (radialSelected == 20) then
		--We need to show to the user the keypad sui.
		local suiManager = LuaSuiManager()
		suiManager:sendKeypadSui(pKeypad, pPlayer, "geonosian_labscreenplay", "keypadSuiCallback")
	end
	return 0
end

function geonosian_labscreenplay:restartGasLeak(pGasLeak)
	writeData("geonosian_lab:gasleak", 1)
	return 0
end

function geonosian_labscreenplay:keypadSuiCallback(pCreature, pSui, cancelPressed, enteredCode, pressedButton)
local suiBox = LuaSuiBox(pSui)
	local pUsingObject = suiBox:getUsingObject()

	ObjectManager.withCreatureObject(pCreature, function(player)
		local objectID = LuaSceneObject(pUsingObject):getObjectID()
		local keypadIndex = readData(string.format("%#x", objectID) .. ":geonosian_lab:keypad_index")
		local keypadCode = self.keypadCodes[keypadIndex]

		if (pressedButton == "enter") then
			if (tonumber(enteredCode) == keypadCode) then
				player:sendSystemMessage("@dungeon/geonosian_madbio:right_code") --You have successfully entered the code for this door.
				spHelper:givePermission(pCreature, "GeoLabKeypad" .. keypadIndex)
				printf(keypadIndex)
			else
				player:sendSystemMessage("@dungeon/geonosian_madbio:bad_code") --The number that you entered is not a valid code for this door.
			end
		elseif (pressedButton == "slice") then
			if (player:hasSkill("combat_smuggler_slicing_01")) then
				player:sendSystemMessage("@dungeon/geonosian_madbio:hack_success") --You have successfully hacked this terminal.
				spHelper:givePermission(pCreature, "GeoLabKeypad" .. keypadIndex)
			else
				player:sendSystemMessage("@dungeon/geonosian_madbio:hack_fail") --Unable to successfully slice the keypad, you realize that the only way to reset it is to carefully repair what damage you have done.
			end
		elseif (pressedButton == "keycard") then
			if (keypadIndex ~= 4 and self:hasGeoItem(pCreature, "object/tangible/loot/dungeon/geonosian_mad_bunker/passkey.iff")) then
				self:removeGeoItem(pCreature, "object/tangible/loot/dungeon/geonosian_mad_bunker/passkey.iff")
				player:sendSystemMessage("@dungeon/geonosian_madbio:keycard_success") --You have successfully used a keycard on this door.
				spHelper:givePermission(pCreature, "GeoLabKeypad" .. keypadIndex)
			elseif (keypadIndex == 4 and self:hasGeoItem(pCreature, "object/tangible/loot/dungeon/geonosian_mad_bunker/engineering_key.iff")) then
				self:removeGeoItem(pCreature, "object/tangible/loot/dungeon/geonosian_mad_bunker/engineering_key.iff")
				player:sendSystemMessage("@dungeon/geonosian_madbio:keycard_success") --You have successfully used a keycard on this door.
				spHelper:givePermission(pCreature, "GeoLabKeypad" .. keypadIndex)
			end
		end
	end)
end

function geonosian_labscreenplay:notifyEnteredLab(pBuilding, pPlayer)
	ObjectManager.withCreatureObject(pPlayer, function(player)
		if (player:isAiAgent()) then
			return 0
		end

		for i = 1, #self.lockedCells, 1 do
			spHelper:removePermission(pPlayer, "GeoLabKeypad" .. i)
		end

		deleteData(player:getObjectID() .. ":geo_engineertech_talked")
		deleteData(player:getObjectID() .. ":geo_assistant_talked")
		deleteData(player:getObjectID() .. ":geo_security_tech_talked")
		player:removeScreenPlayState(1, "geonosian_lab_datapad_delivered")
		player:removeScreenPlayState(1, "geonosian_lab_tenloss")

		player:sendSystemMessage("@dungeon/geonosian_madbio:relock") --Security systems at this facility have been cycled and reset.
	end)
	return 0
end

--------------------------------------
--   ActiveArea observers            -
--------------------------------------
function geonosian_labscreenplay:notifyEnteredPoisonGas(pActiveArea, pMovingObject)
	local movingObject = LuaSceneObject(pMovingObject)
	
	if (movingObject:isCreatureObject()) then
		local player = LuaCreatureObject(pMovingObject)
		local objectID = player:getObjectID()
		
		if (not player:isAiAgent()) then
			--Check if gas is currently leaking
			local isGasLeaking = readData("geonosian_lab:gasleak")
			
			if (isGasLeaking == 1) then
				--Check for rebreathing mod
				if (self:hasRebreather(movingObject) == 1) then 
					player:sendSystemMessage("@dungeon/geonosian_madbio:gasmask") --Your gasmask diffuses the poison gas and you are able to breathe with no difficulty.
				else
					local activeArea = LuaSceneObject(pActiveArea)

					player:addDotState(POISONED, math.random(250) + 400, HEALTH, 1000, 2000, activeArea:getObjectID(), 0)
					player:addDotState(POISONED, math.random(250) + 200, ACTION, 1000, 2000, activeArea:getObjectID(), 0)
					player:sendSystemMessage("@dungeon/geonosian_madbio:toxic_fumes") --You breathe in toxic fumes!
				end
			end
		end
	end
	
	return 0
end

function geonosian_labscreenplay:notifyEnteredPoisonGasStrong(pActiveArea, pMovingObject)
	local movingObject = LuaSceneObject(pMovingObject)
	
	if (movingObject:isCreatureObject()) then
		local player = LuaCreatureObject(pMovingObject)
		local objectID = player:getObjectID()
		
		if (not player:isAiAgent()) then
			--Check if gas is currently leaking
			local isGasLeaking = readData("geonosian_lab:gasleak")
			
			if (isGasLeaking == 1) then
				--Check for rebreathing mod
				if (self:hasRebreather(movingObject) == 1) then
					player:sendSystemMessage("@dungeon/geonosian_madbio:gasmask") --Your gasmask diffuses the poison gas and you are able to breathe with no difficulty.
				else
					local activeArea = LuaSceneObject(pActiveArea)

					player:addDotState(POISONED, math.random(400) + 450, HEALTH, 1000, 2000, activeArea:getObjectID(), 0)
					player:addDotState(POISONED, math.random(400) + 350, ACTION, 1000, 2000, activeArea:getObjectID(), 0)
					player:sendSystemMessage("@dungeon/geonosian_madbio:toxic_fumes") --You breathe in toxic fumes!
				end
			end
		end
	end
	
	return 0
end


function geonosian_labscreenplay:notifyElectroShock(pActiveArea, pMovingObject)
	local movingObject = LuaSceneObject(pMovingObject)
	
	if (movingObject:isCreatureObject()) then
		ObjectManager.withCreatureObject(pMovingObject, function(player)		
			player:inflictDamage(pMovingObject, 0, 1500, 0)
			player:sendSystemMessage("@dungeon/geonosian_madbio:shock") --You feel electricity coursing through your body! 
		end)
	end
	return 0
end


function geonosian_labscreenplay:hasRebreather(scno)
	--TODO: Change this to be a skill mod check for private_poison_rebreather
	local pRebreather = scno:getSlottedObject("eyes")

	if (pRebreather ~= nil) then
		local rebreather = LuaSceneObject(pRebreather)
		local headSlot = rebreather:getTemplateObjectPath()
		
		if (headSlot == "object/tangible/wearables/goggles/rebreather.iff") then
			return 1
		elseif (headSlot == "object/tangible/wearables/armor/mandalorian/armor_mandalorian_helmet.iff") then
			return 1
		end
	end
	
	return 0
end

function geonosian_labscreenplay:respawnDebris(pDebris)
	ObjectManager.withSceneObject(pDebris, function(debris)
		local index = readData(string.format("%#x",debris:getObjectID()) .. ":geonosian_lab:debris_index")
		local debrisData = self.debris[index]
		local pDebrisnew = spawnSceneObject("yavin4", debrisData.template, debrisData.x, debrisData.z, debrisData.y, debrisData.cell, 1, 0, 0, 0)
		ObjectManager.withSceneObject(pDebrisnew, function(debrisnew)
			writeData(string.format("%#x",debrisnew:getObjectID()) .. ":geonosian_lab:debris_index", index)
			createObserver(OBJECTDESTRUCTION, "geonosian_labscreenplay", "notifyDebrisDestroyed", pDebrisnew)
		end)
	end)
	return 0
end

function geonosian_labscreenplay:notifyDebrisDestroyed(pDebris, pPlayer)
	ObjectManager.withSceneObject(pDebris, function(debris)
		local debrisData = self.debris[readData(string.format("%#x",debris:getObjectID()) .. ":geonosian_lab:debris_index")]
		debris:destroyObjectFromWorld()
		createEvent(240000, "geonosian_labscreenplay", "respawnDebris", pDebris)
	end)
	--CreatureObject(pPlayer):clearCombatState(1)
	return 0
end

function geonosian_labscreenplay:giveGeoDatapad(pPlayer)
	if (pPlayer == nil) then
		return
	end
	
	local player = LuaSceneObject(pPlayer)
	local pPlayerObject = player:getSlottedObject("ghost")
	local playerObject = LuaPlayerObject(pPlayerObject)
	local pInventory = player:getSlottedObject("inventory")
	local pBackpack = player:getSlottedObject("back")
	
	if (pInventory ~= nil) and (pBackpack ~= nil) then
		local pDatapadMain = getContainerObjectByTemplate(pInventory, geonosian_labscreenplay.geoDatapad, true)
		local pDatapadPack = getContainerObjectByTemplate(pBackpack, geonosian_labscreenplay.geoDatapad, true)
		
		if (pDatapadMain == nil) and (pDatapadPack == nil) then

			local pItem = giveItem(pInventory, self.geoDatapad, -1)
	
			if (pItem ~= nil) then
				local item = LuaSceneObject(pItem)
				item:sendTo(pPlayer)
			end
			
		end

	end

	if (pInventory ~= nil) and (pBackpack == nil) then
		local pDatapadMain = getContainerObjectByTemplate(pInventory, geonosian_labscreenplay.geoDatapad, true)

		if (pDatapadMain == nil) then
		
			local pItem = giveItem(pInventory, self.geoDatapad, -1)
	
			if (pItem ~= nil) then
				local item = LuaSceneObject(pItem)
				item:sendTo(pPlayer)
			
			end
	
		end

	end

	return
end

function geonosian_labscreenplay:giveGeoTenloss(pPlayer)
	if (pPlayer == nil) then
		return
	end
	
	local player = LuaSceneObject(pPlayer)
	local pPlayerObject = player:getSlottedObject("ghost")
	local playerObject = LuaPlayerObject(pPlayerObject)
	local pInventory = player:getSlottedObject("inventory")
	local pBackpack = player:getSlottedObject("back")
	

	if (pInventory ~= nil) and (pBackpack ~= nil) then
		local pTenlossMain = getContainerObjectByTemplate(pInventory, geonosian_labscreenplay.geoTenloss, true)
		local pTenlossPack = getContainerObjectByTemplate(pBackpack, geonosian_labscreenplay.geoTenloss, true)

		if (pTenlossMain == nil) and (pTenlossPack == nil) then
		
			local pItem = giveItem(pInventory, self.geoTenloss, -1)
	
			if (pItem ~= nil) then
				local item = LuaSceneObject(pItem)
				item:sendTo(pPlayer)
	
			end

		end

	end

	if (pInventory ~= nil) and (pBackpack == nil) then
		local pTenlossMain = getContainerObjectByTemplate(pInventory, geonosian_labscreenplay.geoTenloss, true)

		if (pTenlossMain == nil) then
		
			local pItem = giveItem(pInventory, self.geoTenloss, -1)
	
			if (pItem ~= nil) then
				local item = LuaSceneObject(pItem)
				item:sendTo(pPlayer)
			
			end
	
		end

	end

	return
end

function geonosian_labscreenplay:hasGeoItem(pPlayer, itemTemplate)
	local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")

	if (pInventory == nil) then
		return 0
	end

	local pItem = getContainerObjectByTemplate(pInventory, itemTemplate, true)

	return pItem ~= nil
end

function geonosian_labscreenplay:removeGeoItem(pPlayer, itemTemplate)
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

function geonosian_labscreenplay:giveGeoItem(pPlayer, itemTemplate)
	local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")

	if (not self:hasGeoItem(pPlayer, itemTemplate)) then
		local pItem = giveItem(pInventory, itemTemplate, -1)
		if (pItem ~= nil) then
			SceneObject(pItem):sendTo(pPlayer)
		end
	end
end

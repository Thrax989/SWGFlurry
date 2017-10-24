-- BY: Mindsoft											-- last edited: 8.20.2016	-- (this code belongs soley to BloodfinEMU)
local ObjectManager = require("managers.object.object_manager")
-----------------------------------------------(SCREENPLAY)

bf_gcw_resource_quest = ScreenPlay:new {numberOfActs = 1}
registerScreenPlay("bf_gcw_resource_quest", true)

--Spawn Quest givers and triggers. - spawnMobile("planet", "mobile",respawn, x, z, y, dir, cell )
function bf_gcw_resource_quest:start()
	--spawnMobile("planet", "mobile",respawn, x, z, y, dir, cell )
		--daily quest chain starter npc
	--reb
	spawnMobile("rori","bf_gcw_resource_quest_startNPC",1,5045.8,87.01,5728.3, -180,0)
	spawnMobile("rori","gold_ticket_vendor",1,5050.9,87.01,5728.2, -135,0)
--	spawnMobile("rori","emperors_guile",1,5051,87,5722.4, -45,0)
	--imp
	spawnMobile("rori","bf_gcw_resource_quest_startNPC",1,5537,80.7,5620.9, -90,0)
	spawnMobile("rori","gold_ticket_vendor",1,5537,80.8,5625.1, -90,0)
		--gcw crafting system instuctional npc
	spawnMobile("rori","gcw_restuss_crafting_mentor_npc",1,5300.6,78.3,6134, -24,0)
		--Event Broadcaster
	local judge = spawnMobile("rori","judge",1,5208.2,80,5726.3, 17,0)
	LuaSceneObject(judge):setCustomObjectName("Event Broadcaster")
	writeData("bf_announcer",LuaSceneObject(judge):getObjectID())
	
	bf_gcw_resource_quest:spawnWalls()
	bf_gcw_resource_quest_handler:spawnActiveAreas()
	bf_gcw_resource_quest:spawnTest()
	bf_gcw_resource_quest:spawnTest()
	bf_gcw_resource_quest:spawnTest()

end

function bf_gcw_resource_quest:spawnTest()
	--getSpawnArea(zoneName,x,y,minimumDistance,maximumDistance,areaSize,maximumHeightDifference,forceSpawn)
	--local sp = getSpawnPoint("rori",5128,5681,1,30,true)
	local sp = getSpawnArea("rori",5128,5681,1,30,3,.3,true)
	print("\nspawn table x,z,y:",sp[1],sp[2],sp[3],"\n")
	local pMobile = spawnSceneObject("rori","object/static/flora/flora_plant_tato_pika.iff",sp[1],sp[2],sp[3],0,math.rad(math.random(0,360)) )
	createObserver(OBJECTDESTRUCTION,"bf_gcw_resource_quest","object_found",pMobile)
end

function bf_gcw_resource_quest:object_found(pMobile)
	print("object found",pMobile,time)
	createEvent(5000,"bf_gcw_resource_quest","spawnTest",pMobile)
	return 0
end

function bf_gcw_resource_quest:spawnWalls()
--Walls for LOS
	spawnSceneObject("rori","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",5236,78,5737,0,math.rad(0))
	spawnSceneObject("rori","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",5255,78,5721,0,math.rad(-90))
	spawnSceneObject("rori","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",5236,78,5701,0,math.rad(0))
	spawnSceneObject("rori","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",5220,78,5721,0,math.rad(90))
--Rebel Cloner Objects
	--local announcer = getSceneObject(readData("bf_announcer"))
	--local clonerReb = spawnBuilding(announcer, "bf_event_cloner_reb.iff", 5061, 5746, 0)
	local clonerReb = spawnSceneObject("rori","bf_event_cloner_reb.iff",5061,79,5746,0,math.rad(-1))
	local clonerRebWallRight = spawnSceneObject("rori","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",5068.2,81,5722,0,math.rad(1))
	local clonerRebWallInsideR = spawnSceneObject("rori","object/static/structure/military/military_wall_med_rebl_16_style_01.iff",5065.8,80,5758.7,0,math.rad(1))
	local clonerRebWallInsideL = spawnSceneObject("rori","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",5075.6,80,5732.1,0,math.rad(1))
	local clonerRebWallLeft = spawnSceneObject("rori","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",5069.3,81,5770,0,math.rad(1))
	local clonerRebWallBack = spawnSceneObject("rori","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",5045.8,83,5746.2,0,math.rad(90))
        local clonerRebWallBackHigher = spawnSceneObject("rori","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",5045.8,87,5746.2,0,math.rad(90))
	local clonerRebWallFront = spawnSceneObject("rori","object/static/structure/military/military_wall_strong_rebl_style_01.iff",5072,80,5746.4,0,math.rad(90))
	local clonerRebWallFrontL = spawnSceneObject("rori","object/static/structure/military/military_wall_strong_rebl_style_01.iff",5076.3,80,5752,0,math.rad(90))
	local clonerRebWallFrontR = spawnSceneObject("rori","object/static/structure/military/military_wall_strong_rebl_style_01.iff",5076.3,80,5740,0,math.rad(90))
	local clonerRebTower = spawnSceneObject("rori","object/building/military/military_base_gate_house_rebel.iff",5048,83,5725.2,0,math.rad(-90))
--	local clonerRebTurret = spawnSceneObject("rori","object/installation/gcw_turret/gcw_master_turret.iff",5061,84,5746,0,math.rad(90))
	--local clonerRebTurretL = spawnSceneObject("rori","object/installation/gcw_turret/gcw_master_turret.iff",5047.5,84,5733,0,math.rad(90))
	--local clonerRebTurretfL = spawnSceneObject("rori","object/installation/gcw_turret/gcw_master_turret.iff",5069,82,5723.7,0,math.rad(1))
	local clonerRebGuardHouse = spawnSceneObject("rori","object/building/military/military_outpost_guard_house_rebel.iff",5037.3,85,5756,0,math.rad(90))
	local clonerRebGuardHouseWall = spawnSceneObject("rori","object/static/structure/military/military_wall_strong_rebl_style_01.iff",5031.8,84,5761.6,0,math.rad(1))
--	local clonerRebHQ = spawnSceneObject("rori","object/building/military/military_rebel_detachment_hq.iff",5034.2,83.1,5768.9,0,math.rad(90))
        local clonerRebWallBackRight = spawnSceneObject("rori","object/static/structure/military/military_wall_med_rebl_16_style_01.iff",5045.8,83,5767.1,0,math.rad(90))
        local clonerRebWallBackRightHigher = spawnSceneObject("rori","object/static/structure/military/military_wall_med_rebl_16_style_01.iff",5045.8,87,5767.1,0,math.rad(90))
	local clonerRebHQWallSouth = spawnSceneObject("rori","object/static/structure/military/military_wall_strong_rebl_style_01.iff",5045.8,81,5779.1,0,math.rad(90))
        local clonerRebHQWallNorth = spawnSceneObject("rori","object/static/structure/military/military_wall_strong_rebl_style_01.iff",5045.8,81,5780.4,0,math.rad(90))
         local clonerRebHQWallSouthHigher = spawnSceneObject("rori","object/static/structure/military/military_wall_strong_rebl_style_01.iff",5045.8,86.3,5779.1,0,math.rad(90))
--	local clonerRebHQWallTurret = spawnSceneObject("rori","object/installation/gcw_turret/gcw_master_turret.iff",5070.9,79,5735.9,0,math.rad(-90))
	local clonerRebHQWallExterior = spawnSceneObject("rori","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",5061.8,81,5784,0,math.rad(180))
        local clonerRebHQWallExteriorhigher = spawnSceneObject("rori","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",5061.8,86,5784,0,math.rad(180))

	local clonerRebGuardTower = spawnSceneObject("rori","object/building/military/military_outpost_guard_tower_1.iff",5079.5,80,5783,0,math.rad(180))
	--local clonerRebTurretR = spawnSceneObject("rori","object/installation/gcw_turret/gcw_master_turret.iff",5054,80,5772,0,math.rad(90))--senate edit
	local clonerRebTurretRoutside = spawnSceneObject("rori","object/installation/gcw_turret/gcw_master_turret.iff",5064,80.2,5782,0,math.rad(90))
--	local clonerRebTurretfR = spawnSceneObject("rori","object/installation/gcw_turret/gcw_master_turret.iff",5070.9,79,5756.6,0,math.rad(180))
	local clonerRebWallOutside = spawnSceneObject("rori","object/static/structure/military/military_wall_strong_rebl_style_01.iff",5067.3,78,5780.2,0,math.rad(90))

--Imperial Cloner Objects
	local clonerImp = spawnSceneObject("rori","bf_event_cloner_imp.iff",5545,80.6,5623,0,math.rad(-90))
	local clonerImpWallRight = spawnSceneObject("rori","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",5549.6,79,5639,0,math.rad(1))
	local clonerImpWallLeft = spawnSceneObject("rori","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",5541.6,79,5607,0,math.rad(1))
	local clonerImpWallBack = spawnSceneObject("rori","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",5558,79,5623,0,math.rad(90))
	local clonerImpWallFront = spawnSceneObject("rori","object/static/structure/military/military_wall_strong_imperial_style_01.iff",5528.2,80,5623.5,0,math.rad(90))
	--local clonerImpTurret = spawnSceneObject("rori","object/installation/gcw_turret/gcw_master_turret.iff",5540,85,5623,0,math.rad(270))
	local clonerImpTurretL = spawnSceneObject("rori","object/installation/gcw_turret/gcw_master_turret.iff",5556.3,80.5,5637,0,math.rad(-90))
	local clonerImpTurretR = spawnSceneObject("rori","object/installation/gcw_turret/gcw_master_turret.iff",5556.3,80.5,5608.5,0,math.rad(-90))
	local clonerImpHQ = spawnSceneObject( "rori","object/building/military/military_imperial_detachment_hq.iff",5535,80.8,5657,0,math.rad(180))
	local clonerImpWallHqSide = spawnSceneObject("rori","object/static/structure/military/military_wall_strong_imperial_style_01.iff",5524,80,5663.2,0,math.rad(0))
	local clonerImpWallHqMain = spawnSceneObject("rori","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",5544,79,5677,0,math.rad(1))
	local clonerImpWallHqBack = spawnSceneObject("rori","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",5558,79,5655,0,math.rad(90))
	local clonerImpWallHqSideFront = spawnSceneObject("rori","object/static/structure/military/military_wall_strong_imperial_style_01.iff",5525.7,80,5648.5,0,math.rad(180))
	local clonerImpGuardTower = spawnSceneObject("rori","object/building/military/military_outpost_guard_tower_1.iff",5563.2,82,5639,0,math.rad(180))
	local clonerGuardHouse = spawnSceneObject("rori","object/building/military/military_outpost_guard_house_imperial.iff",5554.5,80.5,5662,0,math.rad(90))
	local clonerImpTurretHqFront = spawnSceneObject("rori","object/installation/gcw_turret/gcw_master_turret.iff",5554,80.7,5653,0,math.rad(-90))
	--local clonerImpTurretHqBack = spawnSceneObject("rori","object/installation/gcw_turret/gcw_master_turret.iff",5555,81,5669.5,0,math.rad(-90))
	--local clonerImpTurretHall = spawnSceneObject("rori","object/installation/gcw_turret/gcw_master_turret.iff",5521,80.5,5664.9,0,math.rad(0))
	local clonerImpWallFrontL = spawnSceneObject("rori","object/static/structure/military/military_wall_strong_imperial_style_01.iff",5521.8,80,5629.7,0,math.rad(270))
	local clonerImpWallFrontR = spawnSceneObject("rori","object/static/structure/military/military_wall_strong_imperial_style_01.iff",5521.8,80,5617.8,0,math.rad(270))
	local clonerImpWallRearEntrance = spawnSceneObject("rori","object/static/structure/military/military_wall_strong_imperial_style_01.iff",5564.5,80,5673.2,0,math.rad(-90))
	local clonerImpPillar = spawnSceneObject("rori","object/static/structure/military/military_column_strong_imperial_style_01.iff",5558,80,5606.6,0,math.rad(-46))
	local clonerImpPillarFlag = spawnSceneObject("rori","object/static/structure/general/banner_imperial_style_01.iff",5558,85.3,5606.6,0,math.rad(-46))
	local clonerImpFlageLA = spawnSceneObject("rori","object/static/structure/general/banner_imperial_style_01.iff",5518.1,80.1,5636.2,0,math.rad(90))
	local clonerImpFlageLB = spawnSceneObject("rori","object/static/structure/general/banner_imperial_style_01.iff",5520.4,80.1,5629.7,0,math.rad(90))
	local clonerImpFlageRA = spawnSceneObject("rori","object/static/structure/general/banner_imperial_style_01.iff",5518.1,80.1,5611.2,0,math.rad(90))
	local clonerImpFlageRB = spawnSceneObject("rori","object/static/structure/general/banner_imperial_style_01.iff",5520.4,80.1,5617.7,0,math.rad(90))
	local clonerImpFlageGuardhouse = spawnSceneObject("rori","object/static/structure/general/banner_imperial_style_01.iff",5561,80.8,5661.2,0,math.rad(-90))
	local clonerImpFlageGuardgate = spawnSceneObject("rori","object/static/structure/general/banner_imperial_style_01.iff",5564.5,81,5677.6,0,math.rad(180))
	local clonerImpFlageRB = spawnSceneObject("rori","object/static/structure/general/banner_imperial_style_01.iff",5506.5,80,5672.5,0,math.rad(90))
        local clonerCoalBinSouth = spawnSceneObject("rori","object/tangible/dungeon/coal_bin_container.iff",5518,80,5664,0,math.rad(90))

--set imp turret
		print("setting turret factions","bf_gcw_resource_quest")
		--LuaTangibleObject(clonerImpTurret):setFaction(0xDB4ACC54) --clonerImpTurret
		LuaTangibleObject(clonerImpTurretL):setFaction(0xDB4ACC54)
		LuaTangibleObject(clonerImpTurretR):setFaction(0xDB4ACC54)
		LuaTangibleObject(clonerImpTurretHqFront):setFaction(0xDB4ACC54)
		--LuaTangibleObject(clonerImpTurretHqBack):setFaction(0xDB4ACC54)
		--LuaTangibleObject(clonerImpTurretHall):setFaction(0xDB4ACC54)
--set reb turret
--		LuaTangibleObject(clonerRebTurret):setFaction(0x16148850)
--		LuaTangibleObject(clonerRebTurretL):setFaction(0x16148850)
--		LuaTangibleObject(clonerRebTurretR):setFaction(0x16148850)
--		LuaTangibleObject(clonerRebTurretfR):setFaction(0x16148850)
--		LuaTangibleObject(clonerRebTurretfL):setFaction(0x16148850)
		LuaTangibleObject(clonerRebTurretRoutside):setFaction(0x16148850)
--		LuaTangibleObject(clonerRebHQWallTurret):setFaction(0x16148850)	
	
--Write Cloner ID's
	writeStringData("bf_gcw_instance_name", "restuss_test")
	writeData("restuss_gcw_cloner", "1")
	writeData("restuss_gcw_cloner_reb", LuaSceneObject(clonerReb):getObjectID())
	writeData("restuss_gcw_cloner_imp", LuaSceneObject(clonerImp):getObjectID())
--Write Wall ID's
	--Rebel
	writeData("restuss_clonerImpWallRight", LuaSceneObject(clonerImpWallRight):getObjectID())
	writeData("restuss_clonerImpWallLeft", LuaSceneObject(clonerImpWallLeft):getObjectID())
	writeData("restuss_clonerImpWallBack", LuaSceneObject(clonerImpWallBack):getObjectID())
	writeData("restuss_clonerImpWallFront", LuaSceneObject(clonerImpWallFront):getObjectID())
	--Imperial
	writeData("restuss_clonerRebWallRight", LuaSceneObject(clonerRebWallRight):getObjectID())
	writeData("restuss_clonerRebWallLeft", LuaSceneObject(clonerRebWallLeft):getObjectID())
	writeData("restuss_clonerRebWallBack", LuaSceneObject(clonerRebWallBack):getObjectID())
	writeData("restuss_clonerRebWallFront", LuaSceneObject(clonerRebWallFront):getObjectID())
end

function bf_gcw_resource_quest:announce(_,text)
	local pObject = getSceneObject(readData("bf_announcer"))
	LuaCreatureObject(pObject):broadcastGalaxy(text)
	return 0
end

function bf_gcw_resource_quest:despawnWalls()

end

bf_gcw_resource_quest_handler = Object:new {}
-----------------------------------------------(NEXT CONVO HANDLER)

function bf_gcw_resource_quest_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	return bf_tools_convo_handler:generic_getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
end

-----------------------------------------------(SCREEN HANDLER)
function bf_gcw_resource_quest_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)

	local quest = {
-- necessary values:
	["player"] =  conversingPlayer,
	["creature"] = LuaCreatureObject(conversingPlayer),
	["questString"] = "bf_gcw_resource_quest",
	["npc"] = conversingNPC,
-- Editable values:
	["buy"] = function(...) return bf_gcw_resource_quest_handler:buyResource(...) end,
	["first_screen"] = function(table)
		if table.creature:hasSkill("admin_base") then return "godmode" 
		elseif table.creature:hasSkill("crafting_artisan_master") == false then return "notCrafter" end end,
	["give_500"] = function(table) bf_gcw_troop_menu:giveGCWResource(table.player, 500) end,
	["give_1000"] = function(table) bf_gcw_troop_menu:giveGCWResource(table.player, 1000) end,
	["give_1500"] = function(table) bf_gcw_troop_menu:giveGCWResource(table.player, 1500) end,
	["give_2000"] = function(table) bf_gcw_troop_menu:giveGCWResource(table.player, 2000) end,
	["reset_all"] = function(table) end,
	["four_man"] = function(table) end,
	["eight_man"] = function(table) end,
	["two_man_team"] = function(table) end,
	["four_man_team"] = function(table) end,
	--["cloner"] = function(table) 
		--if readData("restuss_gcw_cloner") == 1 then return "cloner_on" else return "cloner_off" end end,
	--["cloner_on"] = function(table) 	writeData("restuss_gcw_cloner", "1")end,
	--["cloner_off"] = function(table) 	writeData("restuss_gcw_cloner", "1")end,
	["start_one"] = function(table)
		if readData("bf_gcw_instance") == 0 or readData("bf_gcw_instance") == 2 then
			print("1 hour timer set for restuss")
			writeData("bf_gcw_instance", 1)
			createEvent(3600000,"bf_gcw_resource_quest_handler","instanceStart","")
			createEvent(600000,"bf_gcw_resource_quest","announce",table.player,"Restuss PVP Event will start in 50 minutes, the factional transit pilots provide free transport to the event if you have positive faction")
			createEvent(1200000,"bf_gcw_resource_quest","announce",table.player,"Restuss PVP Event will start in 40 minutes, the factional transit pilots provide free transport to the event if you have positive faction")
			createEvent(1800000,"bf_gcw_resource_quest","announce",table.player,"Restuss PVP Event will start in 30 minutes, the factional transit pilots provide free transport to the event if you have positive faction")
			createEvent(2400000,"bf_gcw_resource_quest","announce",table.player,"Restuss PVP Event will start in 20 minutes, the factional transit pilots provide free transport to the event if you have positive faction")
			createEvent(3000000,"bf_gcw_resource_quest","announce",table.player,"Restuss PVP Event will start in 10 minutes, the factional transit pilots provide free transport to the event if you have positive faction")
			createEvent(3300000,"bf_gcw_resource_quest","announce",table.player,"Restuss PVP Event will start in 5 minutes, the factional transit pilots provide free transport to the event if you have positive faction")
			createEvent(3480000,"bf_gcw_resource_quest","announce",table.player,"Restuss PVP Event will start in 2 minutes, the factional transit pilots provide free transport to the event if you have positive faction")
			LuaCreatureObject(getSceneObject(readData("bf_announcer"))):broadcastGalaxy("Restuss PVP Event will start in in 1 hour, the factional transit pilots provide free transport to the event if you have positive faction")
		end end,
	["start_thirty"] = function(table)
		if readData("bf_gcw_instance") == 0 or readData("bf_gcw_instance") == 2 then
			print("30 min timer set for restuss")
			writeData("bf_gcw_instance", 1)
			createEvent(1800000,"bf_gcw_resource_quest_handler","instanceStart","")
			createEvent(600000,"bf_gcw_resource_quest","announce",table.player,"Restuss PVP Event will start in 20 minutes, the factional transit pilots provide free transport to the event if you have positive faction")
			createEvent(1200000,"bf_gcw_resource_quest","announce",table.player,"Restuss PVP Event will start in 10 minutes, the factional transit pilots provide free transport to the event if you have positive faction")
			createEvent(1500000,"bf_gcw_resource_quest","announce",table.player,"Restuss PVP Event will start in 5 minutes, the factional transit pilots provide free transport to the event if you have positive faction")
			createEvent(1620000,"bf_gcw_resource_quest","announce",table.player,"Restuss PVP Event will start in 2 minutes, the factional transit pilots provide free transport to the event if you have positive faction")
			LuaCreatureObject(getSceneObject(readData("bf_announcer"))):broadcastGalaxy("Restuss PVP Event will start in 30 minutes, the factional transit pilots provide free transport to the event if you have positive faction")
		end end,
	["start_now"] = function(table)
		if readData("bf_gcw_instance") == 0 or readData("bf_gcw_instance") == 2 then
			print("restuss event started")
			createEvent(3000,"bf_gcw_resource_quest_handler","instanceStart","")
			bf_gcw_resource_quest_handler:instanceStart(table,"test")
		end end,
	["stop"] = function (table)
		if readData("bf_gcw_instance") == 1 then bf_gcw_resource_quest_handler:stop()
			print("restuss event halted")
		end end,
	}
	return bf_tools_convo_handler:generic_runScreenHandlers( conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen, quest)
end

-----------------------------------------------(SCREEN HANDLER FUNCTIONS)

function bf_gcw_resource_quest_handler:buyResource(quest)
	local pPlayer = quest.player
	if pPlayer == nil then
		return false
	end

	local player = LuaCreatureObject(pPlayer)
	local currentTime = os.time()
	local receivedTime = readScreenPlayData(pPlayer, "bf_gcw_resource_quest", "time")
	local receivedDays = readScreenPlayData(pPlayer, "bf_gcw_resource_quest", "days")
	local seconds = 0
	local density = 400

	if receivedTime ~= "" then
		seconds = os.difftime(currentTime, receivedTime)
		if (seconds < 72000) then --less than 20 hours passed (72000 seconds)
			player:sendSystemMessage("You must wait "..tostring(72000-seconds).." seconds to complete this transaction")
			return "mustWait"
		end
	end

	if receivedDays == "" or seconds > 172800 then --greater than 48hrs(172800 seconds)
		receivedDays = 0
		writeScreenPlayData(pPlayer, "bf_gcw_resource_quest", "days",0)
	end
	density = ((density + (receivedDays * 100))+100)
	if density > 2000 then density = 2000 end

	if player:getBankCredits() > 20000 then
		if bf_gcw_troop_menu:giveGCWResource(pPlayer, density) then
			player:setBankCredits(player:getBankCredits()-20000)
			player:sendSystemMessage("GCW Resources Purchased for 20k credits(Bank)")
			writeScreenPlayData(pPlayer, "bf_gcw_resource_quest", "time", currentTime)
			writeScreenPlayData(pPlayer, "bf_gcw_resource_quest", "days",(receivedDays+1))
		end
	elseif player:getCashCredits() > 20000 then
		if bf_gcw_troop_menu:giveGCWResource(pPlayer, density) then
			player:subtractCashCredits(20000)
			player:sendSystemMessage("GCW Resources Purchased for 20k credits(Cash)")
			writeScreenPlayData(pPlayer, "bf_gcw_resource_quest", "time", currentTime)
			writeScreenPlayData(pPlayer, "bf_gcw_resource_quest", "days",(receivedDays+1))
		end
	else
		player:sendSystemMessage("@dispenser:insufficient_funds")
		return false
	end
	return true
end

function bf_gcw_resource_quest_handler:instanceStart(quest,InstanceType)
	LuaCreatureObject(getSceneObject(readData("bf_announcer"))):broadcastGalaxy("Restuss PVP Event has begun!!")
--Spawn Boss's & Bind Destruction Observers
	local luke = spawnMobile("rori", "skywalker_pvp",-1, 5182.3, 80, 5749, 90, 0 )
	createObserver(OBJECTDESTRUCTION, "bf_gcw_resource_quest_handler", "lukeDead", luke)
	local vader = spawnMobile("rori", "vader_pvp",-1, 5492.25, 80, 5707.39, -90, 0 )
	createObserver(OBJECTDESTRUCTION, "bf_gcw_resource_quest_handler", "vaderDead", vader)

--Write Boss ID's
	writeData("bf_gcw_instance", 1)
	writeData("restuss_gcw_vader", LuaSceneObject(vader):getObjectID())
	writeData("restuss_gcw_luke", LuaSceneObject(luke):getObjectID())
	return 0
end

--Handle Rebs Lose
function bf_gcw_resource_quest_handler:lukeDead(luke)
	print("\nImperials Win The Event\n")
	local vader = getSceneObject(readData("restuss_gcw_vader"))
	local strOne = "Imperials Win the Battle!\nRestuss is once again under the Emporer's rule."
	local strTwo = "I will return soon father, and free this city."
	createEvent(4000,"bf_gcw_resource_quest_handler","Deadtaunt",vader,strOne)
	createEvent(7000,"bf_gcw_resource_quest_handler","Deadreply",luke,strTwo)
	return 0
end

--System broadcast winner taunt
function bf_gcw_resource_quest_handler:Deadtaunt(pCreature,string)
	LuaCreatureObject(pCreature):broadcastGalaxy(string)
	return 0
end

--System broadcast loser reply and destroy bosses
function bf_gcw_resource_quest_handler:Deadreply(pCreature,string)
	LuaCreatureObject(pCreature):broadcastGalaxy(string)
	bf_gcw_resource_quest_handler:stop()
	return 0
end

--Handle Imps Lose
function bf_gcw_resource_quest_handler:vaderDead(vader)
	print("\nRebels Win The Event\n")
	local luke = getSceneObject(readData("restuss_gcw_luke"))
	strOne = "Rebels Win the Battle!\nRestuss is once again a free city."
	strTwo = "Your victory is pointless, the Empire will rule here again."
	createEvent(5000,"bf_gcw_resource_quest_handler","Deadtaunt",luke,strOne)
	createEvent(8000,"bf_gcw_resource_quest_handler","Deadreply",vader,strTwo)
	return 0
end

--Handle rewards

--Spawn cloner areas
function bf_gcw_resource_quest_handler:spawnActiveAreas()
	local pSpawnArea = spawnSceneObject("rori", "object/active_area.iff", 5055.8, 80, 5756.3, 0, 0, 0, 0, 0)
	if (pSpawnArea ~= nil) then
		local activeArea = LuaActiveArea(pSpawnArea)
		activeArea:setCellObjectID(0)
		activeArea:setRadius(27)
		createObserver(ENTEREDAREA, "bf_gcw_resource_quest_handler", "notifyRebelSpawnArea", pSpawnArea)
	end

	local pSpawnArea2 = spawnSceneObject("rori", "object/active_area.iff", 5541, 80.6, 5632, 0, 0, 0, 0, 0)
	if (pSpawnArea2 ~= nil) then
		local activeArea = LuaActiveArea(pSpawnArea2)
		activeArea:setCellObjectID(0)
		activeArea:setRadius(26)
		createObserver(ENTEREDAREA, "bf_gcw_resource_quest_handler", "notifyImperialSpawnArea", pSpawnArea2)
	end

end

--Rebel spawn area
function bf_gcw_resource_quest_handler:notifyRebelSpawnArea(activeArea, pMovingObject)
	if (not SceneObject(pMovingObject):isCreatureObject()) then
			return 0
	end
	local creature = LuaCreatureObject(pMovingObject)
	if creature:hasSkill("admin_base") then 
		return 0 
	end

	local lSOB = LuaSceneObject(pMovingObject)
	local ltoSOB = LuaTangibleObject(pMovingObject)
	local mask = ltoSOB:getPvpStatusBitmask()
	if lSOB:isPlayerCreature() then
		if mask~= 20 then
			creature:sendSystemMessage("You have entered Restuss PVP Zone.\nYou are now Special Forces.")
		end
	else
	end
	createEvent(1, "pvp", "handlePvpZone", pMovingObject)
	if not creature:isRebel() then
		if creature:isInvisible() then
			creature:sendSystemMessage("You are the wrong faction to enter this area.")
			LuaCreatureObject(pMovingObject):setVisible()
			creature:playEffect("clienteffect/pl_force_speed_self.cef","")
		else
			creature:sendSystemMessage("You are the wrong faction to enter this area.")
		end
		LuaSceneObject(pMovingObject):teleport(5099, 80, 5746, 0)
	elseif creature:isInCombat() then
		creature:sendSystemMessage("You cannot Enter this area while in combat")
		LuaSceneObject(pMovingObject):teleport(5099, 80, 5746, 0)

	end
		
	return 0
end

--Imperial spawn area
function bf_gcw_resource_quest_handler:notifyImperialSpawnArea(activeArea, pMovingObject)
	if (not SceneObject(pMovingObject):isCreatureObject()) then
			return 0
	end
	local creature = LuaCreatureObject(pMovingObject)
	if creature:hasSkill("admin_base") then 
		return 0 
	end
	local lSOB = LuaSceneObject(pMovingObject)
	local ltoSOB = LuaTangibleObject(pMovingObject)
	local mask = ltoSOB:getPvpStatusBitmask()

	if lSOB:isPlayerCreature() then
		if mask~= 20 then
			creature:sendSystemMessage("You have entered Restuss PVP Zone.\nYou are now Special Forces.")
		end
	else
	end
	createEvent(1, "pvp", "handlePvpZone", pMovingObject)
	if not creature:isImperial() then
		if creature:isInvisible() then
			creature:sendSystemMessage("You are the wrong faction to enter this area.")
			LuaCreatureObject(pMovingObject):setVisible()
			creature:playEffect("clienteffect/pl_force_speed_self.cef","")
		else
			creature:sendSystemMessage("You are the wrong faction to enter this area.")
		end
		LuaSceneObject(pMovingObject):teleport(5500, 80, 5622, 0)
	elseif creature:isInCombat() then
		creature:sendSystemMessage("You cannot Enter this area while in combat")
		LuaSceneObject(pMovingObject):teleport(5500, 80, 5622, 0)

	end
		
	return 0
end

	--Handle Instance end / staff force end
function bf_gcw_resource_quest_handler:stop()
	--set data to busy state
		writeData("bf_gcw_instance", 2)
	--Read Boss ID's and destroy them
		bf_gcw_resource_quest_handler:stopObject(readData("restuss_gcw_vader"))
		bf_gcw_resource_quest_handler:stopObject(readData("restuss_gcw_luke"))
	return 0
end

--[[
--Remove Wall and cloner after timer has expired (currently not use)
function bf_gcw_resource_quest_handler:destroyWalls()
--Remove Cloners
		bf_gcw_resource_quest_handler:stopObject(readData("restuss_gcw_cloner_reb"))
		bf_gcw_resource_quest_handler:stopObject(readData("restuss_gcw_cloner_imp"))
--Remove Walls
	--Rebel
		bf_gcw_resource_quest_handler:stopObject(readData("restuss_clonerImpWallRight"))
		bf_gcw_resource_quest_handler:stopObject(readData("restuss_clonerImpWallLeft"))
		bf_gcw_resource_quest_handler:stopObject(readData("restuss_clonerImpWallBack"))
		bf_gcw_resource_quest_handler:stopObject(readData("restuss_clonerImpWallFront"))
	--Imperial
		bf_gcw_resource_quest_handler:stopObject(readData("restuss_clonerRebWallRight"))
		bf_gcw_resource_quest_handler:stopObject(readData("restuss_clonerRebWallLeft"))
		bf_gcw_resource_quest_handler:stopObject(readData("restuss_clonerRebWallBack"))
		bf_gcw_resource_quest_handler:stopObject(readData("restuss_clonerRebWallFront"))
	return 0
end
]]

--get pointer from key and destroy objects
function bf_gcw_resource_quest_handler:stopObject(key)
	local pObject = getSceneObject(key)
	bf_gcw_crafting_menu:destroy(pObject)
	return 0
end

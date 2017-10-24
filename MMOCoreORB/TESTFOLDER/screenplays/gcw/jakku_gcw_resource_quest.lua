-- BY: Mindsoft											-- last edited: 8.20.2016	-- (this code belongs soley to BloodfinEMU)
local ObjectManager = require("managers.object.object_manager")
-----------------------------------------------(SCREENPLAY)

jakku_gcw_resource_quest = ScreenPlay:new {numberOfActs = 1}
registerScreenPlay("jakku_gcw_resource_quest", true)

--Spawn Quest givers and triggers. - spawnMobile("planet", "mobile",respawn, x, z, y, dir, cell )
function jakku_gcw_resource_quest:start()
	--spawnMobile("planet", "mobile",respawn, x, z, y, dir, cell )
		--daily quest chain starter npc
	--reb
	spawnMobile("jakku","jakku_gcw_resource_quest_startNPC",1,-5705.5,48.4,5507.3, -43,0)
	spawnMobile("jakku","gold_ticket_vendor",1,-5709.2,47.9,5503.6, -44,0)
--	spawnMobile("jakku","emperors_guile",1,5051,87,5722.4, -45,0)
	--imp
	spawnMobile("jakku","jakku_gcw_resource_quest_startNPC",1,-5993.7,37.1,6108.7, 178,0)
	spawnMobile("jakku","gold_ticket_vendor",1,-5989.6,37.1,6109.0, 179,0)
		--gcw crafting system instuctional npc
	spawnMobile("jakku","jakku_dealer",1,4345.4,7.5,-5098.6, -164,0)
--	spawnMobile("jakku","gcw_jakku_crafting_mentor_npc",1,-5973.0,19.6,5788.6, -138,0)
		--Event Broadcaster
	local judge = spawnMobile("jakku","judge",1,-5973.3,19.6,5789.2, 173,0)
	LuaSceneObject(judge):setCustomObjectName("Event Broadcaster")
	writeData("jakku_announcer",LuaSceneObject(judge):getObjectID())
	
	jakku_gcw_resource_quest:spawnWalls()
	jakku_gcw_resource_quest_handler:spawnActiveAreas()
--	jakku_gcw_resource_quest:spawnTest()
--	jakku_gcw_resource_quest:spawnTest()
--	jakku_gcw_resource_quest:spawnTest()

end

function jakku_gcw_resource_quest:spawnTest()
	--getSpawnArea(zoneName,x,y,minimumDistance,maximumDistance,areaSize,maximumHeightDifference,forceSpawn)
	--local sp = getSpawnPoint("jakku",5128,5681,1,30,true)
	local sp = getSpawnArea("jakku",-6059,5588,1,30,3,.3,true)
	print("\nspawn table x,z,y:",sp[1],sp[2],sp[3],"\n")
	local pMobile = spawnSceneObject("jakku","object/static/flora/flora_plant_tato_pika.iff",sp[1],sp[2],sp[3],0,math.rad(math.random(0,360)) )
	createObserver(OBJECTDESTRUCTION,"jakku_gcw_resource_quest","object_found",pMobile)
end

function jakku_gcw_resource_quest:object_found(pMobile)
	print("object found",pMobile,time)
	createEvent(5000,"jakku_gcw_resource_quest","spawnTest",pMobile)
	return 0
end

function jakku_gcw_resource_quest:spawnWalls()

--Rebel Cloner Objects
	local clonerReb = spawnSceneObject("jakku","bf_event_cloner_reb.iff",-5720,49,5463,0,math.rad(-45))
	local clonerRebWallOne = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5699,50,5460,0,math.rad(-45))
	local clonerRebWallOneB = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5699,54,5460,0,math.rad(-45))
	local clonerRebWallTwo = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5710,50,5447,0,math.rad(-45))
	local clonerRebWallTwoB = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5710,54,5447,0,math.rad(-45))
	local clonerRebWallThree = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5732,50,5447,0,math.rad(-135))
	local clonerRebWallThreeC = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5732,54,5447,0,math.rad(-135))
	local clonerRebWallFour = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5751,50,5466,0,math.rad(-135))
	local clonerRebWallFourB = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5751,54,5466,0,math.rad(-135))
	local clonerRebWallFive = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5755,48,5485,0,math.rad(-45))
	local clonerRebWallFiveB = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5755,52,5485,0,math.rad(-45))
	local clonerRebWallSix = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5735,48,5505,0,math.rad(-45))
	local clonerRebWallSixB = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5735,52,5505,0,math.rad(-45))
	local clonerRebWallSeven = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5714,48,5526,0,math.rad(-45))
	local clonerRebWallSevenB = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5714,52,5526,0,math.rad(-45))
	local clonerRebWallEight = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5692,46,5527,0,math.rad(45))
	local clonerRebWallEightB = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5692,50,5527,0,math.rad(45))
	local clonerRebWallNine = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5674,48,5509,0,math.rad(45))
	local clonerRebWallNineB = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5674,52,5509,0,math.rad(45))
	local clonerRebWallTen = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5660,48,5490,0,math.rad(-20))
	local clonerRebWallTenB = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5660,52,5490,0,math.rad(-20))
	local clonerRebWallEleven = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5654,48,5506,0,math.rad(45))
	local clonerRebWallElevenB = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5654,52,5506,0,math.rad(45))
	local clonerRebWallTwelve = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5673,46,5525,0,math.rad(45))
	local clonerRebWallTwelve = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5673,50,5525,0,math.rad(45))
	local clonerRebWallThirteen = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5735,51,5432,0,math.rad(-10))
	local clonerRebWallFourteen = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5759,51,5428,0,math.rad(-10))
	local clonerRebWallFifteen = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5655,45,5529,0,math.rad(-45))
	local clonerRebWallSixteen = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5634,43,5551,0,math.rad(-45))
	local clonerRebWallSeventeen = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5685,43,5552,0,math.rad(-135))
	local clonerRebWallEightteen = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5714,48,5550,0,math.rad(-45))
	local clonerRebWallNineteen = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5680,42,5581,0,math.rad(55))
	local clonerRebWallTwenty = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5656,42,5561,0,math.rad(20))
	local clonerRebWallTwenty = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5834,34,5660,0,math.rad(-45))
	local clonerRebWallTwenty = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5834,39,5660,0,math.rad(-45))
	local clonerRebWallTwenty = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5916,37,5592,0,math.rad(-10))
	local clonerRebWallTwenty = spawnSceneObject("jakku","object/static/structure/military/military_wall_med_rebl_32_style_01.iff",-5916,42,5592,0,math.rad(-10))
	local clonerRebTurretOne = spawnSceneObject("jakku","object/installation/gcw_turret/gcw_master_turret.iff",-5652,47,5495,0,math.rad(-45))
	local clonerRebTurretTwo = spawnSceneObject("jakku","object/installation/gcw_turret/gcw_master_turret.iff",-5671,48,5490,0,math.rad(70))
	local clonerRebTurretThree = spawnSceneObject("jakku","object/installation/gcw_turret/gcw_master_turret.iff",-5700,45,5531,0,math.rad(140))
	local clonerRebTurretFour = spawnSceneObject("jakku","object/installation/gcw_turret/gcw_master_turret.iff",-5736,50,5465,0,math.rad(15))
	local clonerRebGuardTower = spawnSceneObject("jakku","object/building/military/military_outpost_guard_tower_1.iff",-5755,53,5603,0,math.rad(35))
	local clonerRebGuardTower = spawnSceneObject("jakku","object/building/military/military_outpost_guard_tower_1.iff",-5714,45,5616,0,math.rad(125))
	local clonerRebGuardTower = spawnSceneObject("jakku","object/building/military/military_outpost_guard_tower_1.iff",-5661,41,5577,0,math.rad(135))

--Imperial Cloner Objects
	local clonerImp = spawnSceneObject("jakku","bf_event_cloner_imp.iff",-6034,36.5,6131,0,math.rad(-179))
	local clonerImpWallOne = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6019,36,6148,0,math.rad(1))
	local clonerImpWallOnB = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6019,40,6148,0,math.rad(1))
	local clonerImpWallTwo = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6046,36,6148,0,math.rad(1))
	local clonerImpWallTwoB = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6046,40,6148,0,math.rad(1))
	local clonerImpWallThree = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6061,38,6132,0,math.rad(-90))
	local clonerImpWallThreeB = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6061,42,6132,0,math.rad(-90))
	local clonerImpWallFour = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6062,40,6101,0,math.rad(-90))
	local clonerImpWallFourB = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6062,44,6101,0,math.rad(-90))
	local clonerImpWallFive = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6047,41,6086,0,math.rad(-179))
	local clonerImpWallFiveB = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6047,44,6086,0,math.rad(-179))
	local clonerImpWallSix = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6016,42,6085,0,math.rad(-179))
	local clonerImpWallSixB = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6016,46,6085,0,math.rad(-179))
	local clonerImpWallSeven = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5985,42,6084,0,math.rad(-179))
	local clonerImpWallSevenB = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5985,46,6084,0,math.rad(-179))
	local clonerImpWallEight = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5965,42,6097,0,math.rad(105))
	local clonerImpWallEightB = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5965,46,6097,0,math.rad(105))
	local clonerImpWallNine = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5961,40,6126,0,math.rad(90))
	local clonerImpWallNineB = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5961,44,6126,0,math.rad(90))
	local clonerImpWallTen = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5965,38,6148,0,math.rad(165))
	local clonerImpWallTenB = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5965,42,6148,0,math.rad(165))
	local clonerImpWallEleven = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5951,40,6135,0,math.rad(90))
	local clonerImpWallElevenB = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5951,44,6135,0,math.rad(90))
	local clonerImpWallTwelve = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5951,40,6108,0,math.rad(90))
	local clonerImpWallTwelveB = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5951,44,6108,0,math.rad(90))
	local clonerImpWallThirteen = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5971,44,6066,0,math.rad(179))
	local clonerImpWallFourteen = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5938,44,6095,0,math.rad(90))
	local clonerImpWallFifteen = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6074,38,6142,0,math.rad(165))
	local clonerImpWallSixteen = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6104,44,6133,0,math.rad(165))
	local clonerImpWallSeventeen = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6133,48,6126,0,math.rad(165))
	local clonerImpWallEightteen = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_style_01.iff",-6151,51,6118,0,math.rad(130))
	local clonerImpWallNineteen = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_style_01.iff",-6154,51,6114,0,math.rad(130))
	local clonerImpWallTwenty = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5937,39,6147,0,math.rad(-160))
	local clonerImpWallTwentyOne = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5908,44,6135,0,math.rad(-160))
	local clonerImpWallTwentyTwo = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5879,48,6124,0,math.rad(-160))
	local clonerImpWallTwentyThree = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5854,49,6115,0,math.rad(-160))
	local clonerImpWallTwentyFour = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5825,50,6104,0,math.rad(-160))
	local clonerImpWallTwentyFive = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_16_style_01.iff",-5809,52,6093,0,math.rad(-100))
	local clonerImpWallTwentyFive = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5875,41,5924,0,math.rad(-170))
	local clonerImpWallTwentyFive = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5875,46,5924,0,math.rad(-170))
	local clonerImpWallTwentyFive = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6031,35,5920,0,math.rad(-175))
	local clonerImpWallTwentyFive = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6031,40,5920,0,math.rad(-175))

--       Wall Maze around Center Chasm Base

	local mazeWallOne = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5888,28,5850,0,math.rad(45))
	local mazeWallTwo = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5886,25,5690,0,math.rad(-20))
	local mazeWallThree = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5946,23,5810,0,math.rad(0))
	local mazeWallFour = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5961,42,5936,0,math.rad(0))
	local mazeWallFive = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5872,31,5623,0,math.rad(-30))
--	local mazeWallSix = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6023,23,5750,0,math.rad(0))
	local mazeWallSeven = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6010,23,5735,0,math.rad(0))
	local mazeWallEight = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6058,24,5774,0,math.rad(90))
--	local mazeWallNine = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5961,40,6126,0,math.rad(90))
--	local mazeWallTen = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5965,23,5745,0,math.rad(0))
	local mazeWallEleven = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5947,23,5735,0,math.rad(0))
	local mazeWallTwelve = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5979,23,5735,0,math.rad(0))
	local mazeWallThirteen = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6044,23,5735,0,math.rad(0))
--	local mazeWallFourteen = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6058,23,5751,0,math.rad(90))
--	local mazeWallFifteen = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6058,23,5800,0,math.rad(90))
--	local mazeWallSixteen = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5931,23,5749,0,math.rad(90))
	local mazeWallSeventeen = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5931,23,5773,0,math.rad(90))
--	local mazeWallEightteen = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5931,23,5796,0,math.rad(90))
	local mazeWallNineteen = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5976,23,5810,0,math.rad(0))
	local mazeWallTwenty = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6010,23,5810,0,math.rad(0))
	local mazeWallTwentyOne = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6041,23,5810,0,math.rad(0))
--	local mazeWallTwentyTwo = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5949,23,5761,0,math.rad(90))
--	local mazeWallTwentyThree = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5991,23,5803,0,math.rad(0))
--	local mazeWallTwentyFour = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6006,23,5764,0,math.rad(90))
--	local mazeWallTwentyFive = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6006,23,5785,0,math.rad(90))
--	local mazeWallTwentySix = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6006,23,5793,0,math.rad(90))
--	local mazeWallTwentySeven = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6039,23,5750,0,math.rad(90))
--	local mazeWallTwentyEight = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5940,23,5783,0,math.rad(90))
--	local mazeWallTwentyNine = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5993,24,5827,0,math.rad(1))
--	local mazeWallThirty = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6026,25,5712,0,math.rad(-179))
--	local mazeWallThirtyOne = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-5833,34,5769,0,math.rad(-90))
--	local mazeWallThirtyTwo = spawnSceneObject("jakku","object/static/structure/military/military_wall_strong_imperial_32_style_01.iff",-6160,30,5777,0,math.rad(90))



	local clonerImpTurretOne = spawnSceneObject("jakku","object/installation/gcw_turret/gcw_master_turret.iff",-5955,39,6147,0,math.rad(-179))
	local clonerImpTurretTwo = spawnSceneObject("jakku","object/installation/gcw_turret/gcw_master_turret.iff",-5972,37,6141,0,math.rad(90))
	local clonerImpTurretThree = spawnSceneObject("jakku","object/installation/gcw_turret/gcw_master_turret.iff",-5967,39,6102,0,math.rad(1))
	local clonerImpTurretFour = spawnSceneObject("jakku","object/installation/gcw_turret/gcw_master_turret.iff",-6047,38,6114,0,math.rad(90))

--set imp turret
		LuaTangibleObject(clonerImpTurretOne):setFaction(0xDB4ACC54)
		LuaTangibleObject(clonerImpTurretTwo):setFaction(0xDB4ACC54)
		LuaTangibleObject(clonerImpTurretThree):setFaction(0xDB4ACC54)
		LuaTangibleObject(clonerImpTurretFour):setFaction(0xDB4ACC54)

--set reb turret
--		LuaTangibleObject(clonerRebTurret):setFaction(0x16148850)
		LuaTangibleObject(clonerRebTurretOne):setFaction(0x16148850)
		LuaTangibleObject(clonerRebTurretTwo):setFaction(0x16148850)
		LuaTangibleObject(clonerRebTurretThree):setFaction(0x16148850)
		LuaTangibleObject(clonerRebTurretFour):setFaction(0x16148850)
	
	
--Write Cloner ID's
	writeStringData("jakku_gcw_instance_name", "jakku_test")
	writeData("jakku_gcw_cloner", "1")
	writeData("jakku_gcw_cloner_reb", LuaSceneObject(clonerReb):getObjectID())
	writeData("jakku_gcw_cloner_imp", LuaSceneObject(clonerImp):getObjectID())
end

function jakku_gcw_resource_quest:announce(_,text)
	local pObject = getSceneObject(readData("jakku_announcer"))
	LuaCreatureObject(pObject):broadcastGalaxy(text)
	return 0
end

function jakku_gcw_resource_quest:despawnWalls()

end

jakku_gcw_resource_quest_handler = Object:new {}
-----------------------------------------------(NEXT CONVO HANDLER)

function jakku_gcw_resource_quest_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	return bf_tools_convo_handler:generic_getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
end

-----------------------------------------------(SCREEN HANDLER)
function jakku_gcw_resource_quest_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)

	local quest = {
-- necessary values:
	["player"] =  conversingPlayer,
	["creature"] = LuaCreatureObject(conversingPlayer),
	["questString"] = "jakku_gcw_resource_quest",
	["npc"] = conversingNPC,
-- Editable values:
	["buy"] = function(...) return jakku_gcw_resource_quest_handler:buyResource(...) end,
	["first_screen"] = function(table)
		if table.creature:hasSkill("admin_debug_01") then return "godmode" 
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
		if readData("jakku_gcw_instance") == 0 or readData("jakku_gcw_instance") == 2 then
			print("1 hour timer set for jakku pvp zone")
			writeData("jakku_gcw_instance", 1)
			createEvent(3600000,"jakku_gcw_resource_quest_handler","instanceStart","")
			createEvent(600000,"jakku_gcw_resource_quest","announce",table.player,"Battle of Jakku PVP Event will start in 50 minutes, the factional transit pilots provide free transport to the event if you have positive faction")
			createEvent(1200000,"jakku_gcw_resource_quest","announce",table.player,"Battle of Jakku PVP Event will start in 40 minutes, the factional transit pilots provide free transport to the event if you have positive faction")
			createEvent(1800000,"jakku_gcw_resource_quest","announce",table.player,"Battle of Jakku PVP Event will start in 30 minutes, the factional transit pilots provide free transport to the event if you have positive faction")
			createEvent(2400000,"jakku_gcw_resource_quest","announce",table.player,"Battle of Jakku PVP Event will start in 20 minutes, the factional transit pilots provide free transport to the event if you have positive faction")
			createEvent(3000000,"jakku_gcw_resource_quest","announce",table.player,"Battle of Jakku PVP Event will start in 10 minutes, the factional transit pilots provide free transport to the event if you have positive faction")
			createEvent(3300000,"jakku_gcw_resource_quest","announce",table.player,"Battle of Jakku PVP Event will start in 5 minutes, the factional transit pilots provide free transport to the event if you have positive faction")
			createEvent(3480000,"jakku_gcw_resource_quest","announce",table.player,"Battle of Jakku PVP Event will start in 2 minutes, the factional transit pilots provide free transport to the event if you have positive faction")
			LuaCreatureObject(getSceneObject(readData("bf_announcer"))):broadcastGalaxy("Battle of Jakku PVP Event will start in in 1 hour, the factional transit pilots provide free transport to the event if you have positive faction")
		end end,
	["start_thirty"] = function(table)
		if readData("jakku_gcw_instance") == 0 or readData("jakku_gcw_instance") == 2 then
			print("30 min timer set for restuss")
			writeData("jakku_gcw_instance", 1)
			createEvent(1800000,"jakku_gcw_resource_quest_handler","instanceStart","")
			createEvent(600000,"jakku_gcw_resource_quest","announce",table.player,"Battle of Jakku PVP Event will start in 20 minutes, the factional transit pilots provide free transport to the event if you have positive faction")
			createEvent(1200000,"jakku_gcw_resource_quest","announce",table.player,"Battle of Jakku PVP Event will start in 10 minutes, the factional transit pilots provide free transport to the event if you have positive faction")
			createEvent(1500000,"jakku_gcw_resource_quest","announce",table.player,"Battle of Jakku PVP Event will start in 5 minutes, the factional transit pilots provide free transport to the event if you have positive faction")
			createEvent(1620000,"jakku_gcw_resource_quest","announce",table.player,"Battle of Jakku PVP Event will start in 2 minutes, the factional transit pilots provide free transport to the event if you have positive faction")
			LuaCreatureObject(getSceneObject(readData("bf_announcer"))):broadcastGalaxy("Battle of Jakku PVP Event will start in 30 minutes, the factional transit pilots provide free transport to the event if you have positive faction")
		end end,
	["start_now"] = function(table)
		if readData("jakku_gcw_instance") == 0 or readData("jakku_gcw_instance") == 2 then
			print("jakku event started")
			createEvent(3000,"jakku_gcw_resource_quest_handler","instanceStart","")
			jakku_gcw_resource_quest_handler:instanceStart(table,"test")
		end end,
	["stop"] = function (table)
		if readData("jakku_gcw_instance") == 1 then jakku_gcw_resource_quest_handler:stop()
			print("jakku event halted")
		end end,
	}
	return bf_tools_convo_handler:generic_runScreenHandlers( conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen, quest)
end

-----------------------------------------------(SCREEN HANDLER FUNCTIONS)

function jakku_gcw_resource_quest_handler:buyResource(quest)
	local pPlayer = quest.player
	if pPlayer == nil then
		return false
	end

	local player = LuaCreatureObject(pPlayer)
	local currentTime = os.time()
	local receivedTime = readScreenPlayData(pPlayer, "jakku_gcw_resource_quest", "time")
	local receivedDays = readScreenPlayData(pPlayer, "jakku_gcw_resource_quest", "days")
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
		writeScreenPlayData(pPlayer, "jakku_gcw_resource_quest", "days",0)
	end
	density = ((density + (receivedDays * 100))+100)
	if density > 2000 then density = 2000 end

	if player:getBankCredits() > 20000 then
		if bf_gcw_troop_menu:giveGCWResource(pPlayer, density) then
			player:setBankCredits(player:getBankCredits()-20000)
			player:sendSystemMessage("GCW Resources Purchased for 20k credits(Bank)")
			writeScreenPlayData(pPlayer, "jakku_gcw_resource_quest", "time", currentTime)
			writeScreenPlayData(pPlayer, "jakku_gcw_resource_quest", "days",(receivedDays+1))
		end
	elseif player:getCashCredits() > 20000 then
		if bf_gcw_troop_menu:giveGCWResource(pPlayer, density) then
			player:subtractCashCredits(20000)
			player:sendSystemMessage("GCW Resources Purchased for 20k credits(Cash)")
			writeScreenPlayData(pPlayer, "jakku_gcw_resource_quest", "time", currentTime)
			writeScreenPlayData(pPlayer, "jakku_gcw_resource_quest", "days",(receivedDays+1))
		end
	else
		player:sendSystemMessage("@dispenser:insufficient_funds")
		return false
	end
	return true
end

function jakku_gcw_resource_quest_handler:instanceStart(quest,InstanceType)
	LuaCreatureObject(getSceneObject(readData("bf_announcer"))):broadcastGalaxy("Jakku PVP Event has begun!!")
--Spawn Boss's & Bind Destruction Observers
	local yoda = spawnMobile("jakku", "yoda_pvp",-1, math.random(325) + -5975.0, 49, math.random(325) + 5777.6, -46, 0 )
	createObserver(OBJECTDESTRUCTION, "jakku_gcw_resource_quest_handler", "yodaDead", yoda)
	local emperor = spawnMobile("jakku", "emperor_pvp",-1, math.random(325) + -5975.0, 49, math.random(325) + 5777.6, -46, 0 )
	createObserver(OBJECTDESTRUCTION, "jakku_gcw_resource_quest_handler", "emperorDead", emperor)

--Write Boss ID's
	writeData("jakku_gcw_instance", 1)
	writeData("jakku_gcw_emperor", LuaSceneObject(emperor):getObjectID())
	writeData("jakku_gcw_yoda", LuaSceneObject(yoda):getObjectID())
	return 0
end

--Handle Rebs Lose
function jakku_gcw_resource_quest_handler:yodaDead(yoda)
	print("\nImperials Win The Event\n")
	local emperor = getSceneObject(readData("jakku_gcw_emperor"))
	local strOne = "Young fools, only now you see the truth.\nJakku is under Imperial control."
	local strTwo = "return to free this planet we will, together in solidarity Jakku must stand."
	createEvent(4000,"jakku_gcw_resource_quest_handler","Deadtaunt",emperor,strOne)
	createEvent(7000,"jakku_gcw_resource_quest_handler","Deadreply",yoda,strTwo)
	return 0
end

--System broadcast winner taunt
function jakku_gcw_resource_quest_handler:Deadtaunt(pCreature,string)
	LuaCreatureObject(pCreature):broadcastGalaxy(string)
	return 0
end

--System broadcast loser reply and destroy bosses
function jakku_gcw_resource_quest_handler:Deadreply(pCreature,string)
	LuaCreatureObject(pCreature):broadcastGalaxy(string)
	jakku_gcw_resource_quest_handler:stop()
	return 0
end

--Handle Imps Lose
function jakku_gcw_resource_quest_handler:emperorDead(emperor)
	print("\nRebels Win The Event\n")
	local yoda = getSceneObject(readData("jakku_gcw_yoda"))
	strOne = "One with the force you are, bravely have you all fought!\nJakku under Alliance control it is."
	strTwo = "Your victory will be short lived my little green friend. You will pay for your lack of vision when we return with many more to crush your insignificant rebellion."
	createEvent(5000,"jakku_gcw_resource_quest_handler","Deadtaunt",yoda,strOne)
	createEvent(8000,"jakku_gcw_resource_quest_handler","Deadreply",emperor,strTwo)
	return 0
end

--Handle rewards

--Spawn cloner areas
function jakku_gcw_resource_quest_handler:spawnActiveAreas()
	local pSpawnArea = spawnSceneObject("jakku", "object/active_area.iff", -5715.4, 50, 5475.2, 0, 0, 0, 0, 0)
	if (pSpawnArea ~= nil) then
		local activeArea = LuaActiveArea(pSpawnArea)
		activeArea:setCellObjectID(0)
		activeArea:setRadius(16)
		createObserver(ENTEREDAREA, "jakku_gcw_resource_quest_handler", "notifyRebelSpawnArea", pSpawnArea)
	end

	local pSpawnArea2 = spawnSceneObject("jakku", "object/active_area.iff", -6022.1, 39.9, 6116.5, 0, 0, 0, 0, 0)
	if (pSpawnArea2 ~= nil) then
		local activeArea = LuaActiveArea(pSpawnArea2)
		activeArea:setCellObjectID(0)
		activeArea:setRadius(20)
		createObserver(ENTEREDAREA, "jakku_gcw_resource_quest_handler", "notifyImperialSpawnArea", pSpawnArea2)
	end

end

--Rebel spawn area
function jakku_gcw_resource_quest_handler:notifyRebelSpawnArea(activeArea, pMovingObject)
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
			creature:sendSystemMessage("You have entered the Jakku PVP Zone.\nYou are now Special Forces.")
		end
	else
	end
	createEvent(1, "pvp", "handlePvpZone", pMovingObject)
	if not creature:isRebel() then
		if creature:isInvisible() then
			creature:sendSystemMessage("You are the wrong faction to enter the clone area.")
			LuaCreatureObject(pMovingObject):setVisible()
			creature:playEffect("clienteffect/pl_force_speed_self.cef","")
		else
			creature:sendSystemMessage("You are the wrong faction to enter the clone area.")
		end
		LuaSceneObject(pMovingObject):teleport(-5767, 52.6, 5534, 0)
--[[	elseif creature:isInCombat() then
		creature:sendSystemMessage("You cannot Enter this area while in combat")
		LuaSceneObject(pMovingObject):teleport(5099, 80, 5746, 0)
]]
	end
		
	return 0
end

--Imperial spawn area
function jakku_gcw_resource_quest_handler:notifyImperialSpawnArea(activeArea, pMovingObject)
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
			creature:sendSystemMessage("You have entered Jakku PVP Zone.\nYou are now Special Forces.")
		end
	else
	end
	createEvent(1, "pvp", "handlePvpZone", pMovingObject)
	if not creature:isImperial() then
		if creature:isInvisible() then
			creature:sendSystemMessage("You are the wrong faction to enter the clone area.")
			LuaCreatureObject(pMovingObject):setVisible()
			creature:playEffect("clienteffect/pl_force_speed_self.cef","")
		else
			creature:sendSystemMessage("You are the wrong faction to enter the clone area.")
		end
		LuaSceneObject(pMovingObject):teleport(-6065, 41, 6076, 0)
--[[	elseif creature:isInCombat() then
		creature:sendSystemMessage("You cannot Enter this area while in combat")
		LuaSceneObject(pMovingObject):teleport(5500, 80, 5622, 0)
]]
	end
		
	return 0
end

	--Handle Instance end / staff force end
function jakku_gcw_resource_quest_handler:stop()
	--set data to busy state
		writeData("jakku_gcw_instance", 2)
	--Read Boss ID's and destroy them
		jakku_gcw_resource_quest_handler:stopObject(readData("jakku_gcw_emperor"))
		jakku_gcw_resource_quest_handler:stopObject(readData("jakku_gcw_yoda"))
	return 0
end

--[[
--Remove Wall and cloner after timer has expired (currently not use)
function jakku_gcw_resource_quest_handler:destroyWalls()
--Remove Cloners
		jakku_gcw_resource_quest_handler:stopObject(readData("restuss_gcw_cloner_reb"))
		jakku_gcw_resource_quest_handler:stopObject(readData("restuss_gcw_cloner_imp"))
--Remove Walls
	--Rebel
		jakku_gcw_resource_quest_handler:stopObject(readData("restuss_clonerImpWallRight"))
		jakku_gcw_resource_quest_handler:stopObject(readData("restuss_clonerImpWallLeft"))
		jakku_gcw_resource_quest_handler:stopObject(readData("restuss_clonerImpWallBack"))
		jakku_gcw_resource_quest_handler:stopObject(readData("restuss_clonerImpWallFront"))
	--Imperial
		jakku_gcw_resource_quest_handler:stopObject(readData("restuss_clonerRebWallRight"))
		jakku_gcw_resource_quest_handler:stopObject(readData("restuss_clonerRebWallLeft"))
		jakku_gcw_resource_quest_handler:stopObject(readData("restuss_clonerRebWallBack"))
		jakku_gcw_resource_quest_handler:stopObject(readData("restuss_clonerRebWallFront"))
	return 0
end
]]

--get pointer from key and destroy objects
function jakku_gcw_resource_quest_handler:stopObject(key)
	local pObject = getSceneObject(key)
	bf_gcw_crafting_menu:destroy(pObject)
	return 0
end

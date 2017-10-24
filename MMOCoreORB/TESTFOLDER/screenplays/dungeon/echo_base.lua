echo_base = ScreenPlay:new {
	numberOfActs = 1,

}
spHelper = require("screenplayHelper")
registerScreenPlay("echo_base", true)
local ObjectManager = require("managers.object.object_manager")

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function echo_base:start()
	if (isZoneEnabled("hoth")) then
		self:spawnMobiles()
--		self:spawnSceneObjects()		
 	end
end

--[[function echo_base:spawnSceneObjects()


	spawnSceneObject("hoth","object/static/structure/general/lucky_despot_debris_forward_hull.iff", 1542.2, 40.0, 948.2, 0, 0.35, 0, 0.93, 0)
	spawnSceneObject("hoth","object/static/structure/general/lucky_despot_debris_forward_hull.iff", 1522.2, 46.9, 968.2, 0, 0.35, 0, 0.93, 0)
	spawnSceneObject("hoth","object/static/structure/general/lucky_despot_debris_forward_hull.iff", 1502.2, 48.9, 998.2, 0, 0.35, 0, 0.93, 0)
	spawnSceneObject("hoth","object/static/structure/general/lucky_despot_debris_forward_hull.iff", 1482.2, 48.9, 1018.2, 0, 0.35, 0, 0.93, 0)
	spawnSceneObject("hoth","object/static/structure/general/lucky_despot_debris_forward_hull.iff", 1462.2, 48.9, 1038.2, 0, 0.35, 0, 0.93, 0)	

end --]]

function echo_base:spawnMobiles()


	local pCollector1 = spawnMobile("hoth", "droidekaport", 120, 70.4, -14.7, 288.5, 133, 281475060608869)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Travel to the Imperial Correctional Facility")
	createObserver(OBJECTRADIALUSED, "echo_base", "portHoth", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end

	
	--Jeers Mobiles r15 Main Hanger Bay
--	spawnMobile("hoth", "echo_base_hunter",300,-252.6,73.3,512.7,-18,281475464123663)
--	spawnMobile("hoth", "pelt_hunter",300,-272.5,73.2,513.1,-18,281475464123663)
--	spawnMobile("hoth", "pelt_hunter",300,-280.5,73.3,521.9,133,281475464123663)
--	spawnMobile("hoth", "pelt_hunter",300,-297.0,73.6,529.5,-154,281475464123663)
--	spawnMobile("hoth", "pelt_hunter",300,-289.5,73.3,539.9,125,281475464123663)
--	spawnMobile("hoth", "pelt_hunter",300,-278.7,73.3,556.3,164,281475464123663)
--	spawnMobile("hoth", "pelt_hunter",300,-269.4,73.3,562.5,-138,281475464123663)
--	spawnMobile("hoth", "echo_base_hunter",300,-262.2,73.3,571.6,109,281475464123663)
--	spawnMobile("hoth", "pelt_hunter",300,-249.5,73.3,580.9,26,281475464123663)
--	spawnMobile("hoth", "pelt_hunter",300,-245.1,73.3,584.3,-146,281475464123663)
--	spawnMobile("hoth", "echo_base_hunter",300,-242.3,73.3,601.0,-105,281475464123663)
--	spawnMobile("hoth", "pelt_hunter",300,-240.8,73.3,609.0,152,281475464123663)
--	spawnMobile("hoth", "pelt_hunter",300,-224.0,73.3,574.2,-93,281475464123663)
--	spawnMobile("hoth", "echo_base_hunter",300,-216.6,73.3,569.5,167,281475464123663)
--	spawnMobile("hoth", "pelt_hunter",300,-223.6,73.3,562.9,-85,281475464123663)
--	spawnMobile("hoth", "pelt_hunter",300,-184.9,73.3,558.2,115,281475464123663)
--	spawnMobile("hoth", "pelt_hunter",300,-182.4,73.3,565.5,148,281475464123663)
--	spawnMobile("hoth", "pelt_hunter",300,-186.0,73.3,550.0,119,281475464123663)
--	spawnMobile("hoth", "pelt_hunter",300,-194.9,73.3,521.7,-41,281475464123663)
--	spawnMobile("hoth", "pelt_hunter",300,-225.8,73.3,552.3,-15,281475464123663)
--	spawnMobile("hoth", "pelt_hunter",300,-240.2,73.3,556.9,79,281475464123663)
--	spawnMobile("hoth", "echo_base_hunter",300,-250.9,73.3,553.0,-103,281475464123663)
--	spawnMobile("hoth", "echo_base_hunter",300,-250.7,73.3,546.2,167,281475464123663)
--	spawnMobile("hoth", "pelt_hunter",300,-257.6,73.3,536.7,-89,281475464123663)
--	spawnMobile("hoth", "pelt_hunter",300,-255.8,73.3,526.8,81,281475464123663)
--	spawnMobile("hoth", "pelt_hunter",300,-241.4,73.3,531.2,73,281475464123663)
--	spawnMobile("hoth", "echo_base_hunter",300,-238.4,73.3,509.9,158,281475464123663)
--	spawnMobile("hoth", "echo_base_hunter",300,-236.9,73.3,507.4,-92,281475464123663)
--	spawnMobile("hoth", "pelt_hunter",300,-239.8,73.3,505.0,3,281475464123663)
--	spawnMobile("hoth", "pelt_hunter",300,-255.8,73.3,507.4,28,281475464123663)
	
	--Jeers Mobiles r18 Elevator Room (This room may have a bad spot inside)
--	spawnMobile("hoth", "pelt_hunter",300,-187.9,77.9,511.6,-111,281475136427491)
--	spawnMobile("hoth", "pelt_hunter",300,-188.2,77.9,503.5,-20,281475136427491)
	
	--Jeers Mobiles r21 Hallway Hanger Bay
--	spawnMobile("hoth", "pelt_hunter",300,-263.3,77.7,470.5,165,281475060608858)
--	spawnMobile("hoth", "echo_base_hunter",300,-255.6,75.0,456.1,169,281475060608858)
--	spawnMobile("hoth", "echo_base_hunter",300,-260.3,73.2,443.9,150,281475060608858)
	spawnMobile("hoth", "pelt_hunter",300,-249.3,71.3,435.5,176,281475060608858)
--	spawnMobile("hoth", "pelt_hunter",300,-253.2,69.1,420.9,136,281475060608858)
--	spawnMobile("hoth", "pelt_hunter",300,-243.8,67.6,414.5,-170,281475060608858)
	spawnMobile("hoth", "pelt_hunter",300,-240.4,65.6,403.2,-176,281475060608858)
--	spawnMobile("hoth", "pelt_hunter",300,-252.4,65.0,398.2,149,281475060608858)
	spawnMobile("hoth", "pelt_hunter",300,-237.4,63.0,388.9,176,281475060608858)
--	spawnMobile("hoth", "pelt_hunter",300,-242.0,61.7,379.0,154,281475060608858)
--	spawnMobile("hoth", "pelt_hunter",300,-245.4,59.1,361.1,117,281475060608858)
	spawnMobile("hoth", "echo_base_hunter",300,-224.4,58.5,359.1,-157,281475060608858)
	spawnMobile("hoth", "pelt_hunter",300,-216.7,58.9,369.1,79,281475060608858)
--	spawnMobile("hoth", "pelt_hunter",300,-208.0,58.7,363.9,69,281475060608858)
--	spawnMobile("hoth", "pelt_hunter",300,-198.1,58.4,371.8,79,281475060608858)
--	spawnMobile("hoth", "pelt_hunter",300,-192.4,58.2,366.9,65,281475060608858)
	spawnMobile("hoth", "pelt_hunter",300,-184.3,57.9,375.7,77,281475060608858)
	spawnMobile("hoth", "pelt_hunter",300,-172.3,57.4,370.4,69,281475060608858)
--	spawnMobile("hoth", "pelt_hunter",300,-163.2,57.1,380.9,-15,281475060608858)
	spawnMobile("hoth", "pelt_hunter",300,-150.0,54.2,374.7,89,281475060608858)
--	spawnMobile("hoth", "pelt_hunter",300,-138.5,51.5,382.3,100,281475060608858)
	spawnMobile("hoth", "echo_base_hunter",300,-129.1,47.8,374.3,89,281475060608858)
	spawnMobile("hoth", "pelt_hunter",300,-122.7,46.6,379.8,109,281475060608858)
--	spawnMobile("hoth", "pelt_hunter",300,-232.9,55.4,342.6,146,281475060608858)
--	spawnMobile("hoth", "pelt_hunter",300,-221.9,54.3,339.0,168,281475060608858)
	spawnMobile("hoth", "pelt_hunter",300,-225.6,52.3,326.6,174,281475060608858)
	spawnMobile("hoth", "pelt_hunter",300,-217.7,50.6,318.7,-161,281475060608858)
--	spawnMobile("hoth", "pelt_hunter",300,-225.9,48.9,309.0,-160,281475060608858)
	spawnMobile("hoth", "pelt_hunter",300,-223.2,47.4,295.9,-146,281475060608858)
--	spawnMobile("hoth", "pelt_hunter",300,-235.1,46.0,290.5,-147,281475060608858)
--	spawnMobile("hoth", "pelt_hunter",300,-235.6,44.3,277.3,-131,281475060608858)
--	spawnMobile("hoth", "pelt_hunter",300,-244.3,41.7,267.7,-140,281475060608858)
	spawnMobile("hoth", "echo_base_hunter",300,-250.8,41.1,269.7,-145,281475060608858)
	spawnMobile("hoth", "echo_base_hunter",300,-253.7,40.0,259.2,-144,281475060608858)
	spawnMobile("hoth", "pelt_hunter",300,-265.9,37.6,250.9,-175,281475060608858)
--	spawnMobile("hoth", "pelt_hunter",300,-265.0,36.5,240.6,177,281475060608858)
	spawnMobile("hoth", "pelt_hunter",300,-269.5,34.9,231.3,149,281475060608858)
--	spawnMobile("hoth", "pelt_hunter",300,-259.8,32.8,222.4,147,281475060608858)
	spawnMobile("hoth", "pelt_hunter",300,-258.8,31.1,212.4,144,281475060608858)
	spawnMobile("hoth", "echo_base_hunter",300,-250.7,29.5,207.1,146,281475060608858)
	spawnMobile("hoth", "echo_base_hunter",300,-252.8,28.9,201.8,148,281475060608858)
	
	--Jeers Mobiles r24
--	spawnMobile("hoth", "pelt_hunter",300,-107.3,43.4,381.1,144,281475060608861)
	spawnMobile("hoth", "pelt_hunter",300,-93.6,43.3,379.8,-165,281475060608861)
--	spawnMobile("hoth", "pelt_hunter",300,-87.6,43.3,370.2,-107,281475060608861)
--	spawnMobile("hoth", "pelt_hunter",300,-84.0,43.3,362.5,-92,281475060608861)
	spawnMobile("hoth", "echo_base_hunter",300,-82.2,43.3,354.5,131,281475060608861)
	spawnMobile("hoth", "echo_base_hunter",300,-104.9,43.3,351.6,25,281475060608861)
--	spawnMobile("hoth", "pelt_hunter",300,-101.0,43.3,345.6,106,281475060608861)
	spawnMobile("hoth", "pelt_hunter",300,-93.0,43.3,338.7,160,281475060608861)
--	spawnMobile("hoth", "pelt_hunter",300,-83.0,43.3,332.8,179,281475060608861)
--	spawnMobile("hoth", "pelt_hunter",300,-81.8,43.3,322.0,-179,281475060608861)
	spawnMobile("hoth", "echo_base_hunter",300,-88.1,43.3,318.6,179,281475060608861)
	
	--Jeers Mobiles r22 Hallway Down
	spawnMobile("hoth", "echo_base_hunter",300,-82.0,42.3,308.4,178,281475060608859)
	spawnMobile("hoth", "echo_base_hunter",300,-89.1,37.8,296.4,178,281475060608859)
--	spawnMobile("hoth", "echo_base_hunter",300,-81.9,33.7,284.6,-176,281475060608859)
--	spawnMobile("hoth", "echo_base_hunter",300,-89.0,29.6,272.7,176,281475060608859)
	spawnMobile("hoth", "echo_base_hunter",300,-82.3,25.6,261.4,-169,281475060608859)
	spawnMobile("hoth", "echo_base_hunter",300,-83.3,21.8,251.2,-178,281475060608859)
--	spawnMobile("hoth", "pelt_hunter",300,-88.9,21.2,249.8,171,281475060608859)
--	spawnMobile("hoth", "pelt_hunter",300,-82.7,18.4,242.6,177,281475060608859)
	spawnMobile("hoth", "pelt_hunter",300,-89.1,14.5,232.7,176,281475060608859)
--	spawnMobile("hoth", "pelt_hunter",300,-82.6,11.1,224.3,-177,281475060608859)
	spawnMobile("hoth", "pelt_hunter",300,-88.0,6.8,214.6,179,281475060608859)
--	spawnMobile("hoth", "pelt_hunter",300,-82.0,2.5,203.7,-171,281475060608859)
--	spawnMobile("hoth", "pelt_hunter",300,-89.9,0.5,196.0,175,281475060608859)
	spawnMobile("hoth", "pelt_hunter",300,-83.1,-1.2,188.0,-165,281475060608859)
--	spawnMobile("hoth", "pelt_hunter",300,-90.8,-0.9,178.8,159,281475060608859)
	spawnMobile("hoth", "pelt_hunter",300,-81.6,-2.3,172.8,-156,281475060608859)
	spawnMobile("hoth", "pelt_hunter",300,-85.2,-1.8,161.7,-76,281475060608859)
--	spawnMobile("hoth", "pelt_hunter",300,-94.8,-1.6,157.7,42,281475060608859)
--	spawnMobile("hoth", "pelt_hunter",300,-116.7,10.9,164.1,-81,281475060608859)
	spawnMobile("hoth", "pelt_hunter",300,-119.0,12.1,169.5,-105,281475060608859)
--	spawnMobile("hoth", "pelt_hunter",300,-96.9,-4.9,144.8,-172,281475060608859)
--	spawnMobile("hoth", "pelt_hunter",300,-93.9,-7.8,130.3,-168,281475060608859)
	spawnMobile("hoth", "pelt_hunter",300,-100.1,-9.2,125.7,-162,281475060608859)
--	spawnMobile("hoth", "pelt_hunter",300,-65.6,-6.1,170.3,90,281475060608859)
	spawnMobile("hoth", "pelt_hunter",300,-55.8,-8.3,164.8,86,281475060608859)
	spawnMobile("hoth", "pelt_hunter",300,-43.4,-11.3,170.5,86,281475060608859)
--	spawnMobile("hoth", "pelt_hunter",300,-29.8,-15.2,163.4,89,281475060608859)
--	spawnMobile("hoth", "pelt_hunter",300,-22.5,-17.1,169.2,90,281475060608859)
	spawnMobile("hoth", "pelt_hunter",300,-98.7,-10.6,111.7,-168,281475060608859)
--	spawnMobile("hoth", "pelt_hunter",300,-114.0,-11.5,99.1,-173,281475060608859)
	spawnMobile("hoth", "pelt_hunter",300,-124.2,-11.5,88.8,173,281475060608859)
	spawnMobile("hoth", "pelt_hunter",300,-100.9,-11.5,87.3,-142,281475060608859)
--	spawnMobile("hoth", "pelt_hunter",300,-102.4,-11.5,78.4,-123,281475060608859)
	spawnMobile("hoth", "pelt_hunter",300,-126.2,-11.3,75.0,147,281475060608859)
	spawnMobile("hoth", "pelt_hunter",300,-110.3,-11.4,68.3,-139,281475060608859)
--	spawnMobile("hoth", "pelt_hunter",300,-116.9,-10.3,59.4,-179,281475060608859)
	spawnMobile("hoth", "echo_base_hunter",300,-122.7,-9.5,51.8,145,281475060608859)
	spawnMobile("hoth", "echo_base_hunter",300,-114.5,-8.9,46.3,138,281475060608859)
	spawnMobile("hoth", "echo_base_hunter",300,-114.7,-8.2,35.8,111,281475060608859)
	spawnMobile("hoth", "echo_base_hunter",300,-102.0,-7.3,36.8,101,281475060608859)
	spawnMobile("hoth", "echo_base_hunter",300,-93.2,-5.5,34.1,105,281475060608859)
--	spawnMobile("hoth", "pelt_hunter",300,-90.6,-4.9,30.6,85,281475060608859)
	
	--Jeers Mobiles Grotto
--	spawnMobile("hoth", "tauntaun_hoth",300,-253.7,25.8,193.2,-167,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-249.8,24.6,182.7,-136,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-256.5,24.6,179.4,-136,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-266.8,24.6,179.9,-174,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-263.2,25.0,171.1,-179,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-269.7,24.4,161.7,166,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-263.7,22.1,153.5,155,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-267.6,21.0,140.4,112,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-265.1,21.1,128.0,-175,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-253.8,20.8,124.9,81,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-246.5,20.5,139.8,48,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-234.9,20.4,125.9,124,281475060608862)
	spawnMobile("hoth", "tauntaun_hoth",300,-218.6,20.4,121.9,100,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-205.6,20.3,116.9,-55,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-194.3,20.4,124.2,63,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-183.2,20.3,136.0,-24,281475060608862)
	spawnMobile("hoth", "tauntaun_hoth",300,-183.8,20.4,178.0,-171,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-199.5,20.4,181.8,-168,281475060608862)
	spawnMobile("hoth", "tauntaun_hoth",300,-212.6,20.5,178.4,-108,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-230.9,20.5,169.4,127,281475060608862)
	spawnMobile("hoth", "tauntaun_hoth",300,-227.1,20.3,157.7,157,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-224.5,20.4,146.5,175,281475060608862)
	spawnMobile("hoth", "tauntaun_hoth",300,-212.2,20.4,141.6,76,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-194.0,20.4,159.3,75,281475060608862)
	spawnMobile("hoth", "tauntaun_hoth",300,-180.3,20.4,150.0,121,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-157.9,20.4,167.2,77,281475060608862)
	spawnMobile("hoth", "tauntaun_hoth",300,-158.6,20.4,150.9,71,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-137.4,17.4,156.9,60,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-130.2,14.2,170.6,96,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-146.2,12.3,183.7,-54,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-160.8,8.9,182.6,-53,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-168.0,4.6,197.1,-74,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-182.3,-0.3,194.6,-86,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-195.6,-3.7,203.5,-103,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-207.0,-6.7,193.1,-113,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-229.5,-15.1,196.3,-147,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-229.3,-20.4,176.4,-150,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-244.3,-22.5,172.3,158,281475060608862)
--	spawnMobile("hoth", "tauntaun_hoth",300,-245.3,-23.0,156.5,63,281475060608862)
	
	--Jeers Mobiles r27 Lava Pit
--	spawnMobile("hoth", "pelt_hunter",300,-234.4,-22.7,154.5,-53,281475464123674)
	spawnMobile("hoth", "pelt_hunter",300,-226.4,-22.7,154.0,120,281475060608863)
	spawnMobile("hoth", "pelt_hunter",300,-216.7,-23.3,157.1,20,281475060608863)
	spawnMobile("hoth", "pelt_hunter",300,-203.0,-23.3,144.9,-158,281475060608863)
	spawnMobile("hoth", "echo_mini_one",2800,-199.0,-23.4,153.1,-85,281475060608863)
	
	--Jeers Mobiles r14 Command Room
	spawnMobile("hoth", "echo_base_hunter",300,-11.6,-17.4,170.1,-87,281475060608851)
	spawnMobile("hoth", "echo_base_hunter",300,-12.2,-17.4,163.3,-63,281475060608851)
	spawnMobile("hoth", "echo_base_hunter",300,-1.9,-21.2,174.3,28,281475060608851)
--	spawnMobile("hoth", "echo_base_hunter",300,11.8,-21.4,173.0,81,281475060608851)
--	spawnMobile("hoth", "echo_base_hunter",300,11.5,-21.5,164.8,-138,281475060608851)
	spawnMobile("hoth", "echo_base_hunter",300,-10.4,-21.2,154.3,-95,281475060608851)
--	spawnMobile("hoth", "echo_base_hunter",300,-10.0,-21.3,148.4,136,281475060608851)
	spawnMobile("hoth", "echo_base_hunter",300,-8.9,-21.3,140.1,155,281475060608851)
--	spawnMobile("hoth", "echo_base_hunter",300,-4.5,-21.7,133.4,90,281475060608851)
	spawnMobile("hoth", "echo_base_hunter",300,9.3,-22.0,137.3,70,281475060608851)
	spawnMobile("hoth", "echo_base_hunter",300,12.1,-21.9,119.4,-179,281475060608851)
	spawnMobile("hoth", "echo_base_hunter",300,5.5,-21.6,111.0,-174,281475060608851)
--	spawnMobile("hoth", "echo_base_hunter",300,26.3,-13.9,154.7,36,281475060608851)
	spawnMobile("hoth", "echo_base_hunter",300,31.3,-13.9,151.8,7,281475060608851)
--	spawnMobile("hoth", "echo_base_hunter",300,8.7,-21.5,95.5,177,281475060608851)
	spawnMobile("hoth", "echo_base_hunter",300,2.6,-20.6,86.0,178,281475060608851)
	spawnMobile("hoth", "echo_base_hunter",300,8.6,-19.9,76.8,176,281475060608851)
--	spawnMobile("hoth", "echo_base_hunter",300,2.2,-19.2,66.5,-176,281475060608851)
--	spawnMobile("hoth", "echo_base_hunter",300,8.2,-18.8,59.3,174,281475060608851)
	spawnMobile("hoth", "echo_base_hunter",300,8.1,-18.5,51.6,175,281475060608851)
	spawnMobile("hoth", "echo_base_hunter",300,3.1,-18.1,40.8,179,281475060608851)
	spawnMobile("hoth", "echo_base_hunter",300,9.2,-18.1,31.2,-169,281475060608851)
--	spawnMobile("hoth", "echo_base_hunter",300,2.2,-18.1,21.8,174,281475060608851)
	spawnMobile("hoth", "echo_base_hunter",300,7.5,-18.2,14.4,-171,281475060608851)
	spawnMobile("hoth", "echo_base_hunter",300,3.9,-18.3,12.2,-123,281475060608851)
	
	--Jeers Mobiles r48 Generator Room
--	spawnMobile("hoth", "pelt_hunter",300,6.9,-18.3,6.5,79,281475060608866)
	spawnMobile("hoth", "pelt_hunter",300,15.9,-18.3,4.0,-131,281475060608866)
	spawnMobile("hoth", "pelt_hunter",300,23.0,-18.3,1.7,177,281475060608866)
--	spawnMobile("hoth", "pelt_hunter",300,25.4,-18.3,-5.3,-68,281475060608866)
	spawnMobile("hoth", "pelt_hunter",300,25.6,-18.3,-12.2,178,281475060608866)
--	spawnMobile("hoth", "pelt_hunter",300,24.2,-18.3,-19.1,-73,281475060608866)
--	spawnMobile("hoth", "pelt_hunter",300,20.0,-18.3,-15.0,81,281475060608866)
	spawnMobile("hoth", "pelt_hunter",300,15.0,-18.3,-16.9,-61,281475060608866)
--	spawnMobile("hoth", "pelt_hunter",300,10.9,-18.3,-9.3,-28,281475060608866)
	spawnMobile("hoth", "pelt_hunter",300,8.6,-18.3,-16.8,-147,281475060608866)
--	spawnMobile("hoth", "pelt_hunter",300,1.8,-18.3,-19.7,153,281475060608866)
	spawnMobile("hoth", "pelt_hunter",300,-3.3,-18.3,-16.9,175,281475060608866)
	spawnMobile("hoth", "pelt_hunter",300,-7.2,-18.3,-20.7,-179,281475060608866)
--	spawnMobile("hoth", "pelt_hunter",300,-13.0,-18.3,-20.7,-88,281475060608866)
--	spawnMobile("hoth", "pelt_hunter",300,-16.1,-18.3,-14.8,60,281475060608866)
	spawnMobile("hoth", "pelt_hunter",300,-15.6,-18.3,-9.0,2,281475060608866)
	spawnMobile("hoth", "pelt_hunter",300,-12.8,-18.3,0.4,142,281475060608866)
	spawnMobile("hoth", "echo_base_hunter",300,-6.1,-18.3,3.7,87,281475060608866)
	spawnMobile("hoth", "echo_base_hunter",300,-3.1,-18.3,0.0,137,281475060608866)
	spawnMobile("hoth", "echo_base_hunter",300,1.7,-18.3,-4.3,11,281475060608866)
	spawnMobile("hoth", "echo_base_hunter",300,1.4,-18.3,4.6,33,281475060608866)
	spawnMobile("hoth", "echo_base_hunter",300,4.5,-18.3,-6.6,178,281475060608866)
	
	--Jeers Mobiles r49 Small Room Leading to Elevator
--	spawnMobile("hoth", "pelt_hunter",300,8.2,-18.3,-29.1,-55,281475060608867)
	spawnMobile("hoth", "echo_mini_three",2800,4.3,-18.3,-33.3,1,281475060608867)
--	spawnMobile("hoth", "pelt_hunter",300,-0.5,-18.3,-35.4,-5,281475060608867)
--	spawnMobile("hoth", "pelt_hunter",300,1.2,-18.3,-37.0,90,281475060608867)
--	spawnMobile("hoth", "pelt_hunter",300,8.0,-18.3,-36.7,-63,281475060608867)
--	spawnMobile("hoth", "pelt_hunter",300,8.2,-18.3,-32.3,-34,281475060608867)
	
	--Jeers Mobiles r50 Yet Another Hallway
--	spawnMobile("hoth", "pelt_hunter",300,29.9,-13.9,160.4,-57,281475060608868)
	spawnMobile("hoth", "pelt_hunter",300,38.9,-13.9,159.9,43,281475060608868)
--	spawnMobile("hoth", "pelt_hunter",300,40.8,-13.9,170.9,42,281475060608868)
	spawnMobile("hoth", "pelt_hunter",300,51.4,-13.9,175.9,48,281475060608868)
	spawnMobile("hoth", "pelt_hunter",300,56.6,-13.9,189.1,55,281475060608868)
--	spawnMobile("hoth", "pelt_hunter",300,70.6,-13.9,193.6,43,281475060608868)
	spawnMobile("hoth", "pelt_hunter",300,73.5,-13.9,204.7,45,281475060608868)
--	spawnMobile("hoth", "pelt_hunter",300,82.6,-13.9,207.1,46,281475060608868)
	spawnMobile("hoth", "pelt_hunter",300,85.3,-14.0,217.7,36,281475060608868)
--	spawnMobile("hoth", "pelt_hunter",300,97.8,-13.9,222.6,39,281475060608868)
	spawnMobile("hoth", "pelt_hunter",300,99.3,-13.9,233.9,29,281475060608868)
--	spawnMobile("hoth", "pelt_hunter",300,111.1,-13.9,241.0,-1,281475060608868)
	spawnMobile("hoth", "pelt_hunter",300,107.4,-13.9,253.9,-11,281475060608868)
--	spawnMobile("hoth", "pelt_hunter",300,112.9,-13.9,265.6,-32,281475060608868)
	spawnMobile("hoth", "pelt_hunter",300,101.9,-14.0,271.7,-30,281475060608868)
	spawnMobile("hoth", "pelt_hunter",300,104.1,-14.1,277.4,21,281475060608868)
	
	--Jeers Mobiles r51 Sick Bay or Cloning Center
	spawnMobile("hoth", "surgical_droid_21b",300,87.9,-14.7,291.2,-172,281475060608869)
	
	--Jeers Mobiles r53 Hallway Leading from Cloning Facility
--	spawnMobile("hoth", "pelt_hunter",300,70.2,-15.0,302.8,-89,281475060608870)
--	spawnMobile("hoth", "pelt_hunter",300,61.0,-17.2,308.2,-89,281475060608870)
	spawnMobile("hoth", "echo_base_hunter",300,50.1,-17.9,300.9,-90,281475060608870)
	spawnMobile("hoth", "echo_base_hunter",300,41.8,-18.2,307.7,-91,281475060608870)
--	spawnMobile("hoth", "pelt_hunter",300,33.5,-18.2,300.8,-88,281475060608870)
--	spawnMobile("hoth", "pelt_hunter",300,30.5,-18.1,307.5,-91,281475060608870)
	spawnMobile("hoth", "pelt_hunter",300,23.6,-17.9,301.7,-47,281475060608870)
--	spawnMobile("hoth", "pelt_hunter",300,19.9,-17.6,308.6,145,281475060608870)
	spawnMobile("hoth", "echo_base_hunter",300,17.0,-17.7,301.6,0,281475060608870)
	spawnMobile("hoth", "pelt_hunter",300,8.9,-17.9,301.8,-87,281475060608870)
--	spawnMobile("hoth", "pelt_hunter",300,8.1,-17.9,308.4,-105,281475060608870)
--	spawnMobile("hoth", "pelt_hunter",300,0.1,-18.1,301.4,-86,281475060608870)
--	spawnMobile("hoth", "pelt_hunter",300,-8.8,-18.2,308.8,-97,281475060608870)
--	spawnMobile("hoth", "pelt_hunter",300,-19.5,-18.2,301.1,-89,281475060608870)
	spawnMobile("hoth", "echo_base_hunter",300,-29.2,-18.2,308.8,-93,281475060608870)
	spawnMobile("hoth", "echo_base_hunter",300,-37.0,-18.2,302.0,-83,281475060608870)
	spawnMobile("hoth", "pelt_hunter",300,-43.9,-18.2,307.4,-96,281475060608870)
	spawnMobile("hoth", "pelt_hunter",300,-47.5,-18.2,304.0,-86,281475060608870)
	
	--Jeers Mobiles Wampa Room
--	spawnMobile("hoth", "pelt_hunter",300,11.9,-17.4,314.5,33,281475060608879)
	spawnMobile("hoth", "pelt_hunter",300,19.5,-17.4,316.0,-135,281475060608879)
	spawnMobile("hoth", "pelt_hunter",300,16.3,-17.4,323.1,-172,281475060608879)
	spawnMobile("hoth", "pelt_hunter",300,20.4,-17.2,340.2,-174,281475060608879)
	spawnMobile("hoth", "pelt_hunter",300,6.8,-16.8,340.5,88,281475060608879)
	
	--Jeers Mobiles r54 Cantina / Recreation Room
	spawnMobile("hoth", "medic",300,-55.2,-18.3,300.7,54,281475060608871)
	spawnMobile("hoth", "patron_quarren",300,-53.9,-18.3,308.5,110,281475060608871)
	spawnMobile("hoth", "patron_quarren",300,-54.4,-18.3,291.2,-68,281475060608871)
	spawnMobile("hoth", "patron_chiss",300,-52.2,-18.3,284.3,152,281475060608871)
	spawnMobile("hoth", "r2",300,-58.8,-18.3,285.0,-18,281475060608871)
	spawnMobile("hoth", "r3",300,-66.7,-18.3,285.7,-40,281475060608871)
	spawnMobile("hoth", "r4",300,-64.6,-18.3,291.3,20,281475060608871)
	spawnMobile("hoth", "r5",300,-69.9,-18.3,298.2,-47,281475060608871)
--	spawnMobile("hoth", "pelt_hunter",300,-76.4,-18.3,290.6,158,281475060608871)
	spawnMobile("hoth", "audience_member",300,-77.0,-18.3,300.8,-44,281475060608871)
	spawnMobile("hoth", "entertainer",300,-76.1,-18.3,310.5,-133,281475060608871)
	spawnMobile("hoth", "entertainer",300,-67.2,-18.3,306.4,87,281475060608871)
	spawnMobile("hoth", "entertainer",300,-66.1,-18.3,311.3,11,281475060608871)
	spawnMobile("hoth", "entertainer",300,-63.8,-18.3,301.4,147,281475060608871)
	spawnMobile("hoth", "patron_chiss",300,-55.4,-18.3,316.6,-176,281475060608871)
	spawnMobile("hoth", "patron_quarren",300,-54.0,-18.3,323.7,8,281475060608871)
	spawnMobile("hoth", "patron_quarren",300,-60.8,-18.3,324.4,-89,281475060608871)
	spawnMobile("hoth", "patron_quarren",300,-63.4,-18.3,318.3,-156,281475060608871)
	spawnMobile("hoth", "r2",300,-68.2,-18.3,318.2,-91,281475060608871)
	spawnMobile("hoth", "r3",300,-71.2,-18.3,325.8,-34,281475060608871)
	spawnMobile("hoth", "r4",300,-78.3,-18.3,326.5,151,281475060608871)
	spawnMobile("hoth", "r5",300,-75.4,-18.3,319.0,-179,281475060608871)
	
	--Jeers Mobiles r23 Hallway to and from Cantina
--	spawnMobile("hoth", "pelt_hunter",300,-86.2,-18.2,303.2,-88,281475060608860)
--	spawnMobile("hoth", "pelt_hunter",300,-92.9,-18.2,308.0,-84,281475060608860)
--	spawnMobile("hoth", "pelt_hunter",300,-102.4,-18.3,301.5,-93,281475060608860)
	spawnMobile("hoth", "echo_base_hunter",300,-112.5,-18.3,308.3,-89,281475060608860)
	spawnMobile("hoth", "echo_base_hunter",300,-123.5,-18.3,301.6,-89,281475060608860)
	spawnMobile("hoth", "echo_base_hunter",300,-132.8,-18.3,308.7,-95,281475060608860)
	spawnMobile("hoth", "echo_base_hunter",300,-141.7,-18.3,301.3,-90,281475060608860)
	spawnMobile("hoth", "pelt_hunter",300,-149.3,-18.4,308.0,-87,281475060608860)
--	spawnMobile("hoth", "pelt_hunter",300,-160.7,-18.4,302.2,-69,281475060608860)
--	spawnMobile("hoth", "pelt_hunter",300,-167.5,-18.3,309.9,-82,281475060608860)
--	spawnMobile("hoth", "pelt_hunter",300,-178.0,-18.3,304.1,-63,281475060608860)
	spawnMobile("hoth", "pelt_hunter",300,-184.6,-18.3,313.4,-50,281475060608860)
--	spawnMobile("hoth", "pelt_hunter",300,-196.1,-18.3,313.6,-48,281475060608860)
	spawnMobile("hoth", "pelt_hunter",300,-199.9,-18.3,326.7,-36,281475060608860)
	spawnMobile("hoth", "pelt_hunter",300,-209.2,-18.3,326.5,-35,281475060608860)
--	spawnMobile("hoth", "pelt_hunter",300,-214.7,-18.3,331.1,-29,281475060608860)
	spawnMobile("hoth", "pelt_hunter",300,-212.7,-18.4,339.6,-54,281475060608860)
	spawnMobile("hoth", "pelt_hunter",300,-221.6,-18.4,344.5,-24,281475060608860)
	spawnMobile("hoth", "pelt_hunter",300,-220.7,-18.5,353.8,-21,281475060608860)
--	spawnMobile("hoth", "pelt_hunter",300,-228.6,-18.8,361.9,-23,281475060608860)
	spawnMobile("hoth", "pelt_hunter",300,-228.5,-19.1,373.0,-24,281475060608860)
--	spawnMobile("hoth", "pelt_hunter",300,-236.0,-19.5,379.9,-23,281475060608860)
	spawnMobile("hoth", "pelt_hunter",300,-235.8,-19.8,390.3,-23,281475060608860)
--	spawnMobile("hoth", "echo_base_hunter",300,-243.0,-20.1,397.1,-24,281475060608860)
--	spawnMobile("hoth", "echo_base_hunter",300,-242.7,-20.3,406.8,-21,281475060608860)
	spawnMobile("hoth", "echo_base_hunter",300,-249.6,-20.7,412.8,-26,281475060608860)
	spawnMobile("hoth", "echo_base_hunter",300,-248.8,-20.9,421.4,-20,281475060608860)
	spawnMobile("hoth", "echo_base_hunter",300,-256.3,-21.3,429.0,-22,281475060608860)
	
	--Jeers Mobiles r56 Snowspeeder Maintenance Bay
--	spawnMobile("hoth", "pelt_hunter",300,-254.5,-22.6,441.0,-3,281475464123683)
--	spawnMobile("hoth", "pelt_hunter",300,-267.2,-23.3,448.3,0,113,281475464123683)
--	spawnMobile("hoth", "pelt_hunter",300,-247.9,-23.6,457.1,0,-126,281475464123683)
--	spawnMobile("hoth", "pelt_hunter",300,-252.9,-23.5,467.1,0,-66,281475464123683)
--add	spawnMobile("hoth", "pelt_hunter",300,-247.6,-23.4,477.0,0,14,281475464123683)
--	spawnMobile("hoth", "pelt_hunter",300,-238.2,-23.4,482.7,0,-49,281475464123683)
--	spawnMobile("hoth", "pelt_hunter",300,-243.6,-23.3,497.2,0,7,281475464123683)
--	spawnMobile("hoth", "pelt_hunter",300,-235.8,-23.1,512.0,-89,281475464123683)
--	spawnMobile("hoth", "pelt_hunter",300,-232.3,-20.4,518.0,90,281475464123683)
--	spawnMobile("hoth", "pelt_hunter",300,-233.0,-20.4,523.7,104,281475464123683)
--	spawnMobile("hoth", "pelt_hunter",300,-243.8,-23.0,528.1,-16,281475464123683)
--	spawnMobile("hoth", "pelt_hunter",300,-259.5,-23.4,532.4,-76,281475464123683)
--	spawnMobile("hoth", "pelt_hunter",300,-273.9,-23.5,534.3,2,281475464123683)
--	spawnMobile("hoth", "pelt_hunter",300,-284.6,-23.4,530.3,-160,281475464123683)
--	spawnMobile("hoth", "pelt_hunter",300,-286.8,-23.4,520.7,-97,281475464123683)
--	spawnMobile("hoth", "pelt_hunter",300,-291.3,-23.4,513.8,166,281475464123683)
--	spawnMobile("hoth", "pelt_hunter",300,-271.4,-23.4,518.0,65,281475464123683)
--	spawnMobile("hoth", "pelt_hunter",300,-259.1,-23.3,514.0,142,281475464123683)
--	spawnMobile("hoth", "pelt_hunter",300,-288.5,-23.6,503.5,-102,281475464123683)
--	spawnMobile("hoth", "pelt_hunter",300,-301.9,-23.4,502.4,86,281475464123683)
--	spawnMobile("hoth", "pelt_hunter",300,-315.5,-22.9,488.8,-145,281475464123683)
--add	spawnMobile("hoth", "pelt_hunter",300,-316.5,-23.1,482.8,61,281475464123683)
--	spawnMobile("hoth", "pelt_hunter",300,-308.5,-23.1,481.2,102,281475464123683)
--add	spawnMobile("hoth", "pelt_hunter",300,-295.4,-23.4,482.0,85,281475464123683)
--add	spawnMobile("hoth", "pelt_hunter",300,-288.4,-23.7,473.3,-162,281475464123683)
--	spawnMobile("hoth", "pelt_hunter",300,-276.0,-22.8,483.4,154,281475464123683)
--	spawnMobile("hoth", "pelt_hunter",300,-267.0,-23.0,491.7,46,281475464123683)
--	spawnMobile("hoth", "pelt_hunter",300,-256.4,-23.1,505.5,60,281475464123683)
--	spawnMobile("hoth", "pelt_hunter",300,-246.3,-23.2,515.2,48,281475464123683)
--	spawnMobile("hoth", "pelt_hunter",300,-291.3,-24.5,456.5,-152,281475464123683)
--	spawnMobile("hoth", "pelt_hunter",300,-301.5,-24.7,457.5,171,281475464123683)
	
	--Jeers Mobiles r57 Radar Room DROID BOSS ROOM
--	spawnMobile("hoth", "pelt_hunter",300,-297.6,-25.8,438.3,-96,281475464123684)
--BOSS	spawnMobile("hoth", "pelt_hunter",300,-302.8,-25.8,432.7,5,281475464123684)
--	spawnMobile("hoth", "pelt_hunter",300,-306.9,-25.8,431.3,-167,281475464123684)
--	spawnMobile("hoth", "pelt_hunter",300,-298.6,-25.8,432.2,98,281475464123684)
--	spawnMobile("hoth", "pelt_hunter",300,-300.2,-25.8,426.0,-52,281475464123684)
	
	--Jeers Mobiles r58 Storage Container Room (Elevator Terminal Floating Near the Metal Pillars)
--	spawnMobile("hoth", "pelt_hunter",300,-214.5,-20.6,519.6,70,281475464123685)
--	spawnMobile("hoth", "echo_base_hunter",300,-207.9,-20.6,530.6,155,281475464123685)
--	spawnMobile("hoth", "echo_base_hunter",300,-193.3,-20.7,519.5,59,281475464123685)
--	spawnMobile("hoth", "echo_base_hunter",300,-180.9,-20.6,512.7,-167,281475464123685)
--	spawnMobile("hoth", "echo_base_hunter",300,-165.3,-20.6,514.5,-22,281475464123685)
--	spawnMobile("hoth", "echo_base_hunter",300,-151.5,-20.8,529.2,153,281475464123685)
--	spawnMobile("hoth", "pelt_hunter",300,-140.2,-20.6,532.6,-29,281475464123685)
--	spawnMobile("hoth", "pelt_hunter",300,-139.7,-20.6,545.2,-144,281475464123685)
--	spawnMobile("hoth", "pelt_hunter",300,-134.2,-20.6,549.6,-118,281475464123685)
--	spawnMobile("hoth", "pelt_hunter",300,-141.4,-20.7,560.9,71,281475464123685)
--	spawnMobile("hoth", "pelt_hunter",300,-157.2,-20.6,541.8,43,281475464123685)
--	spawnMobile("hoth", "pelt_hunter",300,-158.1,-20.6,544.8,94,281475464123685)
--	spawnMobile("hoth", "pelt_hunter",300,-163.5,-20.5,557.2,34,281475464123685)
--	spawnMobile("hoth", "echo_base_hunter",300,-168.4,-20.5,556.1,-106,281475464123685)
--	spawnMobile("hoth", "echo_base_hunter",300,-175.1,-20.6,550.1,20,281475464123685)
--	spawnMobile("hoth", "echo_base_hunter",300,-184.2,-20.6,547.4,160,281475464123685)
--	spawnMobile("hoth", "echo_base_hunter",300,-185.8,-20.6,535.0,-110,281475464123685)
--	spawnMobile("hoth", "echo_base_hunter",300,-171.6,-20.6,528.0,-100,281475464123685)
	
	--Jeers Mobiles r31 Mainframe Room
	spawnMobile("hoth", "pelt_hunter",300,-82.9,-4.6,35.6,-132,281475060608864)
--	spawnMobile("hoth", "pelt_hunter",300,-81.3,-4.6,28.1,-65,281475060608864)
--	spawnMobile("hoth", "pelt_hunter",300,-76.5,-4.6,36.7,3,281475060608864)
	spawnMobile("hoth", "pelt_hunter",300,-72.0,-4.6,34.7,173,281475060608864)
--	spawnMobile("hoth", "pelt_hunter",300,-62.6,-4.6,34.5,-149,281475060608864)
	spawnMobile("hoth", "pelt_hunter",300,-60.8,-4.6,31.3,-86,281475060608864)
--	spawnMobile("hoth", "pelt_hunter",300,-63.1,-4.6,28.9,-4,281475060608864)
	spawnMobile("hoth", "pelt_hunter",300,-70.7,-4.6,26.8,-71,281475060608864)
	
	--Jeers Mobiles r32 Power Core Control Room
	spawnMobile("hoth", "pelt_hunter",300,-66.4,-4.6,12.3,-90,281475060608865)
	spawnMobile("hoth", "echo_mini_two",2800,-63.5,-4.6,6.7,176,281475060608865)
	spawnMobile("hoth", "pelt_hunter",300,-60.7,-4.6,10.7,19,281475060608865)
	spawnMobile("hoth", "pelt_hunter",300,-59.9,-4.6,16.9,-32,281475060608865)
	
	--Jeers Mobiles r17 Elevator Access Room
--	spawnMobile("hoth", "echo_base_hunter",300,-299.3,77.6,480.0,-51,281475464123665)
--	spawnMobile("hoth", "echo_base_hunter",300,-292.4,77.6,475.0,39,281475464123665)
--	spawnMobile("hoth", "echo_base_hunter",300,-291.6,77.6,484.1,68,281475464123665)
	
	--Jeers Mobiles r16 Creature Pen
--	spawnMobile("hoth", "tauntaun_hoth",300,-329.7,78.8,504.2,139,281475060608853)
	spawnMobile("hoth", "tauntaun_hoth",300,-331.7,79.0,495.2,96,281475060608853)
	spawnMobile("hoth", "tauntaun_hoth",300,-321.8,78.2,499.3,125,281475060608853)
	spawnMobile("hoth", "tauntaun_hoth",300,-322.0,78.6,488.5,172,281475060608853)
	spawnMobile("hoth", "tauntaun_hoth",300,-313.3,78.3,494.7,41,281475060608853)
		


	local pTrigger = spawnMobile("hoth", "punkajo", 1800, 4.7,-16.9,343.6,124,281475060608879) --3800
	if (pTrigger ~= nil ) then	
		createObserver(OBJECTDESTRUCTION, "echo_base", "notifyTriggerDead", pTrigger)
	end
	--initialize Sp State
	writeData("echo_base:spawnState",0)
         return 0
end

function echo_base:notifyTriggerDead(pTrigger, pPlayer)
	--local player = LuaCreatureObject(pKiller)
	local pBoss = spawnMobile("hoth", "unkajo", 0, 4.7,-16.9,343.6,124,281475060608879)
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("unkajoboss", oBoss:getObjectID())	
		writeData("echo_base:spawnState", 1)
		spatialChat(pBoss, "UNKAJO KILL ALL NOW")	
		createObserver(DAMAGERECEIVED,"echo_base","boss_damage", pBoss)
		createObserver(OBJECTDESTRUCTION, "echo_base", "notifyBossDead", pBoss)
		createEvent(1800000, "echo_base", "despawnBoss", pBoss)		
	end)
	return 0
end

function echo_base:notifyBossDead(pBoss, pPlayer)
	writeData("echo_base:spawnState", 0)
	return 0
end

function echo_base:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("unkajoboss"),true)
	writeData("echo_base:spawnState", 0)
	return 0
end


function echo_base:boss_damage(pBoss, pPlayer)
	
	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)
	if (boss ~= nil) then
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)

		local x1 = 4.7
		local y1 = 343.6
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 68
		
		if distance > (maxDistance * maxDistance) then
			spatialChat(pBoss, "RUN FROM UNKAJO? SCARED OF ME!")
--			boss:healDamage(pBoss, 0, 2000000)
--			boss:healDamage(pBoss, 3, 2000000)
--			boss:healDamage(pBoss, 6, 2000000)
--			boss:setPvpStatusBitmask(0)
			forcePeace(pBoss)
--			boss:setOptionsBitmask(128)
			createEvent(3500, "echo_base", "resetScreenplayStatus", pPlayer)
		end

		if (((bossHealth <= (bossMaxHealth *0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind *0.9))) and readData("echo_base:spawnState") == 1) then
			spatialChat(pBoss, "UNKAJO HUNGRY")
			writeData("echo_base:spawnState",2)
			local pJos = spawnMobile("hoth", "baby_wampa", 0,11.9,-17.4,314.5,33,281475060608879)
			ObjectManager.withCreatureObject(pJos, function(firstTime)
				firstTime:engageCombat(pPlayer)
			end)
			spatialChat(pJos, "Waaaaaaaaoorroorr....rouaar?!")
	
			local pJosTwo = spawnMobile("hoth", "baby_wampa", 0,16.3,-17.4,323.1,-172,281475060608879)
			ObjectManager.withCreatureObject(pJosTwo, function(secondTime)
				secondTime:engageCombat(pPlayer)
			end)
			spatialChat(pJosTwo, "aaaoorrrrrrrraaaoorr....rwoar?!")
		
			local pJosThree = spawnMobile("hoth", "baby_wampa", 0,16.3,-17.4,323.1,-172,281475060608879)
			ObjectManager.withCreatureObject(pJosThree, function(thirdTime)
				thirdTime:engageCombat(pPlayer)
			end)				
			spatialChat(pJosThree, "aaaoorroorr....roar?!")
		
			local pJosFour = spawnMobile("hoth", "baby_wampa", 0,16.3,-17.4,323.1,-172,281475060608879)
			ObjectManager.withCreatureObject(pJosFour, function(fourthTime)
				fourthTime:engageCombat(pPlayer)
			end)
			spatialChat(pJosFour, "aaagoorrorrorr....arg ?!")				
		end	
	
		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("echo_base:spawnState") == 2) then
			spatialChat(pBoss,"UNKAJO ANGRY")
			writeData("echo_base:spawnState", 3)
			local pJosFive = spawnMobile("hoth", "wampa_boar",0, 16.3,-17.4,323.1,-172,281475060608879)
			ObjectManager.withCreatureObject(pJosFive, function(fifthTime)
				fifthTime:engageCombat(pPlayer)
			end)
			spatialChat(pJosFive, "ARGHOARRRRRRRR")
		end
		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("echo_base:spawnState") == 3) then
			spatialChat(pBoss,"UNKAJO EAT NOW KILL ALL")
			writeData("echo_base:spawnState", 4)
			local pJosSix = spawnMobile("hoth", "wampa_boar", 0,16.3,-17.4,323.1,-172,281475060608879)
			ObjectManager.withCreatureObject(pJosSix, function(sixthTime)
				sixthTime:engageCombat(pPlayer)	
			end)
			spatialChat(pJosSix, "aaaoorroorr....roar?!")
			local pJosSeven = spawnMobile("hoth",  "baby_wampa", 0, 16.3,-17.4,323.1,-172,281475060608879)
			ObjectManager.withCreatureObject(pJosSeven, function(seventhTime)
				seventhTime:engageCombat(pPlayer)
			end)
			spatialChat(pJosSeven, "aaaoororroorr....rouuar?!")
		end		
		
		if (((bossHealth <= (bossMaxHealth * 0.02)) or (bossAction <= (bossMaxAction * 0.02)) or (bossMind <= (bossMaxMind * 0.02))) and readData("echo_base:spawnState") == 4) then
			spatialChat(pBoss, "UNKAJO NOT DIE")
		end
	end
	return 0
end

function echo_base:resetScreenplayStatus(pPlayer)
	writeData("echo_base:spawnState", 1)	
end

function echo_base:teleportPlayer(pPlayer)
	if (pPlayer == nil) then
		return
	end
	
	local creature = LuaCreatureObject(pPlayer)
	if (creature ~= nil) then
		creature:teleport( -63.8,-18.3,305.4,281475136427507) 
	end
	return 0
end

function echo_base:portHoth(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("hoth", -2292.2, 120.0, 689.1, 0)
	return 0
end



mensix_facilityScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "mensix_facilityScreenPlay"
}

registerScreenPlay("mensix_facilityScreenPlay", true)

function mensix_facilityScreenPlay:start()
	if (isZoneEnabled("mustafar")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function mensix_facilityScreenPlay:spawnSceneObjects()
	--spawnSceneObject("mustafar", "object/tangible/loot/mustafar/must_display_case.iff", 		-88.6,23.2,-50.2,180,281475778295635) --display case
	--spawnSceneObject("mustafar", "object/tangible/loot/mustafar/must_display_case.iff", 		-92.4,23.2,-48.6,-130,281475778295635) --display case 
	--spawnSceneObject("mustafar", "object/tangible/loot/mustafar/mustafar_map.iff", 		-49.1,31.0,-112.9,90,281475778295638) --map


end

function mensix_facilityScreenPlay:spawnMobiles()

	spawnMobile("mustafar", "cloner_droid", 		0,-103.8,10.8,126.1,-135,281475795376194)
	spawnMobile("mustafar", "diskret_stahn", 		0,-77.2,10.8,67.5,-152,281475795376192)
	spawnMobile("mustafar", "musty_miner", 			0,-80.9,10.8,39.6,0,281475795376192)
	spawnMobile("mustafar", "musty_miner", 			0,-81.0,10.8,41.9,178,281475795376192)
	spawnMobile("mustafar", "uggo", 			0,-76.8,10.8,40.5,-90,281475795376192)
	spawnMobile("mustafar", "musty_miner", 			0,-86.9,10.8,42.1,174,281475795376192)
	spawnMobile("mustafar", "ikt", 				0,-94.4,10.8,53.7,90,281475795376192)
	spawnMobile("mustafar", "musty_first_order_security", 	0,-88.3,10.8,47.3,44,281475795376192)
	spawnMobile("mustafar", "musty_first_order_security", 	0,-86.4,10.8,45.9,0,281475795376192)
	spawnMobile("mustafar", "musty_first_order_security", 	0,-81.6,10.8,83.1,-90,281475795376191)
	spawnMobile("mustafar", "musty_first_order_security", 	0,-86.0,10.8,83.1,90,281475795376191)
	spawnMobile("mustafar", "foreman_chivos",		0,-129.8,10.3,77.4,23,281475795376198)
	spawnMobile("mustafar", "computer_tech", 		0,-117.1,10.8,39.3,86,281475795376199)
	spawnMobile("mustafar", "musty_first_order_security", 	0,-85.3,10.8,29.5,0,281475795376197)
	spawnMobile("mustafar", "musty_first_order_security",	0,-89.9,10.8,29.5,0,281475795376197)
	spawnMobile("mustafar", "musty_first_order_security",	0,-83.9,14.9,2.5,-126,281475795376201)
	spawnMobile("mustafar", "musty_first_order_security",	0,-83.2,14.9,-8.5,46,281475795376201)
	spawnMobile("mustafar", "epo_qetora", 			0,-15.9,19.1,-20.1,-86,281475795376203)
	spawnMobile("mustafar", "ithes_olok", 			0,-23.8,19.1,-5.8,180,281475795376203)
	spawnMobile("mustafar", "musty_first_order_security",	0,-127.6,19.1,-12.0,90,281475795376204)
	spawnMobile("mustafar", "musty_first_order_security",	0,-127.6,19.1,-18.0,90,281475795376204)
	spawnMobile("mustafar", "milo_mensix", 			0,-157.7,19.1,-15.4,90,281475795376205)
	spawnMobile("mustafar", "urup_falco", 			0,-152.6,19.1,-17.4,40,281475795376205)
	spawnMobile("mustafar", "mining_corp_exec",		0,-152.5,19.1,-13.5,-129,281475795376205)
	spawnMobile("mustafar", "jo_keslev", 			0,-145.1,18.6,-57.0,-47,281475795376207)
	spawnMobile("mustafar", "musty_first_order_security",	0,-126.3,19.1,-40.7,174,281475795376208)
	spawnMobile("mustafar", "musty_first_order_security",	0,-125.9,19.1,-45,0,281475795376208)
	spawnMobile("mustafar", "musty_first_order_security",	0,-123.7,19.1,-43,3,281475795376208)
	spawnMobile("mustafar", "musty_miner", 			0,-82.8,23.2,-34.7,0,281475795376209)
	spawnMobile("mustafar", "mensix_corp_merch", 		0,-88.0,22.7,-47.5,120,281475795376209)
	spawnMobile("mustafar", "musty_first_order_security",	0,-78.7,23.2,-50.6,-95,281475795376209)
	spawnMobile("mustafar", "musty_first_order_security",	0,-77.4,22.7,-50.6,-42.0,281475795376209)
	spawnMobile("mustafar", "musty_first_order_security",	0,-77.4,22.7,-50.6,-42.0,281475795376209)
	spawnMobile("mustafar", "musty_first_order_security",	0,-44.0,31.5,-118.0,-45,281475795376212)
	spawnMobile("mustafar", "musty_first_order_security",	0,-44.0,31.5,-108.0,-134,281475795376212)


end

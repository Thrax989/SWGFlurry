--/////////////////////////////////////////////////////////
--//		    Boss Spawn System					//
--//			Created By TOXIC:6/11/2020				//
--////////////////////////////////////////////////////////

--////////////////////////////////////////////////////////
--//		Current Boss Planet Dungeon2			//
--//		Current Boss Type NPC			//
--///////////////////////////////////////////////////////
avatar_platformScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "dungeon2",
}
registerScreenPlay("avatar_platformScreenplay", true)
-----------------------------
--Start Avatar ScreenPlay
-----------------------------
function avatar_platformScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("Avatar Loaded")
	end
end
-----------------------
--Avatar Has Spawned
-----------------------
function avatar_platformScreenplay:spawnMobiles()
----14201271
spawnMobile("dungeon2","ep3_blackscale_scaleguard",360,-209,0,-17,90,14201271)
spawnMobile("dungeon2","ep3_blackscale_scaleguard",360,-209,0,-33,90,14201271)

--14201265 room before boss

spawnMobile("dungeon2","ep3_blackscale_trooper_m_01",360,-171,0,-27,90,14201265)
spawnMobile("dungeon2","ep3_blackscale_trooper_m_02",360,-170,0,-21,90,14201265)
spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,-164,0,-21,-45,14201265)
spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,-163,0,-27,-135,14201265)
spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,-171,0,-34,45,14201265)
spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,-164,0,-34,-45,14201265)
spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,-170,0,-15,135,14201265)
spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,-164,0,-15,-135,14201265)

--14201238 systemscontrol

spawnMobile("dungeon2","ep3_blackscale_guard_m_03",360,-84,0,35,0,14201238)
spawnMobile("dungeon2","ep3_blackscale_guard_m_04",360,-97,0,35,0,14201238)

--14201274 controlroom

spawnMobile("dungeon2","ep3_blackscale_trooper_m_03",360,-90,0.75,14,0,14201274)
spawnMobile("dungeon2","ep3_blackscale_trooper_m_02",360,-94,0.75,17,90,14201274)
spawnMobile("dungeon2","ep3_blackscale_trooper_m_01",360,-87,0.75,17,-90,14201274)


--14201224 mainhangar

spawnMobile("dungeon2","ep3_blackscale_guard_m_02",360,35,0,8,90,14201224)
spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,35,0,26,90,14201224)
spawnMobile("dungeon2","ep3_blackscale_guard_m_04",360,40,0,7,0,14201224)
spawnMobile("dungeon2","ep3_blackscale_guard_m_03",360,40,0,36,180,14201224)
spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,59,0,22,90,14201224)
spawnMobile("dungeon2","ep3_blackscale_guard_m_02",360,62,0,25,180,14201224)
spawnMobile("dungeon2","ep3_blackscale_guard_m_03",360,62,0,19,0,14201224)

--14201226 checkpoint01

spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,20,0,65,-135,14201226)
spawnMobile("dungeon2","ep3_blackscale_guard_m_02",360,18,0,55,-25,14201226)
spawnMobile("dungeon2","ep3_blackscale_guard_m_03",260,13,0,57,90,14201226)
spawnMobile("dungeon2","ep3_blackscale_trooper_m_01",360,10,0,65,135,14201226)

--14201229 generalstorage

spawnMobile("dungeon2","ep3_blackscale_guard_m_03",360,-10,0,11,-45,14201229)
spawnMobile("dungeon2","ep3_blackscale_guard_m_02",360,-12,0,11,45,14201229)
spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,-11,0,15,-135,14201229)
spawnMobile("dungeon2","ep3_blackscale_guard_m_04",360,-17,0,20,-45,14201229)
spawnMobile("dungeon2","ep3_blackscale_scaleguard",360,-31,0,19,-90,14201229)

--14201234 secondarystorage

spawnMobile("dungeon2","ep3_blackscale_trooper_m_01",360,-51,0,37,90,14201234)
spawnMobile("dungeon2","ep3_blackscale_guard_m_04",360,-48,0,46,135,14201234)
spawnMobile("dungeon2","ep3_blackscale_guard_m_03",360,-41,0,47,-135,14201234)

--14201241 anteroom

spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,57,0,-60,180,14201241)
spawnMobile("dungeon2","ep3_blackscale_guard_m_02",360,45,0,-60,135,14201241)
spawnMobile("dungeon2","ep3_blackscale_guard_m_03",360,48,0,-76,45,14201241)
spawnMobile("dungeon2","ep3_blackscale_guard_m_04",360,62,0,-76,-45,14201241)

--14201252 barracks01

spawnMobile("dungeon2","ep3_blackscale_scaleguard",360,-77,0,-176,90,14201252)
spawnMobile("dungeon2","ep3_blackscale_scaleguard",360,-74,0,-179,45,14201252)
spawnMobile("dungeon2","ep3_blackscale_scaleguard",360,-74,0,-171,135,14201252)
spawnMobile("dungeon2","ep3_blackscale_guard_m_04",360,-64,0,-187,180,14201252)
spawnMobile("dungeon2","ep3_blackscale_trooper_m_01",360,-50,0,-183,-90,14201252)
spawnMobile("dungeon2","ep3_blackscale_guard_m_02",360,-61,0,-170,-90,14201252)

--14201266 commandhall06

spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,-176,0,18,180,14201266)
spawnMobile("dungeon2","ep3_blackscale_guard_m_02",360,-171,0,19,180,14201266)

--14201267 navigationroom

spawnMobile("dungeon2","ep3_blackscale_trooper_m_02",360,-178,-1,42,135,14201267)
spawnMobile("dungeon2","ep3_blackscale_trooper_m_03",360,-173,-1,45,180,14201267)
spawnMobile("dungeon2","ep3_blackscale_trooper_m_01",360,-169,-1,42,-135,14201267)

--14201262 commandhall04

spawnMobile("dungeon2","ep3_blackscale_guard_m_02",360,-144,0,-47,180,14201262)
spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,-146,0,-46,180,14201262)
spawnMobile("dungeon2","ep3_blackscale_guard_m_03",360,-149,0,-35,180,14201262)

--14201239 powercore

spawnMobile("dungeon2","ep3_blackscale_scaleguard",360,-93,10,-18,-135,14201239)
spawnMobile("dungeon2","ep3_blackscale_trooper_m_03",360,-88,10,-18,135,14201239)
spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,-81,-14,-83,180,14201239)
spawnMobile("dungeon2","ep3_blackscale_guard_m_02",360,-104,-14,-84,180,14201239)
spawnMobile("dungeon2","ep3_blackscale_scaleguard",360,-90,-14,-82,0,14201239)
spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,-87,-14,-68,90,14201239)
spawnMobile("dungeon2","ep3_blackscale_guard_m_03",360,-93,-14,-68.,-90,14201239)

--Boss Room
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -204.523, 3.07264e-08, -16.5945, 188, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -195.08, -1.80585e-08, -16.5001, 54, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -194.91, -2.85989e-08, -32.9612, 158, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -206.562, 5.37062e-08, -31.8888, 359, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -205.181, -3.61113e-08, -47.1831, 99, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -214.551, 5.66324e-08, -32.4732, 208, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -216.127, 9.56048e-08, -30.2505, 215, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -218.302, 1.01136e-08, -28.7245, 221, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -218.213, 8.02523e-08, -26.4286, 239, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -218.237, 6.40836e-08, -23.6183, 280, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -218.183, 6.22061e-08, -20.972, 270, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -216.092, 6.27911e-08, -19.5472, 308, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -214.619, 6.13758e-08, -17.4476, 319, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -204.523, 3.07264e-08, -16.5945, 188, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -215.745, -1, -36.0073, 167, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -221.225, -1, -19.4058, 219, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -222.017, -1, -29.2173, 252, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -216.899, -1, -14.8131, 272, 14201271)
		local pBoss = spawnMobile("dungeon2", "ep3_lord_cyssc", -1, -234, -1, -25.07, 90, 14201271)--Spawn Avatar
		local creature = CreatureObject(pBoss)
		print("Avatar Spawned")
		createObserver(OBJECTDESTRUCTION, "avatar_platformScreenplay", "bossDead", pBoss)--Avatar Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--Avatar Has Died Respawn Avatar With A New Dynamic Spawn
---------------------------------------------------------------
function avatar_platformScreenplay:bossDead(pBoss)
	print("Avatar Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "avatar_platformScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(getRandomNumber(7200000) + 7200000, "avatar_platformScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	return 0
end
-----------------------
--Respawn Avatar Boss
-----------------------
function avatar_platformScreenplay:KillSpawn()
		local pBoss = spawnMobile("dungeon2", "ep3_lord_cyssc", -1, -234, -1, -25.07, 90, 14201271)--Random Boss Respawn In 2-4 Hours
		local creature = CreatureObject(pBoss)
		print("Avatar Respawned")
		createObserver(OBJECTDESTRUCTION, "avatar_platformScreenplay", "bossDead", pBoss)
end
-----------------------------------------------------------------------------
--Avatar Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function avatar_platformScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Avatar Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end

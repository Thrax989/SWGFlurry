avatarPlatformScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("avatarPlatformScreenPlay", true)

function avatarPlatformScreenPlay:start()
	if (isZoneEnabled("dungeon2")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function avatarPlatformScreenPlay:spawnSceneObjects()

end

function avatarPlatformScreenPlay:spawnMobiles()



----14201271

spawnMobile("dungeon2","ep3_lord_cyssc",3600,-234,-1,-25.07,90,14201271)
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






end

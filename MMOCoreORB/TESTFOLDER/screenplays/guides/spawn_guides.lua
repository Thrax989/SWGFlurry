-- BY: Mindsoft											-- last edited: 3.10.2017	-- (this code belongs soley to BloodfinEMU)
-----------------------------------------------(SCREENPLAY)
spawn_guides = ScreenPlay:new {numberOfActs = 1}
registerScreenPlay("spawn_guides", true)

--Spawn Quest givers and triggers.
function spawn_guides:start()
		--[Mobiles]
	--spawnMobile("planet", "mobile",respawn, x, z, y, dir, cell )


	--[corelia]
	spawnMobile("corellia", "new_crafting_guide",1, -187, 28, -4701, 90, 0 )


end




-- (this code belongs soley to BloodfinEMU)

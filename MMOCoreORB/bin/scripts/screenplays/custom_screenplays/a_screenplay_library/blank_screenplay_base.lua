newScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "newScreenPlay",

}

registerScreenPlay("newScreenPlay", true)

function newScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnSceneObjects()
		self:spawnMobiles()

	end
end

function newScreenPlay:spawnSceneObjects()

	--spawnSceneObject("tatooine", "object/static/structure/content/exar_kun_torture_table.iff", 3501, 5 -4590, 0, 0.709794, 0, -0.704409, 0)
	--spawnSceneObject("tatooine", "object/static/structure/general/droid_r4_powerdown.iff", 3500, 5, -4601, math.rad(0) )
	
end

function newScreenPlay:spawnMobiles()

	--spawnMobile("tatooine", "thug", 3600, 3084.4, -25.8, 2296.7, -104, 0)
	
end


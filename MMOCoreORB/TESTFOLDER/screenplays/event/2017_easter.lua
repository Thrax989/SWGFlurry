easter_city_hunt = ScreenPlay:new {
	screenplayName = "easter_city_hunt",
	spawnsPerCity = 8,
	lifespan = 120000, --120 seconds

	mobiles = {"easter_hunt_bunny"},

	chats = {"Squeeeeeek!!!", "Hands OFF my Easter Eggs...."},

	planets = {
		["rori"] = {
			["restuss"] = {
--				  X	Z    Y	Range
				{5250, 79, 6123, 25},
				{5215, 79, 6191, 25},
				{5213, 79, 6072, 25},
				{5345, 79, 6192, 25},
				{5342, 79, 6070, 25},
				{5329, 79, 5938, 60},
				{5209, 79, 5949, 50},
				{5205, 80, 5806, 20},
				{5231, 80, 5717, 25},
				{5232, 80, 5634, 25},
				{5182, 80, 5568, 20},
				{5328, 80, 5647, 20},
				{5419, 80, 5716, 50},
				{5545, 80, 5634, 2},
				{5049, 81, 5748, 2},
			},
		},

		["tatooine"] = {
			["eisley"] = {
--				  X	Z    Y	Range
				{3594, 5, -4785, 8},
				{3500, 5, -4782, 8},
				{3470, 5, -4795, 10},
				{3514, 5, -4706, 20},
				{3548, 5, -4723, 8},
				{3391, 5, -4648, 25},
				{3367, 5, -4824, 8},
				{3395, 5, -4862, 8},
				{3454, 5, -4902, 20},
				{3518, 5, -5036, 25},
				{3353, 5, -5004, 20},
				{3277, 5, -4688, 15},
				{3314, 5, -4625, 15},
				{3391, 5, -4513, 15},
				{3478, 5, -4537, 15},
				{3526, 5, -4591, 25},
			},
		},

		["naboo"] = { 
			["Theed"] = {
--				  X	Z    Y	Range
				{-4917, 6, 4096, 50},
				{-5096, 6, 4216, 30},
				{-5184, 6, 4333, 20},
				{-4987, 6, 4257, 20},
				{-4964, 6, 4150, 10},
				{-4881, 6, 3965, 40},
				{-5026, 6, 4001, 50},
				{-5154, 6, 4099, 30},
				{-4818, 6, 4108, 20},
				{-4895, 6, 4217, 8},
				{-5144, 6, 4259, 5},
				{-5262, 6, 4224, 15},
				{-5197, 6, 4192, 8},
				{-5321, 6, 4129, 10},
				{-5420, 6, 4072, 30},
				{-5500, 6, 4059, 30},
				{-5497, 6, 4255, 30},
				{-5491, 6, 4348, 25},
				{-5344, 6, 4499, 25},
			},
		},

		["corellia"] = {
			["Coronet"] = {
--				  X	Z    Y	Range
				{-175, 28, -4848, 40},
				{-339, 28, -4829, 30},
				{-368, 28, -4713, 15},
				{-337, 28, -4666, 10},
				{-399, 28, -4664, 10},
				{-221, 28, -4681, 10},
				{-255, 28, -4615, 10},
				{-254, 28, -4530, 10},
				{-211, 28, -4490, 20},
				{-209, 28, -4433, 25},
				{-389, 28, -4519, 10},
				{-389, 28, -4456, 15},
				{-88, 28, -4534, 20},
				{-1, 28, -4606, 20},
				{-54, 28, -4738, 20},
				{-32, 28, -4815, 10},
			},
		},
	}
}

registerScreenPlay("easter_city_hunt",  true)

function easter_city_hunt:start()
	print("easter city hunt screenplay started")
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
	end
	return 0
end

function easter_city_hunt:spawnMobiles()
	for planet,pTbl in pairs(self.planets) do
		for city,cTbl in pairs(pTbl) do
			for wp,wpTbl in pairs(cTbl) do
			end
			for i = 1 , self.spawnsPerCity do
				local mobile = self.getMobile()
				local id = math.random(1,#cTbl)
				local pObj = rspawnMobile(planet, mobile, -1, cTbl[id][1], cTbl[id][2], cTbl[id][3], math.random(360), 0, cTbl[id][4], "")
				createEvent(self.lifespan, "easter_city_hunt", "despawn", pObj)
				createObserver(OBJECTDESTRUCTION, "easter_city_hunt", "killed", pObj)
				createEvent(self.lifespan + math.random(2000), "easter_city_hunt", "respawn", pObj,planet..","..city)
			end
		end
	end
	return 0
end

function easter_city_hunt:getMobile()
	local id = math.random(1,#easter_city_hunt.mobiles)
	return easter_city_hunt.mobiles[id]
end

function easter_city_hunt:killed(pMobile)
	if not pMobile then return 0 end
	forcePeace(pMobile)
	local chatStr = self.chats[math.random(#self.chats)]
	spatialChat(pMobile, chatStr) 
	return 0
end

function easter_city_hunt:respawn(object,str)
	if not str then return 0 end
	local tbl = splitString(str,",")
	local planet = tbl[1]
	local city = tbl[2]
	local pTbl = easter_city_hunt.planets[planet]
	local cTbl = pTbl[city]
	local id = math.random(1,#cTbl)
	local mobile = self.getMobile()
	local pObj = rspawnMobile(planet, mobile, -1, cTbl[id][1], cTbl[id][2], cTbl[id][3], math.random(360), 0, cTbl[id][4], "")
	--print("ID:",LuaSceneObject(pObj):getObjectID())
	createEvent(self.lifespan, "easter_city_hunt", "despawn", pObj)
	createEvent(self.lifespan + math.random(2000), "easter_city_hunt", "respawn", pObj,planet..","..city)
	createObserver(OBJECTDESTRUCTION, "easter_city_hunt", "killed", pObj)
	return 0
end

function easter_city_hunt:despawn(pMobile)
	if not (LuaSceneObject(pMobile):isValid() and LuaSceneObject(pMobile):getZoneName()) then
		print("Invalid Object Trapped by:easter_city_hunt Screenplay")	
		return 0
	end
	forcePeace(pMobile)
	bf_tools:destroy(pMobile)
	return 0
end

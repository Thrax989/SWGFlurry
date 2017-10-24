	lambda_vader = ScreenPlay:new {
    numberOfActs = 1, 
    questString = "lambda_vader_ani",
    states = {}, 
}

registerScreenPlay("lambda_vader", true)
myHelper = require("sphelper")

function lambda_vader:start() 

	local pShuttle = spawnMobile("corellia", "lambda_shuttle", 1, -154.1, 26.0, -4788.9, 0, 0)
	local shuttle = LuaCreatureObject(pShuttle)
	writeStringData("crimson:shuttleani:objectid", shuttle:getObjectID())
	shuttle:setOptionsBitmask(256)
	shuttle:setPosture(PRONE)
	createEvent(60000, "lambda_vader", "launchferry", shuttle)
end

function lambda_vader:launchferry(shuttle)
	local pShuttle = getCreatureObject(readStringData("crimson:shuttleani:objectid"))
	local oshuttle = LuaCreatureObject(pShuttle)
	oshuttle:setPosture(FLYING)
	createEvent(60000, "lambda_vader", "landferry", shuttle)
end

function lambda_vader:landferry(shuttle)
	local pShuttle = getCreatureObject(readStringData("crimson:shuttleani:objectid"))
	local oshuttle = LuaCreatureObject(pShuttle)
	oshuttle:setPosture(PRONE)
	createEvent(60000, "lambda_vader", "launchferry", shuttle)
end


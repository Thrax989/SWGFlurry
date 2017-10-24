	crimson_lambdaanimation = ScreenPlay:new {
    numberOfActs = 1, 
    questString = "crimson_lambdaanimation_ani",
    states = {}, 
}

registerScreenPlay("crimson_lambdaanimation", true)
local ObjectManager = require("managers.object.object_manager")

function crimson_lambdaanimation:start() 
	if (isZoneEnabled("talus")) then
		local pShuttle = spawnMobile("talus", "lambda_shuttle", 1, -3444, 11.0, -2050, 90, 0)
		
		ObjectManager.withCreatureObject(pShuttle, function(shuttle)
			writeData("crimson:shuttleani:objectid", shuttle:getObjectID())
			shuttle:setOptionsBitmask(256)
			shuttle:setPosture(PRONE)
			createEvent(60000, "crimson_lambdaanimation", "launchferry", shuttle)
		end)
	end
end

function crimson_lambdaanimation:launchferry(shuttle)
	local pShuttle = getCreatureObject(readData("crimson:shuttleani:objectid"))
	
	ObjectManager.withCreatureObject(pShuttle, function(shuttle)
		shuttle:setPosture(FLYING)
		createEvent(60000, "crimson_lambdaanimation", "landferry", shuttle)
	end)
end

function crimson_lambdaanimation:landferry(shuttle)
	local pShuttle = getCreatureObject(readData("crimson:shuttleani:objectid"))
	ObjectManager.withCreatureObject(pShuttle, function(shuttle)
		shuttle:setPosture(PRONE)
		createEvent(60000, "crimson_lambdaanimation", "launchferry", shuttle)
	end)
end


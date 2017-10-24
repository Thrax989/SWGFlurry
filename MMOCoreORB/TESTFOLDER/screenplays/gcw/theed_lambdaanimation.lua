	theed_lambdaanimation = ScreenPlay:new {
    numberOfActs = 1, 
    questString = "theed_lambdaanimation_ani",
    states = {}, 
}

registerScreenPlay("theed_lambdaanimation", true)

local ObjectManager = require("managers.object.object_manager")

function theed_lambdaanimation:start() 
	if (isZoneEnabled("naboo")) then
		local pShuttle = spawnMobile("naboo", "lambda_shuttle", 1, -4858.2, 6.0, 4103.5, -97, 0)
		
		ObjectManager.withCreatureObject(pShuttle, function(shuttle)
			writeData("theed:shuttleani:objectid", shuttle:getObjectID())
			shuttle:setOptionsBitmask(256)
			shuttle:setPosture(PRONE)
			createEvent(60000, "theed_lambdaanimation", "launchferry", shuttle)
		end)
	end
end

function theed_lambdaanimation:launchferry(shuttle)
	local pShuttle = getCreatureObject(readData("theed:shuttleani:objectid"))
	
	ObjectManager.withCreatureObject(pShuttle, function(shuttle)
		shuttle:setPosture(FLYING)
		createEvent(60000, "theed_lambdaanimation", "landferry", shuttle)
	end)
end

function theed_lambdaanimation:landferry(shuttle)
	local pShuttle = getCreatureObject(readData("theed:shuttleani:objectid"))
	ObjectManager.withCreatureObject(pShuttle, function(shuttle)
		shuttle:setPosture(PRONE)
		createEvent(60000, "theed_lambdaanimation", "launchferry", shuttle)
	end)
end



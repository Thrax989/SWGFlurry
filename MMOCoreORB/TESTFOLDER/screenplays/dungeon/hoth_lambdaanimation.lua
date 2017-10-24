	hoth_lambdaanimation = ScreenPlay:new {
    numberOfActs = 1, 
    questString = "hoth_lambdaanimation_ani",
    states = {}, 
}

registerScreenPlay("hoth_lambdaanimation", true)

local ObjectManager = require("managers.object.object_manager")

function hoth_lambdaanimation:start() 
	if (isZoneEnabled("hoth")) then
		local pShuttle = spawnMobile("hoth", "lambda_shuttle", 1, -463.3, 37.6, -984.1, 3, 0)
		
		ObjectManager.withCreatureObject(pShuttle, function(shuttle)
			writeData("hoth:shuttleani:objectid", shuttle:getObjectID())
			shuttle:setOptionsBitmask(256)
			shuttle:setPosture(PRONE)
			createEvent(60000, "hoth_lambdaanimation", "launchferry", shuttle)
		end)
	end
end

function hoth_lambdaanimation:launchferry(shuttle)
	local pShuttle = getCreatureObject(readData("hoth:shuttleani:objectid"))
	
	ObjectManager.withCreatureObject(pShuttle, function(shuttle)
		shuttle:setPosture(FLYING)
		createEvent(60000, "hoth_lambdaanimation", "landferry", shuttle)
	end)
end

function hoth_lambdaanimation:landferry(shuttle)
	local pShuttle = getCreatureObject(readData("hoth:shuttleani:objectid"))
	ObjectManager.withCreatureObject(pShuttle, function(shuttle)
		shuttle:setPosture(PRONE)
		createEvent(60000, "hoth_lambdaanimation", "launchferry", shuttle)
	end)
end



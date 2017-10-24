	moenia_lambdaanimation = ScreenPlay:new {
    numberOfActs = 1, 
    questString = "moenia_lambdaanimation_ani",
    states = {}, 
}

registerScreenPlay("moenia_lambdaanimation", true)

local ObjectManager = require("managers.object.object_manager")

function moenia_lambdaanimation:start() 
	if (isZoneEnabled("naboo")) then
		local pShuttle = spawnMobile("naboo", "lambda_shuttle", 1, 4832.2, 4.2, -4652.8, 173, 0)
		
		ObjectManager.withCreatureObject(pShuttle, function(shuttle)
			writeData("moenia:shuttleani:objectid", shuttle:getObjectID())
			shuttle:setOptionsBitmask(256)
			shuttle:setPosture(PRONE)
			createEvent(60000, "moenia_lambdaanimation", "launchferry", shuttle)
		end)
	end
end

function moenia_lambdaanimation:launchferry(shuttle)
	local pShuttle = getCreatureObject(readData("moenia:shuttleani:objectid"))
	
	ObjectManager.withCreatureObject(pShuttle, function(shuttle)
		shuttle:setPosture(FLYING)
		createEvent(60000, "moenia_lambdaanimation", "landferry", shuttle)
	end)
end

function moenia_lambdaanimation:landferry(shuttle)
	local pShuttle = getCreatureObject(readData("moenia:shuttleani:objectid"))
	ObjectManager.withCreatureObject(pShuttle, function(shuttle)
		shuttle:setPosture(PRONE)
		createEvent(60000, "moenia_lambdaanimation", "launchferry", shuttle)
	end)
end



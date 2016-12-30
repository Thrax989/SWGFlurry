local ObjectManager = require("managers.object.object_manager")
RaceTrack = require("screenplays.racetracks.racetrackengine")


mosrassen_racetrack_screenplay = RaceTrack:new {
	trackConfig={
	  debugMode=1, -- 0 = off, 1 = print debug messages
		planetName = "ghomrassen", -- The planet the Track is on
		badgeToAward=140,  -- Badge to be awarded for best daily time-bdg_racing_mosrassen_hills
		trackName="MRHRT",  -- Internal trackname , should be unique to the track
		className="mosrassen_racetrack_screenplay", -- Class name of this class
		trackCheckpoint="@theme_park/racing/racing:mosrassen_waypoint_name_checkpoint", --Waypoint names
		trackLaptime="@theme_park/racing/racing:mosrassen_laptime_checkpoint", -- System message sent at each waypoint
		timeResolution=2, -- number of decimal places to use for the laptimes 0 = none, 1 = well 1 etc
		expiryTime = (1*3600), --Amount of time in seconds that a player will be expired from the track (stops silly times over this limit)
    resetTime = (22*3600)+(10*60), --Time of day in seconds that track resets High Scores
		waypointRadius=10, -- size of the waypoint observer
		raceCoordinator = {x=-3377,y=-5297,z=0.0}, -- Location of the race coordinator. Note the Z coord is VERY important or conversations break
		waypoints = { {x = -4397, y = -5594}, -- The coords of the waypoints
					  {x = -4461, y = -6118},
					  {x = -4281, y = -6628},
					  {x = -4806, y = -7028},
					  {x = -5634, y = -7124},
					  {x = -5642, y = -6185},
					  {x = -6195, y = -5962},
					  {x = -7290, y = -5204},
					  {x = -7641, y = -4492},
					  {x = -7290, y = -3940},
					  {x = -6885, y = -3893},
					  {x = -5966, y = -3966},
					  {x = -4933, y = -3808},
					  {x = -3696, y = -4050},
					  {x = -3413, y = -4037},
					  {x = -3071, y = -4392},
					  {x = -3188, y = -5341},
					  {x = -3377, y = -5293}
					}
		}
}

registerScreenPlay("mosrassen_racetrack_screenplay", true)

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function mosrassen_racetrack_screenplay:start()
	if (isZoneEnabled(self.trackConfig.planetName)) then
		self:spawnMobiles()
		self:createRaceTrack()
	end
end

function mosrassen_racetrack_screenplay:spawnMobiles()
	local pCoord = spawnMobile(self.trackConfig.planetName, "mosrassen_race_coordinator", 1, self.trackConfig.raceCoordinator.x, self.trackConfig.raceCoordinator.z, self.trackConfig.raceCoordinator.y, 35, 0)
end

function mosrassen_racetrack_screenplay:enteredWaypoint(pActiveArea, pObject)
	return self:processWaypoint(pActiveArea, pObject)
end

mosrassen_racetrack_convo_handler = Object:new {}

function mosrassen_racetrack_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	return ObjectManager.withCreatureObject(conversingPlayer, function(creatureObject)
		local convosession = creatureObject:getConversationSession()
		local lastConversationScreen = nil
		local conversation = LuaConversationTemplate(conversationTemplate)
		local nextConversationScreen
		if ( conversation ~= nil ) then
			-- checking to see if we have a next screen
			if ( convosession ~= nil ) then
				 local session = LuaConversationSession(convosession)
				 if ( session ~= nil ) then
				 	lastConversationScreen = session:getLastConversationScreen()
				 else
				 	print("session was not good in getNextScreen")
				 end
			end
			if ( lastConversationScreen == nil ) then
			 	nextConversationScreen = conversation:getInitialScreen()
			else
				local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
				local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
				nextConversationScreen = conversation:getScreen(optionLink)
			end
		end
		return nextConversationScreen
	end)
end

function mosrassen_racetrack_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	local screen = LuaConversationScreen(conversationScreen)
	local screenID = screen:getScreenID()
	if ( screenID == "cs_jsPlumb_1_116" ) then
		mosrassen_racetrack_screenplay:startRacing(conversingPlayer)
	elseif ( screenID == "cs_jsPlumb_1_181" ) then -- Personal Best
		mosrassen_racetrack_screenplay:displayPersonalBestTime(conversingPlayer)
	elseif ( screenID == "cs_jsPlumb_1_207" ) then -- Track Best
		mosrassen_racetrack_screenplay:displayTrackBestTime(conversingPlayer)
	end
	return conversationScreen
end

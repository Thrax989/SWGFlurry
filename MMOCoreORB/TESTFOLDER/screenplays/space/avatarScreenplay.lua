avatarScreenplay = ScreenPlay:new {numberOfActs = 1, 


	
	keypadCodes = 
	{
		11500,
		10089,
		00851,
		06039,
		20042,
		61255,
		57395,
		98337,
		42735,
		68783
	},
	
	lockedCells = 
	{
		281475247980744,
		281475247980750,
		281475247980763,
		281475247980767,
		281475247980778,
		281475247980782,
		281475247980786,
		281475247980788,
		281475247980790,
		281475247980793
	},
	
	keypads = {
		{ x = 44.1, z = 0.6, y = 39.1, cell = 281475247980743, dw = 0, dx = 0, dy = -1, dz = 0 },
		{ x = -24.2, z = 0.6, y = 1.4, cell = 281475247980748, dw = 1, dx = 0, dy = 0, dz = 0 },
		{ x = -42.9, z = 0.6, y = -73.5, cell = 281475247980760, dw = 1, dx = 0, dy = 0, dz = 0 },
		{ x = -86.7, z = 0.6, y = -96.5, cell = 281475247980758, dw = 0, dx = 0, dy = -1, dz = 0 },
		{ x = -156.4, z = 0.6, y = -90.4, cell = 281475247980777, dw = 0, dx = 0, dy = -1, dz = 0 },
		{ x = -124.5, z = 0.6, y = -53.4, cell = 281475247980758, dw = 0.707107, dx = 0, dy = -0.707107, dz = 0 },
		{ x = -175.2, z = 0.6, y = 19.6, cell = 281475247980785, dw = 0, dx = 0, dy = -1, dz = 0 },
		{ x = -188.7, z = 0.6, y = -77.6, cell = 281475247980787, dw = 1, dx = 0, dy = 0, dz = 0 },
		{ x = -188.2, z = 0.6, y = -27.2, cell = 281475247980789, dw = 0.707107, dx = 0, dy = -0.707107, dz = 0 },
		{ x = -87.6, z = 0.6, y = 31.5, cell = 281475247980757, dw = 0, dx = 0, dy = -1, dz = 0 }
	},

	debris = {
		{ template = "object/static/destructible/destructible_cave_wall_damprock.iff", x = -39.6, z = 0.0, y = -50.0, cell = 281475247980752 },
		{ template = "object/static/destructible/destructible_cave_wall_damprock.iff", x = -145.6, z = 0.0, y = -49.3, cell = 281475247980781 },
		{ template = "object/static/destructible/destructible_cave_wall_damprock.iff", x = -130.8, z = 0.0, y = -93.8, cell = 281475247980776 },
		{ template = "object/static/destructible/destructible_cave_wall_damprock.iff", x = -164.3, z = 0.0, y = 1.8, cell = 281475247980785 },
		{ template = "object/static/destructible/destructible_cave_wall_damprock.iff", x = -174.5, z = 0.0, y = -70.0, cell = 281475247980787 }
	},
	
	avatarObjectID = 281475247980741,
}
spHelper = require("screenplayHelper")
registerScreenPlay("avatarScreenplay" ,true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for Avatar Platform")

function avatarScreenplay:start()
	if (isZoneEnabled("space_lok")) then
		self:spawnSceneObjects()
		self:spawnMobiles()
		spHelper:setupPermissionGroups("AvatarKeypad", self.lockedCells)
 	end
end


function avatarScreenplay:spawnSceneObjects()
	
	--Building observer to lock all security doors.
	local pBuilding = getSceneObject(self.avatarObjectID)
	createObserver(ENTEREDBUILDING, "avatarScreenplay", "notifyEnteredAvatar", pBuilding)
	
	for i = 1, 10, 1 do
		local kp = self.keypads[i]
		local pSceneObject = spawnSceneObject("space_lok", "object/tangible/dungeon/wall_terminal_s3.iff", kp.x, kp.z, kp.y, kp.cell, kp.dw, kp.dx, kp.dy, kp.dz)
		ObjectManager.withSceneObject(pSceneObject, function(scene)
			writeData(string.format("%#x", scene:getObjectID()) .. ":avatarScreenplay:keypad_index", i)
			createObserver(OBJECTRADIALUSED, "avatarScreenplay", "notifyKeypadUsed", pSceneObject)
		end)
	end


	--debri fields
	for i = 1, 5, 1 do
		local debrisData = self.debris[i]
		local pDebris = spawnSceneObject("space_lok", debrisData.template, debrisData.x, debrisData.z, debrisData.y, debrisData.cell, 1, 0, 0, 0)
		ObjectManager.withSceneObject(pDebris, function(debris)
			writeData(string.format("%#x",debris:getObjectID()) .. ":avatarScreenplay:debris_index", i)
			createObserver(OBJECTDESTRUCTION, "avatarScreenplay", "notifyDebrisDestroyed", pDebris)
		end)
	end

end 

function avatarScreenplay:spawnMobiles()
	--hall to the right of the entertainers 
        --marked with a 1 on the dev map
	spawnMobile("space_lok", "salvage_bandit", 300, -9.2,  0.0,  -12.1, 135, 281475247980792)
	spawnMobile("space_lok", "salvage_bandit", 300,  22.1, -0.1, -46.1,-3, 281475247980792)
	spawnMobile("space_lok", "salvage_bandit", 300, 47.4, 0.1,  -27.9, 170, 281475247980791)

	--hall to the left of the entertainers marked with a 2 on dev map
	spawnMobile("space_lok", "salvage_bandit", 300, 17.3, 0.1, -74.0, 154, 281475247980763)
	spawnMobile("space_lok", "salvage_bandit", 300, 14.1, 0.2, -97.2, -33, 281475247980763)
	spawnMobile("space_lok", "salvage_bandit", 300, -13.4, -0.1, -97.2, 89, 281475247980764)

	-- clover shaped room end of hallway room 3 on dev map
	spawnMobile("space_lok", "salvage_bandit", 300, -42.5, -0.0, -97.0, 81, 281475247980765)
	spawnMobile("space_lok", "salvage_bandit", 300, -47.0, 0.0, -92.0, 50, 281475247980765)
	spawnMobile("space_lok", "salvage_bandit", 300, -54.0, 0.0, -100.3, -123, 281475247980765)
	spawnMobile("space_lok", "salvage_bandit", 300, -51.6, 0.0, -114.6, 179, 281475247980765)
	spawnMobile("space_lok", "salvage_bandit", 300, -38.7, 0.0, -111.0, -4, 281475247980765)
	spawnMobile("space_lok", "salvage_bandit", 300, -38.8, 0.0, -156.5, -92, 281475247980769)

	--6 clover shaped room number 4 on dev map
	spawnMobile("space_lok", "salvage_bandit", 300, -72.6, 0.0, -170.2, -89, 281475247980771)
	spawnMobile("space_lok", "salvage_bandit", 300, -64.5, 0.0, -173.5, -1, 281475247980771)
	spawnMobile("space_lok", "salvage_bandit", 300, -79.5, 0.0, -182.8, -92, 281475247980771)
	spawnMobile("space_lok", "salvage_bandit", 300, -61.4, 0.0, -182.9, -92, 281475247980771)
	spawnMobile("space_lok", "salvage_bandit", 300, -48.8, 0.0, -182.9, -93, 281475247980771)
	spawnMobile("space_lok", "salvage_bandit", 300, -52.7, 0.0, -170.4, -133, 281475247980771)
	
	--clover shaped room number 5 on dev map
	spawnMobile("space_lok", "salvage_bandit", 300, -58.5, -0.0, -129.8, -85, 281475247980770)
	spawnMobile("space_lok", "salvage_bandit", 300, -62.4, 0.1, -142.8, 87, 281475247980770)
	spawnMobile("space_lok", "salvage_bandit", 300, -57.7, 0.0, -142.9, -90, 281475247980770)
	spawnMobile("space_lok", "salvage_bandit", 300, -66.7, -0.0, -15.6, 99, 281475247980769)

	--hallway number 6 on dev map
	spawnMobile("space_lok", "salvage_bandit", 300, -86.2, -0.0, -156.7, 88, 281475247980772)
	spawnMobile("space_lok", "salvage_bandit", 300, -99.5, -0.1, -146.5, 167, 281475247980772)
	spawnMobile("space_lok", "salvage_bandit", 300, -104.6, -0.0, -133.0, 167, 281475247980772)
	spawnMobile("space_lok", "salvage_bandit", 300, -115.5, 0.1, -132.4, -90, 281475247980773)

	--circle room and hallway number 7 on dev map	
	spawnMobile("space_lok", "salvage_bandit", 300, -131.1, -0.0, -149.4, 2, 281475247980775)
	spawnMobile("space_lok", "salvage_bandit", 300, -125.0, 0.1, -156.2, -34, 281475247980775)
	spawnMobile("space_lok", "salvage_bandit", 300, -137.4, 0.1, -155.7, 22, 281475247980775)
	spawnMobile("space_lok", "salvage_bandit", 300, -130.9, 0.0, -133.1, 90, 281475247980774)
	spawnMobile("space_lok", "salvage_bandit", 300, -130.7, -0.1, -106.3, 177, 281475247980776)

	--hallway to circle room number 8 on dev map
	spawnMobile("space_lok", "salvage_bandit", 300, -154.9, 0.1, -100.2, 179, 281475247980778)
	spawnMobile("space_lok", "salvage_bandit", 300, -158.1, -0.0, -109.4, -91, 281475247980778)
	spawnMobile("space_lok", "salvage_bandit", 300, -160.4, 0.0, -122.5, 14, 281475247980778)
	spawnMobile("space_lok", "salvage_bandit", 300, -157.1, 0.1, -84.0, 77, 281475247980777)
	spawnMobile("space_lok", "salvage_bandit", 300, -146.5, 0.1, -78.2, 134, 281475247980777)

        --hallway number 9 on dev map
	spawnMobile("space_lok", "salvage_bandit", 300, -146.3,  0.1, -57.8,    179, 281475247980781)
	spawnMobile("space_lok", "salvage_bandit", 300, -134.2,  0.0, -50.0,   -89, 281475247980782)
	spawnMobile("space_lok", "salvage_bandit", 300, -46.3,  0.0, -38.0,    178, 281475247980781)

	--room 10, and hallways on dev map
	spawnMobile("space_lok", "salvage_bandit", 300, -162.5,  0.0, -37.9,    70, 281475247980784)
	spawnMobile("space_lok", "salvage_bandit", 300, -162.1,  0.0, -23.1,  -37, 281475247980784)
	spawnMobile("space_lok", "salvage_bandit", 300,  -155.0,  0.1, -12.2,   90, 281475247980784)
	spawnMobile("space_lok", "salvage_bandit", 300, -172.9,  0.0, -13.2,  -179, 281475247980784)
	spawnMobile("space_lok", "salvage_bandit", 300,  -172.8,  0.0, -25.2,   91, 281475247980784)
	spawnMobile("space_lok", "salvage_bandit", 300, -169.9, 0.0, -34.8, 38, 281475247980784)
	spawnMobile("space_lok", "salvage_bandit", 300, -173, 0.1, -56.8, 0, 281475247980787)
	spawnMobile("space_lok", "salvage_bandit", 300, -190.7, 0.1, -71.7, 92, 281475247980787)
	spawnMobile("space_lok", "salvage_bandit", 300, -160.3 , 0.0, 1.7, -178, 281475247980787)
	spawnMobile("space_lok", "salvage_bandit", 300, -173.1 , 0.1, 11.6, 179, 281475247980785)

        --room 11 all levels on dev map
	spawnMobile("space_lok", "salvage_bandit", 300, -115.2, 0.1, -50.0, -88, 281475247980758)
	spawnMobile("space_lok", "salvage_bandit", 300, -90.1, 0.1, -59.1, -1, 281475247980758)
	spawnMobile("space_lok", "salvage_bandit", 300, -78.9, 0.1, -50.1, 90, 281475247980758)
	spawnMobile("space_lok", "salvage_bandit", 300, -89.9, 0.1, -41.1, 178, 281475247980758)
	spawnMobile("space_lok", "salvage_bandit", 300, -119.2, 0.1, -71.2, 87, 281475247980758)
	spawnMobile("space_lok", "salvage_bandit", 300, -103.6, -0.1, -90.5, 174, 281475247980758)
	spawnMobile("space_lok", "salvage_bandit", 300, -75.5, 0.1, -90.4, 1, 281475247980758)
	spawnMobile("space_lok", "salvage_bandit", 300, -68.1, -6.8, -23.6, -152, 281475247980758)
	spawnMobile("space_lok", "salvage_bandit", 300, -90.1, -10.0, -27.1, -3, 281475247980758)
	spawnMobile("space_lok", "salvage_bandit", 300, -115.6, -4.4, -28.2, 117, 281475247980758)
	spawnMobile("space_lok", "salvage_bandit", 300, -83.0, -13.9, -45.3, -120, 281475247980758)
	spawnMobile("space_lok", "salvage_bandit", 300, -82.8, -13.9, -54.3, -58, 281475247980758)
	spawnMobile("space_lok", "commander_bastijit", 3600, -90.4, -13.9, -83.0, 169, 281475247980758)
	spawnMobile("space_lok", "salvage_bandit", 300, -96.2, -13.9, -55.7, 41, 281475247980758)
	spawnMobile("space_lok", "salvage_bandit", 300, -96.3, -13.9, -43.9, 134, 281475247980758)
	spawnMobile("space_lok", "salvage_bandit", 300, -92.7, -13.9, -68.5, -90, 281475247980758)
	spawnMobile("space_lok", "salvage_bandit", 300, -78.3, -13.9, -79.0, 140, 281475247980758)
	spawnMobile("space_lok", "salvage_bandit", 300, -103.9, -13.9, -78.7, 128, 281475247980758)
	
        --hallway 12 on dev map
	spawnMobile("space_lok", "salvage_bandit", 300, -29.4, -0.1, -48.9, 3, 281475247980752)
	spawnMobile("space_lok", "salvage_bandit", 300, -27.9, 0.1, -11.1, -178, 281475247980750)
	spawnMobile("space_lok", "salvage_bandit", 300, -7.3, -0.0, -28.1, -82, 281475247980751)
	spawnMobile("space_lok", "salvage_bandit", 300, -10.4, 0.7, -57.3, 40, 281475247980751)
	spawnMobile("space_lok", "salvage_bandit", 300, 0.7, -0.7, -57.2, -29, 281475247980751)

        --double circle number 13 on the dev map
	spawnMobile("space_lok", "salvage_bandit", 300, -87.6, 10.1, -18.7, 117, 281475247980758)
	spawnMobile("space_lok", "salvage_bandit", 300, -92.5, 10.1, -18.8, -137, 281475247980758)
	spawnMobile("space_lok", "salvage_bandit", 300, -88.9, 9.0, -0.4, 85, 281475247980757)
	spawnMobile("space_lok", "salvage_bandit", 300, -68.9, 3.0, 19.2, -5, 281475247980757)
	spawnMobile("space_lok", "salvage_bandit", 300, -90.0, 0.0, -38.4, 2, 281475247980757)
	spawnMobile("space_lok", "salvage_bandit", 300, -111.0, 3.0, 19.8, 0, 281475247980757)
	spawnMobile("space_lok", "salvage_bandit", 300, -107.9, 6.0, 8.3, -23, 281475247980757)
	spawnMobile("space_lok", "salvage_bandit", 300, -93.8, -0.3, 21.4, -33, 281475247980793)
	spawnMobile("space_lok", "salvage_bandit", 300, -87.0, -0.3, 12.9, -30, 281475247980793)
	spawnMobile("space_lok", "salvage_bandit", 300, -85.1, -0.3, 20.6, -121, 281475247980793)
	
        --hallway and clover room 14  on dev map
	spawnMobile("space_lok", "salvage_bandit", 300, -88.1, 0.0, 72.6, 81, 281475247980754)
	spawnMobile("space_lok", "salvage_bandit", 300, -67.8, -0.1, 73.9, 90, 281475247980754)
	spawnMobile("space_lok", "salvage_bandit", 300, -59.6, 0.2, 95.2, -93, 281475247980755)
	spawnMobile("space_lok", "salvage_bandit", 300, -77.9, -0.2, 99.7, 105, 281475247980755)
	spawnMobile("space_lok", "salvage_bandit", 300, -43.8, -0.0, 65.6, 179, 281475247980754)
	spawnMobile("space_lok", "salvage_bandit", 300, -56.8, 0.0, 42.7, 142, 281475247980754)
	spawnMobile("space_lok", "salvage_bandit", 300, -57.0, 0.0, 27.7, 178, 281475247980753)
	spawnMobile("space_lok", "salvage_bandit", 300,  -44.0, 0.0, 31.6, -40, 281475247980753)
	
        --room 15 on dev map
	spawnMobile("space_lok", "salvage_bandit", 300,  -28.6, 0.1, 17.9, -90, 281475247980748)
	spawnMobile("space_lok", "salvage_bandit", 300,  -30.9, 0.1, 8.3, -9.1, 281475247980748)
	spawnMobile("space_lok", "salvage_bandit", 300,  -17.7, 0.1, 20.6, 0, 281475247980748)
	spawnMobile("space_lok", "salvage_bandit", 300, -7.6, 0.1, 10.2, 64, 281475247980748)
	spawnMobile("space_lok", "salvage_bandit", 300, -5.6, 0.1, 30.8, -111, 281475247980748)

        --room 16 on dev map
	spawnMobile("space_lok", "salvage_bandit", 300, 16.0, 0.1, 32.0, 75, 281475247980749)
	spawnMobile("space_lok", "salvage_bandit", 300, 10.8, 0.1, 15.9, -70, 281475247980749)
	spawnMobile("space_lok", "salvage_bandit", 300, 16.9, 0.1, 7.7, -23, 281475247980749)

        --circle room and hallway 17 on dev map
	spawnMobile("space_lok", "salvage_bandit", 300, -15.1, 0.0, 46.4, -1, 281475247980747)
	spawnMobile("space_lok", "salvage_bandit", 300, -3.6, -0.0, 60.4, 60, 281475247980746)
	spawnMobile("space_lok", "salvage_bandit", 300, 10.3, 0.0, 56.5, -131, 281475247980745)
	spawnMobile("space_lok", "salvage_bandit", 300, 20.7, 0.0, 56.6, -24, 281475247980745)
	spawnMobile("space_lok", "salvage_bandit", 300, 20.3, 0.0, 64.3, -134, 281475247980745)
	spawnMobile("space_lok", "salvage_bandit", 300, 37.0, 0.0, 60.6, 90, 281475247980744)
	spawnMobile("space_lok", "salvage_bandit", 300, 47.7, 0.0, 50.2, -179, 281475247980744)

       --room 18 on the dev map
	spawnMobile("space_lok", "salvage_bandit", 300, 30.6, -0.0, 37.2, -126, 281475247980743)
	spawnMobile("space_lok", "salvage_bandit", 300, 34.6, -0.0, 27.2, 57, 281475247980743)
	spawnMobile("space_lok", "salvage_bandit", 300, 33.0, 0.0, 13.7, 146, 281475247980743)
	spawnMobile("space_lok", "salvage_bandit", 300, 61.7, -0.0, 21.6, -90, 281475247980743)
	spawnMobile("space_lok", "salvage_bandit", 300, 72.0, -0.0, 34.1, 126, 281475247980743)
	spawnMobile("space_lok", "salvage_bandit", 300, 71.8, -0.0, 9.3, 49, 281475247980743)
	spawnMobile("space_lok", "salvage_bandit", 300, 51.5, -0.0, 17.5, 90, 281475247980743)
	spawnMobile("space_lok", "salvage_bandit", 300, 51.7, -0.0, 26.5, 91, 281475247980743)

end		
function avatarScreenplay:notifyKeypadUsed(pKeypad, pPlayer, radialSelected)
	if (radialSelected == 20) then
		local player = LuaCreatureObject(pPlayer)
		local suiManager = LuaSuiManager()
		suiManager:sendKeypadSui(pKeypad, pPlayer, "avatarScreenplay", "keypadSuiCallback")
	end
	return 0
end

function avatarScreenplay:keypadSuiCallback(pCreature, pSui, cancelPressed, enteredCode, pressedButton)
local suiBox = LuaSuiBox(pSui)
	local pUsingObject = suiBox:getUsingObject()

	ObjectManager.withCreatureObject(pCreature, function(player)
		local objectID = LuaSceneObject(pUsingObject):getObjectID()
		local keypadIndex = readData(string.format("%#x", objectID) .. ":avatarScreenplay:keypad_index")
		local keypadCode = self.keypadCodes[keypadIndex]

		if (pressedButton == "enter") then
			if (tonumber(enteredCode) == keypadCode) then
				player:sendSystemMessage("You have successfully entered the code for this door.") 
				spHelper:givePermission(pCreature, "AvatarKeypad" .. keypadIndex)
				printf(keypadIndex)
			else
				player:sendSystemMessage("The number that you entered is not a valid code for this door.")
			end
		elseif (pressedButton == "slice") then
			if (player:hasSkill("combat_smuggler_slicing_01")) then
				player:sendSystemMessage("You have successfully hacked this terminal.") 
				spHelper:givePermission(pCreature, "AvatarKeypad" .. keypadIndex)
			else
				player:sendSystemMessage("You blew the slice on the keypad, you realize that the only way to reset it is to repair what damage you have done.") 
			end
		elseif (pressedButton == "keycard") then
			if (keypadIndex ~= 4 and self:hasGeoItem(pCreature, "object/tangible/loot/dungeon/geonosian_mad_bunker/passkey.iff")) then
				self:removeGeoItem(pCreature, "object/tangible/loot/dungeon/geonosian_mad_bunker/passkey.iff")
				player:sendSystemMessage("You have successfully used a keycard on this door.") 
				spHelper:givePermission(pCreature, "AvatarKeypad" .. keypadIndex)
			elseif (keypadIndex == 4 and self:hasGeoItem(pCreature, "object/tangible/loot/dungeon/geonosian_mad_bunker/engineering_key.iff")) then
				self:removeGeoItem(pCreature, "object/tangible/loot/dungeon/geonosian_mad_bunker/engineering_key.iff")
				player:sendSystemMessage("You have successfully used a keycard on this door.") 
				spHelper:givePermission(pCreature, "AvatarKeypad" .. keypadIndex)
			end
		end
	end)
	return 0
end

function avatarScreenplay:notifyEnteredAvatar(pBuilding, pPlayer)
	ObjectManager.withCreatureObject(pPlayer, function(player)
		if (player:isAiAgent()) then
			return 0
		end

		for i = 1, #self.lockedCells, 1 do
			spHelper:removePermission(pPlayer, "AvatarKeypad" .. i)
		end
		player:sendSystemMessage("The Security systems on the Platform have been cycled and reset.") 
	end)
	return 0
end	

function avatarScreenplay:respawnDebris(pDebris)
	ObjectManager.withSceneObject(pDebris, function(debris)
		local index = readData(string.format("%#x",debris:getObjectID()) .. ":avatarScreenplay:debris_index")
		local debrisData = self.debris[index]
		local pDebrisnew = spawnSceneObject("space_lok", debrisData.template, debrisData.x, debrisData.z, debrisData.y, debrisData.cell, 1, 0, 0, 0)
		ObjectManager.withSceneObject(pDebrisnew, function(debrisnew)
			writeData(string.format("%#x",debrisnew:getObjectID()) .. ":avatarScreenplay:debris_index", index)
			createObserver(OBJECTDESTRUCTION, "avatarScreenplay", "notifyDebrisDestroyed", pDebrisnew)
		end)
	end)
	return 0
end

function avatarScreenplay:notifyDebrisDestroyed(pDebris, pPlayer)
	ObjectManager.withSceneObject(pDebris, function(debris)
		local debrisData = self.debris[readData(string.format("%#x",debris:getObjectID()) .. ":avatarScreenplay:debris_index")]
		debris:destroyObjectFromWorld()
		createEvent(240000, "avatarScreenplay", "respawnDebris", pDebris)
	end)

	return 0
end	

		

	  


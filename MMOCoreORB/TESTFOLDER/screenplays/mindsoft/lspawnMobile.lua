--API Name: List Spawn Mobile
--By: Mindsoft
--Purpose: spawn random mobile from given list and pass to rspawn
--Usage: lspawnMobile(String zoneName, Table mobileTemplates, Void, float x, float z, float y, float heading, unsigned long parentID, int SpawnRange, int spawnCount )

----Spawns a random mobile template from the specified mobile template table, without respawn, at a random position within range and location given, with the specified direction in Euler units, in the specified container, within area of range, specified number of times.

lspawnMobile=function(zoneName, spawnList, respawnTimer, x, z, y, heading, parentID, spawnRange, spawnCount, ai)
	--print("lspawn start")	
	local ID = ""	
	local listCount = table.getn(spawnList) --get size of<spawnList> store in<listCount>
	local loops = 0
	local listID = {}
	repeat
		loops = loops + 1
		local selected = math.random(1,listCount) --using<listcount> get random mobile<selected>
		local spawn = spawnList[selected]
		--(zoneName, mobileTemplate, respawnTimer, x, z, y, heading, parentID, spawnRange)
		--print("lspawn -passing rspawn the info")
		--print("zoneName", "mobile", "timer", "x", "z", "y", "heading", "parentID", "spawnRange")
		--print(zoneName, spawn, 0, x, z, y, heading, parentID, spawnRange)
		ID = rspawnMobile(zoneName, spawn, respawnTimer, x, z, y, heading, parentID, spawnRange, ai)
		table.insert(listID,ID)
	until loops == spawnCount --loop until specified<spawnCount> is reached
	--print("lspawn -end")
	return listID
end

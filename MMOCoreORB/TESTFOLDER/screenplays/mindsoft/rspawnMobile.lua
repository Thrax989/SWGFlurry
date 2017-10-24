--API Name: Range Spawn Mobile
--By: Mindsoft
--Purpose: spawn mobile within random range<spawnRange> from location specified<x,y>
--Usage: lspawnMobile=function(zoneName,  mobileTemplate, respawnTimer, x, z, y, heading, parentID, spawnRange)

-- spawnMobile(String zoneName, String mobileTemplate, int respawnTimer, float x, float z, float y, float heading, unsigned long parentID)
---Spawns a mobile of the specified mobile template, at the specified respawn interval, at the specified position, with the specified direction in Euler units, in the specified container.

--This code adds a random spawn area to it in the form of:
---rspawnMobile(String zoneName, String mobileTemplate, int respawnTimer, float x, float z, float y, float heading, unsigned long parentID, int SpawnRange)
----Spawns a mobile of the specified mobile template, at the specified respawn interval, at the specified position, with the specified direction in Euler units, in the specified container, within area of range.

rspawnMobile = function(zone, mobile, respawn, x, z, y, heading, parentID, spawnRange, ai)
	--print("rspawnMobile started:")
	--print("spawnRange is :",spawnRange)
	--print(zone, mobile, respawn, x, z, y, heading, parentID, spawnRange, ai)
	local doubleRange = spawnRange * 2 --get 2x givenNumber for range to be used
	local rolledX = getRandomNumber(1,doubleRange) --using range get random number
	local rolledY = getRandomNumber(1,doubleRange) --using range get random number
	local changeX = spawnRange - rolledX --subract rolled from given-number<spawnRange> to get change in x
	local changeY = spawnRange - rolledY --subract rolled from given-number<spawnRange> to get change in y

	--assigns the adjusted spawn locations and prints it to console
	local newx = x + changeX
	local newy = y + changeY
	
	--print("\n Spawning @:")
	--print(zone, mobile, respawn, newx, z, newy, heading, parentID)
	--spawn object and store its object id in variable<ID>
	local pMobile = spawnMobile(zone, mobile, respawn, newx, z, newy, heading, parentID)
	if ai ~= nil then
		if (pMobile ~= nil and CreatureObject(pMobile):isAiAgent()) then
			AiAgent(pMobile):setAiTemplate(ai)
		end
	end
	--print("rspawnMobile ended")
	return pMobile --return the spawned Mobile object ID.
end


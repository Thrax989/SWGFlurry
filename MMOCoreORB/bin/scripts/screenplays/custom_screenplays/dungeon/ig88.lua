
ig88ScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "ig88ScreenPlay",

	igGuards = {
		{ 6.5, 0, -18 },
		{ -6.5, 0, -18 },
		{ -6.5, 0, -11 },
		{ 0, 0, -11 },
		{ 6.5, 0, -11 },
		{ 0, 0, -23 }
	}
}
 
registerScreenPlay("ig88ScreenPlay", true)
 
function ig88ScreenPlay:start()
	if (isZoneEnabled("dungeon2")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end



function ig88ScreenPlay:spawnSceneObjects()





end


function ig88ScreenPlay:spawnMobiles()
	

	--spawnMobile("dungeon2", "magnaguard", 300, -23, 0, 6.3, 45, 14200863)
	--spawnMobile("dungeon2", "magnaguard", 300, 23, 0, 6.3, -45, 14200863)
	--spawnMobile("dungeon2", "magnaguard", 300, -23, 0, 0, 90, 14200863)
	--spawnMobile("dungeon2", "magnaguard", 300, 23, 0, 0, -90, 14200863)
	--spawnMobile("dungeon2", "hk77", 300, -3.5, 0, -1, 0, 14200863)
	--spawnMobile("dungeon2", "hk77", 300, 3.5, 0, -1, 0, 14200863)
	--spawnMobile("dungeon2", "hk77", 300, 0, 0, 0, 0, 14200863)

	self:respawnIG88()

	

end


function ig88ScreenPlay:respawnIG88()
	local pIG88 = spawnMobile("dungeon2", "ig_88_rocket", 3600, 0, 0, -18, 0, 14200863)


	if (pIG88 ~= nil) then
		createObserver(STARTCOMBAT, "ig88ScreenPlay", "spawnGuards", pIG88)

	end
end


function ig88ScreenPlay:spawnGuards(pIG88)
	if (pIG88 == nil or CreatureObject(pIG88):isDead()) then
		return 1
	end

	spatialChat(pIG88, "I think... therefore I am!")

	for i = 1, #self.igGuards, 1 do
		local guardID = readData("igGuard:" .. i)

		local pGuard = getSceneObject(guardID)

		if (pGuard == nil or CreatureObject(pGuard):isDead()) then
			local guardData = self.igGuards[i]
			pGuard = spawnMobile("dungeon2", "ig106", 0, guardData[1], guardData[2], guardData[3], 0, 14200863)

			if (pGuard ~= nil) then
				writeData("igGuard:" .. i, SceneObject(pGuard):getObjectID())
			end
		end
	end

	return 0
end

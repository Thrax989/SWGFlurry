avatarPlatformScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("avatarPlatformScreenPlay", true)

function avatarPlatformScreenPlay:start()
	if (isZoneEnabled("dungeon2")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function avatarPlatformScreenPlay:spawnSceneObjects()

end

function avatarPlatformScreenPlay:spawnMobiles()



end

hkArmyScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "hkArmyScreenPlay",


}

registerScreenPlay("hkArmyScreenPlay", true)

function hkArmyScreenPlay:start()
	if (isZoneEnabled("mustafar")) then
		self:spawnMobiles()

	end
end

function hkArmyScreenPlay:spawnMobiles()
--[[
	spawnMobile("mustafar", "hk47", 3600, 3455, 74.8, 1004.9, -166, 0)

	spawnMobile("mustafar", "hk77", 3600, 3410, 74.8, 820, 90, 0)
	spawnMobile("mustafar", "hk77", 3600, 3410, 74.8, 825, 90, 0)
	spawnMobile("mustafar", "hk77", 3600, 3410, 74.8, 830, 90, 0)
	spawnMobile("mustafar", "hk77", 3600, 3410, 74.8, 835, 90, 0)
	spawnMobile("mustafar", "hk77", 3600, 3410, 74.8, 840, 90, 0)

	spawnMobile("mustafar", "hk77", 3600, 3415, 74.8, 820, 90, 0)
	spawnMobile("mustafar", "hk77", 3600, 3415, 74.8, 825, 90, 0)
	spawnMobile("mustafar", "hk77", 3600, 3415, 74.8, 830, 90, 0)
	spawnMobile("mustafar", "hk77", 3600, 3415, 74.8, 835, 90, 0)
	spawnMobile("mustafar", "hk77", 3600, 3415, 74.8, 840, 90, 0)

	spawnMobile("mustafar", "magnaguard", 3600, 3501.1, 74.8, 693.6, 5, 0)
	spawnMobile("mustafar", "magnaguard", 3600, 3485, 74.8, 716, 5, 0)
	spawnMobile("mustafar", "magnaguard", 3600, 3510, 74.8, 730, 166, 0)
	spawnMobile("mustafar", "magnaguard", 3600, 3520, 74.8, 696, 18, 0)
	]]--


end

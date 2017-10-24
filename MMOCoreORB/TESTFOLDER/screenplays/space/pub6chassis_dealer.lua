local Logger = require("utils.logger")
require("utils.helpers")


-- Key is ship name, values are blueprint name, blueprint path, and deed path.
ships = {
	hutt_light_s01 = {name = "Scyk Light Fighter Chassis Blueprints, Style 1", blueprint = "object/tangible/ship/components/chassis/hutt_light_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/hutt_light_s01_deed.iff"},
	z95 = {name = "Z-95 Chassis Blueprints", blueprint = "object/tangible/ship/components/chassis/z95_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/z95_deed.iff"},
	tie_light_duty = {name = "TIE Light Duty Fighter Chassis Blueprints", blueprint = "object/tangible/ship/components/chassis/tie_light_duty_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/tie_light_duty_deed.iff"},
	hutt_light_s02 = {name = "Scyk Light Fighter Chassis Blueprints, Style 2", blueprint = "object/tangible/ship/components/chassis/hutt_light_s02_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/hutt_light_s02_deed.iff"},
	blacksun_heavy_s01 = {name = "Rihkxyrk Attack Ship Chassis Blueprints, Style 1", blueprint = "object/tangible/ship/components/chassis/blacksun_heavy_s01_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/blacksun_heavy_s01_deed.iff"},
	blacksun_heavy_s02 = {name = "Rihkxyrk Attack Ship Chassis Blueprints, Style 2", blueprint = "object/tangible/ship/components/chassis/blacksun_heavy_s02_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/blacksun_heavy_s02_deed.iff"},
	blacksun_heavy_s03 = {name = "Rihkxyrk Attack Ship Chassis Blueprints, Style 3", blueprint = "object/tangible/ship/components/chassis/blacksun_heavy_s03_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/blacksun_heavy_s03_deed.iff"},
	blacksun_heavy_s04 = {name = "Rihkxyrk Attack Ship Chassis Blueprints, Style 4", blueprint = "object/tangible/ship/components/chassis/blacksun_heavy_s04_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/blacksun_heavy_s04_deed.iff"},
	blacksun_light_s01 = {name = "Kihraxz Light Fighter Chassis Blueprints, Style 1", blueprint = "object/tangible/ship/components/chassis/blacksun_light_s01_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/blacksun_light_s01_deed.iff"},
	blacksun_light_s02 = {name = "Kihraxz Light Fighter Chassis Blueprints, Style 2", blueprint = "object/tangible/ship/components/chassis/blacksun_light_s02_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/blacksun_light_s02_deed.iff"},
	blacksun_light_s03 = {name = "Kihraxz Light Fighter Chassis Blueprints, Style 3", blueprint = "object/tangible/ship/components/chassis/blacksun_light_s03_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/blacksun_light_s03_deed.iff"},
	blacksun_light_s04 = {name = "Kihraxz Light Fighter Chassis Blueprints, Style 4", blueprint = "object/tangible/ship/components/chassis/blacksun_light_s04_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/blacksun_light_s04_deed.iff"},
	blacksun_medium_s01 = {name = "Ixiyen Fast Attack Craft Chassis Blueprints, Style 1", blueprint = "object/tangible/ship/components/chassis/blacksun_medium_s01_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/blacksun_medium_s01_deed.iff"},
	blacksun_medium_s02 = {name = "Ixiyen Fast Attack Craft Chassis Blueprints, Style 2", blueprint = "object/tangible/ship/components/chassis/blacksun_medium_s02_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/blacksun_medium_s02_deed.iff"},
	blacksun_medium_s03 = {name = "Ixiyen Fast Attack Craft Chassis Blueprints, Style 3", blueprint = "object/tangible/ship/components/chassis/blacksun_medium_s03_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/blacksun_medium_s03_deed.iff"},
	blacksun_medium_s04 = {name = "Ixiyen Fast Attack Craft Chassis Blueprints, Style 4", blueprint = "object/tangible/ship/components/chassis/blacksun_medium_s04_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/blacksun_medium_s04_deed.iff"},
	firespray = {name = "Firespray Chassis Blueprints", blueprint = "object/tangible/ship/components/chassis/firespray_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/firespray_deed.iff"},
	hutt_heavy_s01 = {name = "Kimogila Chassis Blueprints, Style 1", blueprint = "object/tangible/ship/components/chassis/hutt_heavy_s01_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/hutt_heavy_s01_deed.iff"},
	hutt_heavy_s02 = {name = "Kimogila Chassis Blueprints, Style 2", blueprint = "object/tangible/ship/components/chassis/hutt_heavy_s02_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/hutt_heavy_s02_deed.iff"},
	hutt_medium_s01 = {name = "Dunelizard Chassis Blueprints, Style 1", blueprint = "object/tangible/ship/components/chassis/hutt_medium_s01_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/hutt_medium_s01_deed.iff"},
	hutt_medium_s02 = {name = "Dunelizard Chassis Blueprints, Style 2", blueprint = "object/tangible/ship/components/chassis/hutt_medium_s02_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/hutt_medium_s02_deed.iff"},
	tieadvanced_chassis = {name = "TIE Advanced Chassis Blueprints", blueprint = "object/tangible/ship/components/chassis/tieadvanced_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/tieadvanced_deed.iff"},
	tieaggressor_chassis = {name = "TIE Aggressor Chassis Blueprints", blueprint = "object/tangible/ship/components/chassis/tieaggressor_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/tieaggressor_deed.iff"},
	tiebomber_chassis = {name = "TIE Bomber Chassis Blueprints", blueprint = "object/tangible/ship/components/chassis/tiebomber_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/tiebomber_deed.iff"},
	tiefighter_chassis = {name = "TIE Fighter Chassis Blueprints", blueprint = "object/tangible/ship/components/chassis/tiefighter_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/tiefighter_deed.iff"},
	tieinterceptor_chassis = {name = "TIE Interceptor Chassis Blueprints", blueprint = "object/tangible/ship/components/chassis/tieinterceptor_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/tieinterceptor_deed.iff"},
	tieoppressor_chassis = {name = "TIE Oppressor Chassis Blueprints", blueprint = "object/tangible/ship/components/chassis/tieoppressor_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/tieoppressor_deed.iff"},
	tie_in_chassis = {name = "TIE/In Chassis Blueprints", blueprint = "object/tangible/ship/components/chassis/tie_in_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/tie_in_deed.iff"},
--	awing = {name = "A-Wing", blueprint = "object/tangible/ship/components/chassis/awing_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/awing_deed.iff"},
	bwing = {name = "B-Wing Chassis Blueprints", blueprint = "object/tangible/ship/components/chassis/bwing_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/bwing_deed.iff"},	
--	xwing_chassis = {name = "X-Wing Chassis Blueprints", blueprint = "object/tangible/ship/components/chassis/xwing_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/xwing_deed.iff"},
--	ywing = {name = "Y-Wing Chassis Blueprints", blueprint = "object/tangible/ship/components/chassis/ywing_chassis_token.iff", deedObject = "object/tangible/ship/crafted/chassis/ywing_deed.iff"},

	
}
	
ChassisDealer = Object:new {}

function ChassisDealer.playerHasValidBlueprints(pCreatureObject)
	if (ChassisDealer.getValidBlueprints(pCreatureObject) ~= "") then
		return true
	elseif (ChassisDealer.getValidBlueprints(pCreatureObject) == "") then
		return false
	end
end

function ChassisDealer.getValidBlueprints(pCreatureObject)
	if (pCreatureObject == nil) then
		return {}
	end

	local pInventory = SceneObject(pCreatureObject):getSlottedObject("inventory")
	local returnBluePrints = {}

	if (pInventory == nil) then
		return returnBluePrints
	end

	foreach(ships, function(theShip)
		local pObject = getContainerObjectByTemplate(pInventory, theShip.blueprint, true)
		if (pObject ~= nil) then
			local string = SceneObject(pObject):getCustomObjectName()
			if (string ~= nil and string ~= "") then
				table.insert(returnBluePrints, string)
			end
		end
	end)

	return returnBluePrints
end

function ChassisDealer.getPathByName(objectName)
	local returnString = nil

	foreach(ships, function(theShip)
		if (string.find(objectName, theShip.name) ~= nil) then
			returnString = theShip.blueprint
		end
	end)

	return returnString
end

function ChassisDealer.getChassisFromBlueprint(objectPath)
	local returnString = nil

	foreach(ships, function(theShip)
		if (theShip.blueprint == objectPath) then
			returnString = theShip.deedObject
		end
	end)

	return returnString
end

return ChassisDealer

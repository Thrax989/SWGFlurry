local ObjectManager = require("managers.object.object_manager")
--Light Jedi Enclave (-5575, 4910)
Yavin4LightEnclaveScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	cellIds = {
	-- thm_yavn_jedi_enclave_light
		outside = 8525417,
		entrancehall1 = 8525444,
		entrancehall2 = 8525443,
		entrancehall3 = 8525442,
		lobby = 8525439,
		traininghall = 8525440,
		trainingroom = 8525441,
		auditorium = 8525418,
		curvehall1 = 8525434,
		curvehall2 = 8525435,
		curvehall3 = 8525436,
		curvehall4 = 8525437,
		curvehall5 = 8525438,
		tier1hall1 = 8525421,
		tier1room = 8525420,
		tier1hall2 = 8525419,
		tier2hall1 = 8525424,
		tier2room = 8525423,
		tier2hall2 = 8525422,
		tier3hall1 = 8525433,
		tier3room = 8525432,
		tier3hall2 = 8525431,
		tier4hall1 = 8525430,
		tier4room = 8525429,
		tier4hall2 = 8525428,
		tier5hall1 = 8525427,
		tier5room = 8525426,
		tier5hall2 = 8525425,

	},

	targetItems = {
		{ "object/tangible/terminal/terminal_light_enclave_voting.iff",
			"object/tangible/terminal/terminal_light_enclave_challenge.iff" },
		{ "object/tangible/furniture/jedi/frn_all_light_throne.iff" },
	},

	doorData = {
		{ worldX = -5575.9, worldZ = 87.8, worldY = 4911.7, cellAccess = 8525444 }, -- Entrance
		{ worldX = -5565.0, worldZ = 63.7, worldY = 4933.6, cellAccess = 8525441 }, -- training room
		{ worldX = -5530.7, worldZ = 65.9, worldY = 4878.5, cellAccess = 8525420 }, -- tier1room
		{ worldX = -5496.8, worldZ = 65.9, worldY = 4878.5, cellAccess = 8525423 }, -- tier2room
		{ worldX = -5530.8, worldZ = 65.9, worldY = 4945.2, cellAccess = 8525432 }, -- tier3room
		{ worldX = -5496.6, worldZ = 65.9, worldY = 4945.3, cellAccess = 8525429 }, -- tier4room
		{ worldX = -5476.3, worldZ = 65.9, worldY = 4911.8, cellAccess = 8525426 }, -- tier5room
	},

	states = {
		2,--Enclave eligible
		4,--Sentinel rank
		8,--Consular rank
		16,--Arbiter rank
		32,--Council Member
		64,--Council Leader
		128--has cloned to Enclave
	},

	doorMessages = {
		{ unlock = "", lock = "@pvp_rating:enclave_deny_entry" }, -- "A strange force repels you and keeps you from entering."
		{ unlock = "", lock = "@pvp_rating:enclave_deny_pet_entry"} -- "As you are not permitted to bring any pets or hirelings into the enclave. They have been returned to your data pad for you."
	},

	buildingID = 8525417,

	forceField = { x = -5574.5, z = 87.8, y = 4900.2 },
	forceRoom = { x = -0.0, z = -15.1, y = 24.4 },

	sensitive = "force_title_jedi_novice",
	initiate = "force_title_jedi_rank_01",
	padawan = "force_title_jedi_rank_02",
	knight = "force_title_jedi_rank_03",
	guardian = "force_title_jedi_rank_04",
	master = "force_title_jedi_master",
	rankings = "force_rank_light",
	member = "force_rank_light_novice",
	sentinelone = "force_rank_light_rank_01",
	sentineltwo = "force_rank_light_rank_02",
	sentinelthree = "force_rank_light_rank_03",
	sentinelfour = "force_rank_light_rank_04",
	consularone = "force_rank_light_rank_05",
	consulartwo = "force_rank_light_rank_06",
	consularthree = "force_rank_light_rank_07",
	arbiterone = "force_rank_light_rank_08",
	arbitertwo = "force_rank_light_rank_09",
	councilmember = "force_rank_light_rank_10",
	councilleader = "force_rank_light_master",
}

registerScreenPlay("Yavin4LightEnclaveScreenPlay", true)

function Yavin4LightEnclaveScreenPlay:start()
	if (isZoneEnabled("yavin4")) then

		self:spawnObjects()
	end
end

function Yavin4LightEnclaveScreenPlay:spawnObjects()
	local spawnedSceneObject = LuaSceneObject(nil)
	local spawnedPointer

	local pActiveArea = spawnActiveArea("yavin4", "object/active_area.iff", -5575.9, 87.8, 4911.7, 5, 8525444)
	if pActiveArea ~= nil then
		createObserver(ENTEREDAREA, "Yavin4LightEnclaveScreenPlay", "notifyEnteredEnclave", pActiveArea)
	end

	local pTieroneArea = spawnActiveArea("yavin4", "object/active_area.iff", -5530.7, 65.9, 4878.5, -155, 8525420)
	if pTieroneArea ~= nil then
		createObserver(ENTEREDAREA, "Yavin4LightEnclaveScreenPlay", "notifyEnteredTierOneRoom", pTieroneArea)
	end

	local pTiertwoArea = spawnActiveArea("yavin4", "object/active_area.iff", -5496.8, 65.9, 4878.5, 150, 8525423)
	if pTiertwoArea ~= nil then
		createObserver(ENTEREDAREA, "Yavin4LightEnclaveScreenPlay", "notifyEnteredTierTwoRoom", pTiertwoArea)
	end

	local pTierthreeArea = spawnActiveArea("yavin4", "object/active_area.iff", -5530.8, 65.9, 4945.2, -33, 8525432)
	if pTierthreeArea ~= nil then
		createObserver(ENTEREDAREA, "Yavin4LightEnclaveScreenPlay", "notifyEnteredTierThreeRoom", pTierthreeArea)
	end

	local pTierfourArea = spawnActiveArea("yavin4", "object/active_area.iff", -5496.6, 65.9, 4945.3, 25, 8525429)
	if pTierfourArea ~= nil then
		createObserver(ENTEREDAREA, "Yavin4LightEnclaveScreenPlay", "notifyEnteredTierFourRoom", pTierfourArea)
	end

	local pTierfiveArea = spawnActiveArea("yavin4", "object/active_area.iff", -5476.3, 65.9, 4911.8, 80, 8525426)
	if pTierfiveArea ~= nil then
		createObserver(ENTEREDAREA, "Yavin4LightEnclaveScreenPlay", "notifyEnteredTierFiveRoom", pTierfiveArea)
	end

        --FRS shrien
	spawnSceneObject("yavin4", "object/tangible/quest/col_jedi_robi_light_jedi_controller.iff", 8.21562, -18.8883, 32.1547, 8525439, 0.996097, 0, -0.0882692, 0)
        spawnSceneObject("yavin4", "object/tangible/quest/col_jedi_robi_light_jedi_controller.iff", -8.1815, -18.8883, 32.1397, 8525439, 0.998702, 0, -0.0509423, 0)
 
end

function Yavin4LightEnclaveScreenPlay:notifyEnteredEnclave(pArea, pLifeform)
	return ObjectManager.withCreatureObject(pLifeform, function(lifeform)
	if (pLifeform == nil) then
		return 0
	end

	if (SceneObject(pLifeform):isPlayerCreature()) then

		if (not CreatureObject(pLifeform):hasSkill(self.knight) or not CreatureObject(pLifeform):isRebel()) then
			CreatureObject(pLifeform):sendSystemMessage("@pvp_rating:enclave_deny_entry")
			CreatureObject(pLifeform):teleport(self.forceField.x, self.forceField.z, self.forceField.y, 0)
		else
			CreatureObject(pLifeform):sendSystemMessage("The Force is with you.")
		end
	end

	if (SceneObject(pLifeform):isAiAgent() and AiAgent(pLifeform):isPet()) then
	local pPetowner = CreatureObject(pLifeform):getOwner()
		AiAgent(pLifeform):clearCombatState()
		AiAgent(pLifeform):doDespawn()
		CreatureObject(pPetowner):sendSystemMessage("@pvp_rating:enclave_deny_pet_entry")
	end

	if (not SceneObject(pLifeform):isPlayerCreature()) and (SceneObject(pLifeform):isAiAgent() and not AiAgent(pLifeform):isPet()) then
		AiAgent(pLifeform):clearCombatState()
		AiAgent(pLifeform):leash()
	end

	return 0
    end)
end

function Yavin4LightEnclaveScreenPlay:notifyEnteredTierOneRoom(pArea, pJedi)
	return ObjectManager.withCreaturePlayerObject(pJedi, function(playerObject)

	if (not CreatureObject(pJedi):hasSkill(self.sentinelfour)) then
		CreatureObject(pJedi):sendSystemMessage("@pvp_rating:enclave_deny_entry")
		CreatureObject(pJedi):teleport(self.forceRoom.x, self.forceRoom.z, self.forceRoom.y, 8525418)
	else
		CreatureObject(pJedi):sendSystemMessage("The Council welcomes you.")
	end

	return 0
    end)
end

function Yavin4LightEnclaveScreenPlay:notifyEnteredTierTwoRoom(pArea, pJedi)
	return ObjectManager.withCreaturePlayerObject(pJedi, function(playerObject)

	if (not CreatureObject(pJedi):hasSkill(self.consularthree)) then
		CreatureObject(pJedi):sendSystemMessage("@pvp_rating:enclave_deny_entry")
		CreatureObject(pJedi):teleport(self.forceRoom.x, self.forceRoom.z, self.forceRoom.y, 8525418)
	else
		CreatureObject(pJedi):sendSystemMessage("The Council welcomes you further.")
	end

	return 0
    end)
end

function Yavin4LightEnclaveScreenPlay:notifyEnteredTierThreeRoom(pArea, pJedi)
	return ObjectManager.withCreaturePlayerObject(pJedi, function(playerObject)

	if (not CreatureObject(pJedi):hasSkill(self.arbitertwo)) then
		CreatureObject(pJedi):sendSystemMessage("@pvp_rating:enclave_deny_entry")
		CreatureObject(pJedi):teleport(self.forceRoom.x, self.forceRoom.z, self.forceRoom.y, 8525418)
	else
		CreatureObject(pJedi):sendSystemMessage("The Council welcomes you even further.")
	end

	return 0
    end)
end

function Yavin4LightEnclaveScreenPlay:notifyEnteredTierFourRoom(pArea, pJedi)
	return ObjectManager.withCreaturePlayerObject(pJedi, function(playerObject)

	if (not CreatureObject(pJedi):hasSkill(self.councilmember)) then
		CreatureObject(pJedi):sendSystemMessage("@pvp_rating:enclave_deny_entry")
		CreatureObject(pJedi):teleport(self.forceRoom.x, self.forceRoom.z, self.forceRoom.y, 8525418)
	else
		CreatureObject(pJedi):sendSystemMessage("The Council welcomes you into a higher tier.")
	end

	return 0
    end)
end

function Yavin4LightEnclaveScreenPlay:notifyEnteredTierFiveRoom(pArea, pJedi)
	return ObjectManager.withCreaturePlayerObject(pJedi, function(playerObject)

	if (not CreatureObject(pJedi):hasSkill(self.councilleader)) then
		CreatureObject(pJedi):sendSystemMessage("@pvp_rating:enclave_deny_entry")
		CreatureObject(pJedi):teleport(self.forceRoom.x, self.forceRoom.z, self.forceRoom.y, 8525418)
	else
		CreatureObject(pJedi):sendSystemMessage("The Council welcomes you, Master Jedi.")
	end

	return 0
    end)
end

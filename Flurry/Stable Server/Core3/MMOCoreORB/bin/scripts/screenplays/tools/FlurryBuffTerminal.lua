FlurryBuffTerminal = ScreenPlay:new {
	numberOfActs = 1,
	healingFee = 0, -- Optional fee (in Credits) for healing wounds and battle fatigue
	buffPets = 0, -- 0 = No, 1 = Yes. Will buff all the player's active pets Health/Action/Mind with the same boost as the player.
	buffPetSecondaryStats = 0, -- 0 = No, 1 = Yes. Will also buff the pet's secondary stats.
	buffs = {
		-- Legend: {name, price, duration in hours, health, strength, constitution, action, quickness, stamina, mind, focus, willpower},
		{"Starter Buff", 0, 2, 650, 650, 650, 650, 650, 650, 650, 650, 650},
		{"Basic Buff", 5000, 2, 800, 800, 800, 850, 800, 800, 800, 800, 800},
		{"Advanced Buff", 10000, 3, 1200, 800, 800, 1200, 800, 800, 1000, 800, 800},
		{"Apply Uber Buff", 25000, 4, 2200, 2000, 2000, 2200, 2000, 2000, 1300, 1000, 1000},
	},
	termModel = "object/tangible/beta/beta_terminal_wound.iff",
	termName = "Medical Services Terminal",
	terminals = {
		--Corellia
		{planetName = "corellia", x = -180.496, z = 28, y = -4845.4, ow = 0.999597, oy = -0.0284066}, --Coronet near starport
		{planetName = "corellia", x = -5049.64, z = 21, y = -2304.52, ow = 0.937972, oy = 0.346712},  --Tyrena near starport
		{planetName = "corellia", x = 3330.38, z = 308, y = 5517.14, ow = 0.956783, oy = 0.290803}, --Doaba Guerfel near starport
		{planetName = "corellia", x = -3128.1, z = 31, y = 2809.5, ow = -0.0561584, oy = 0.998422}, --Kor Vella near shuttleport

		--Dantooine
		{planetName = "dantooine", x = 1585.68, z = 4, y = -6368.95, ow = 0.0157754, oy = 0.999876}, --Agro Outpost
		{planetName = "dantooine", x = -629.417, z = 3, y = 2481.24, ow = -0.687696, oy = 0.725999}, --Mining Outpost
		{planetName = "dantooine", x = -4221, z = 3, y = -2357, ow = 0.0270844, oy = 0.999633}, --Imperial Outpost

		--Dathomir
		{planetName = "dathomir", x = 592.612, z = 6, y = 3089.84, ow = 0.712705, oy = 0.701463}, --Trade Outpost
		{planetName = "dathomir", x = -67.6585, z = 18, y = -1595.3, ow = 0.949123, oy = 0.314904}, --Science Outpost

		--Endor
		{planetName = "endor", x = -963.537, z = 73, y = 1556.86, ow = -0.360002, oy = 0.932952}, --Smuggler's Outpost
		{planetName = "endor", x = 3240.5, z = 24, y = -3484.79, ow = -0.690367, oy = 0.723459}, --Research Outpost

		--Lok
		{planetName = "lok", x = 464.677, z = 8.75806, y = 5506.49, ow = 0.015506, oy = 0.999879}, -- Nym's near starport

		--Naboo
		{planetName = "naboo", x = 4824.53, z = 4.17, y = -4704.9, ow = -0.698509, oy = 0.715602}, -- Moenia near starport
		{planetName = "naboo", x = -4860.75, z = 6.48, y = 4179.6, ow = 0.309582, oy = -0.950873}, -- Theed near starport
		{planetName = "naboo", x = 5193.14, z = -192, y = 6680.25, ow = 0.999932, oy = -0.0116238}, -- Kaadara near starport
		{planetName = "naboo", x = 1442.51, z = 13, y = 2782.89, ow = -0.698509, oy = 0.715602}, -- Keren near starport

		--Rori
		{planetName = "rori", x = -5307.37, z = 80.1274, y = -2216.91, ow = -0.100263, oy = -0.994961}, --Narmle
		{planetName = "rori", x = 5370.22, z = 80, y = 5666.04, ow = 0.721974, oy = -0.69192}, --Restuss
		{planetName = "rori", x = 3672.91, z = 96, y = -6441.07, ow = 0.999623, oy = -0.0274543}, --Rebel Outpost
		
		--Talus
		{planetName = "talus", x = 4447.08, z = 2, y = 5286.96, ow = -0.0851417, oy = 0.996369}, --Nashal
		{planetName = "talus", x = 329.666, z = 6, y = -2924.69, ow = 0.721282, oy = 0.692641}, --Dearic
		{planetName = "talus", x = -2223, z = 20, y = 2310, ow = 0.721282, oy = 0.692641}, --Imperial Outpost

		--Tatooine
		{planetName = "tatooine", x = 1271.4, z = 7.70605, y = 2960.54, ow = 0.0436194, oy = 0.999048}, -- Mos Entha bank near starport
		{planetName = "tatooine", x = 1326.88, z = 7, y = 3466.45, ow = 0.707107, oy = 0.707107}, -- Mos Entha cloning facility
		{planetName = "tatooine", x = 1716.57, z = 7, y = 3187.24, ow = 0.0436194, oy = 0.999048}, -- Mos Entha eastern shuttleport
		{planetName = "tatooine", x = 1538.29, z = 7, y = 3460.2, ow = 0.0436194, oy = 0.999048}, -- Mos Entha northern hill
		{planetName = "tatooine", x = 1139.77, z = 7, y = 3019.46, ow = 0.707107, oy = 0.707107}, -- Mos Entha near starport
		{planetName = "tatooine", x = 3533.45, z = 5, y = -4792.05, ow = -0.67559, oy = 0.737277}, -- Mos Eisley near starport
		{planetName = "tatooine", x = 43.8562, z = 52, y = -5352.49, ow = 0.999048, oy = -0.0436194}, -- Anchorhead near shuttleport	
		{planetName = "tatooine", x = -5222.83, z = 75, y = -6585.29, ow = -0.67559, oy = 0.737277}, -- Wayfar near Cantina
		{planetName = "tatooine", x = -1273, z = 12, y = -3592, ow = -0.906308, oy = 0.422618}, -- Bestine near starport
		{planetName = "tatooine", x = -2904, z = 5, y = 2119, ow = -0.906308, oy = 0.422618}, -- Mos Espa near starport

		--Yavin4
		{planetName = "yavin4", x = -6917.18, z = 73, y = -5732.25, ow = 0.708587, oy = -0.705623}, --SW Outpost
		{planetName = "yavin4", x = 4069.07, z = 37, y = -6216.48, ow = -0.690493, oy = 0.723339}, --N Outpost
		{planetName = "yavin4", x = -293.367, z = 35, y = 4854.52, ow = 0.999974, oy = 0.00721678}, -- SE Outpost
	}
}

registerScreenPlay("FlurryBuffTerminal", true)

function FlurryBuffTerminal:start()
	-- Spawn terminals
	for i = 1, #self.terminals, 1 do
		local pTerminal = spawnSceneObject(self.terminals[i].planetName, self.termModel , self.terminals[i].x, self.terminals[i].z, self.terminals[i].y, 0, self.terminals[i].ow, 0, self.terminals[i].oy, 0)
		if (pTerminal ~= nil) then
			-- Add menu and custom name
			SceneObject(pTerminal):setObjectMenuComponent("FlurryBuffTerminalMenuComponent")
			SceneObject(pTerminal):setCustomObjectName(self.termName)
		end
	end
end


-- UI Window Functions

function FlurryBuffTerminal:openWindow(pCreatureObject, pUsingObject)
	local sui = SuiListBox.new("FlurryBuffTerminal", "defaultCallback")

	-- Using object ID, stored in PageData
	if (pUsingObject == nil) then
		sui.setTargetNetworkId(0)
	else
		sui.setTargetNetworkId(SceneObject(pUsingObject):getObjectID())
	end

	sui.setForceCloseDistance(16)

	sui.setTitle("Buff Terminal")
	
	local message = "Please select a service below. \n\nNotice: \nAll current buffs (of all types) will be removed when purchasing a buff from this terminal. Therefore, you should save your consumable buffs for after you've purchased a terminal buff."
	
	if (self.buffPets == 1) then
		message = message .. "\n\nAll of your currently active pets will also recieve a buff to their "
		
		if (self.buffPetSecondaryStats == 1) then 
			message = message .. "primary and secondary stats."
		else 
			message = message .. "primary stats."
		end
	else
		message = message .. "\n\nNo buffs will be applied to your pets."
	end
	
	sui.setPrompt(message)

	sui.add("Remove My Buffs and Empty My Stomach", "")
	sui.add("Remove Buffs from My Active Pets", "")
	
	local healMessage = "Heal My Wounds and Battle Fatigue"
	
	if (self.healingFee > 0) then
		healMessage = healMessage .. " (" .. tostring(self.healingFee) .. "cr)"
	end
	
	sui.add(healMessage, "")

	for i = 1, #self.buffs, 1 do
		sui.add("Apply " .. self.buffs[i][1] .. " (" .. tostring(self.buffs[i][2]) .. "cr/" .. tostring(self.buffs[i][3]) .. "h)", "")
	end

	sui.sendTo(pCreatureObject)
end

function FlurryBuffTerminal:defaultCallback(pPlayer, pSui, eventIndex, args)
	local cancelPressed = (eventIndex == 1)

	if (cancelPressed) then
		return
	end

	if (args == "-1") then
		CreatureObject(pPlayer):sendSystemMessage("No option was selected, please try again.")
		return
	end

	local selectedOption = tonumber(args) + 1
	
	if (selectedOption == 1) then
		self:removePlayerBuffs(pPlayer)
	elseif (selectedOption == 2) then
		self:removePetBuffs(pPlayer)
	elseif (selectedOption == 3) then
		self:healWounds(pPlayer)
	elseif (selectedOption > 3) then
		self:applyBuff(pPlayer, selectedOption - 3) -- The -3 is to compensate for the first four entries in the menu
	end
end


-- Buff Functions

function FlurryBuffTerminal:removePlayerBuffs(pPlayer)
	CreatureObject(pPlayer):removeBuffs()
	CreatureObject(pPlayer):emptyStomach()
	CreatureObject(pPlayer):sendSystemMessage("Your buffs have been removed and your stomach is now empty.")
end

function FlurryBuffTerminal:removePetBuffs(pPlayer)
	local numberOfPets = CreatureObject(pPlayer):getActivePetsSize()
		
	if (numberOfPets > 0) then
		for i = 1, numberOfPets, 1 do
			local pPet = CreatureObject(pPlayer):getActivePet(i - 1)
			CreatureObject(pPet):removeBuffs()
		end
		
		CreatureObject(pPlayer):sendSystemMessage("Your pet's buffs have been removed.")
	else
		CreatureObject(pPlayer):sendSystemMessage("You didn't have any pets out, so no buffs were removed. Please call a pet and try again.")
	end
end

function FlurryBuffTerminal:healWounds(pPlayer)
	local price = self.healingFee

	if (price > 0) then
		local playerCash = CreatureObject(pPlayer):getCashCredits()
		local playerBank = CreatureObject(pPlayer):getBankCredits()

		if (playerCash + playerBank < price) then
			CreatureObject(pPlayer):sendSystemMessage("Insufficient Funds: You require " .. tostring(self.healingFee) .. " credits in cash to use the healing service.")
			return
		end
		
		if (playerCash > price) then
			CreatureObject(pPlayer):subtractCashCredits(price)
		else
			local diff = price - playerCash
			CreatureObject(pPlayer):subtractCashCredits(playerCash)
			CreatureObject(pPlayer):setBankCredits(playerBank-diff)
		end		
	end

	for i = 0, 8 do
		CreatureObject(pPlayer):setWounds(i, 0)
	end
	
	CreatureObject(pPlayer):setShockWounds(0)
	CreatureObject(pPlayer):sendSystemMessage("Your wounds have been healed and your mind is at ease.")
end

function FlurryBuffTerminal:applyBuff(pPlayer, buffSelected)
	local duration = self.buffs[buffSelected][3] * 60  * 60
	local price = self.buffs[buffSelected][2]
	
	if (price > 0)then
		local playerCash = CreatureObject(pPlayer):getCashCredits()
		local playerBank = CreatureObject(pPlayer):getBankCredits()

		if (playerCash + playerBank < price) then
			CreatureObject(pPlayer):sendSystemMessage("Insufficient Funds: You require " .. tostring(self.healingFee) .. " credits in cash to use the healing service.")
			return
		end
		
		if (playerCash > price) then
			CreatureObject(pPlayer):subtractCashCredits(price)
		else
			local diff = price - playerCash
			CreatureObject(pPlayer):subtractCashCredits(playerCash)
			CreatureObject(pPlayer):setBankCredits(playerBank-diff)
		end	
	end
	
	CreatureObject(pPlayer):removeBuffs()
	CreatureObject(pPlayer):emptyStomach()
	
	CreatureObject(pPlayer):buffSingleStat("health", self.buffs[buffSelected][4], duration)
	CreatureObject(pPlayer):buffSingleStat("strength", self.buffs[buffSelected][5], duration)
	CreatureObject(pPlayer):buffSingleStat("constitution", self.buffs[buffSelected][6], duration)
	CreatureObject(pPlayer):buffSingleStat("action", self.buffs[buffSelected][7], duration)
	CreatureObject(pPlayer):buffSingleStat("quickness", self.buffs[buffSelected][8], duration)
	CreatureObject(pPlayer):buffSingleStat("stamina", self.buffs[buffSelected][9], duration)
	CreatureObject(pPlayer):buffSingleStat("mind", self.buffs[buffSelected][10], duration)
	CreatureObject(pPlayer):buffSingleStat("focus", self.buffs[buffSelected][11], duration)
	CreatureObject(pPlayer):buffSingleStat("willpower", self.buffs[buffSelected][12], duration)
	
	CreatureObject(pPlayer):sendSystemMessage("Your buffs have been applied. They will last for " .. tostring(self.buffs[buffSelected][3]) .. " hours.")
	
	if (self.buffPets == 1) then
		local numberOfPets = CreatureObject(pPlayer):getActivePetsSize()
		
		if (numberOfPets > 0) then
			for i = 1, numberOfPets, 1 do
				local pPet = CreatureObject(pPlayer):getActivePet(i - 1)
				
				CreatureObject(pPet):removeBuffs()
		
				CreatureObject(pPet):buffSingleStat("health", self.buffs[buffSelected][4], duration)
				CreatureObject(pPet):buffSingleStat("action", self.buffs[buffSelected][7], duration)
				CreatureObject(pPet):buffSingleStat("mind", self.buffs[buffSelected][10], duration)
				
				if (self.buffPetSecondaryStats == 1) then
					CreatureObject(pPet):buffSingleStat("strength", self.buffs[buffSelected][5], duration)
					CreatureObject(pPet):buffSingleStat("constitution", self.buffs[buffSelected][6], duration)
					CreatureObject(pPet):buffSingleStat("quickness", self.buffs[buffSelected][8], duration)
					CreatureObject(pPet):buffSingleStat("stamina", self.buffs[buffSelected][9], duration)
					CreatureObject(pPet):buffSingleStat("focus", self.buffs[buffSelected][11], duration)
					CreatureObject(pPet):buffSingleStat("willpower", self.buffs[buffSelected][12], duration)
				end
			end
			
			CreatureObject(pPlayer):sendSystemMessage("Your active pets have also been buffed.")
		end
	end
end


-- Radial Menu Functions

FlurryBuffTerminalMenuComponent = { }

function FlurryBuffTerminalMenuComponent:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
	local menuResponse = LuaObjectMenuResponse(pMenuResponse)
	menuResponse:addRadialMenuItem(20, 3, "Use Terminal")
	menuResponse:addRadialMenuItem(120, 3, "About Buffs")
end

function FlurryBuffTerminalMenuComponent:handleObjectMenuSelect(pObject, pPlayer, selectedID)
	if (pPlayer == nil or pObject == nil) then
		return 0
	end
	
	if CreatureObject(pPlayer):isInCombat() then
		CreatureObject(pPlayer):sendSystemMessage("Terminal services are not available while you are in combat.")
		return 0
	end
	
	if (selectedID == 20) then
		FlurryBuffTerminal:openWindow(pPlayer, pObject)
	elseif (selectedID == 120) then
		local suiManager = LuaSuiManager()
		local helpMessage = "This window shows the stats that are increased for each buff type, as well as their price and duration.\n\n"
		
		for i = 1, #FlurryBuffTerminal.buffs, 1 do
			helpMessage = helpMessage .. FlurryBuffTerminal.buffs[i][1] .. " (" .. tostring(FlurryBuffTerminal.buffs[i][2]) .. "cr/" .. tostring(FlurryBuffTerminal.buffs[i][3]) .. "h):\n" -- BuffName (1234cr/2h):
			helpMessage = helpMessage .. "- - - - - - - - - - - - -\n"
			helpMessage = helpMessage .. "Health: " .. FlurryBuffTerminal.buffs[i][4] .. "\n"
			helpMessage = helpMessage .. "Strength: " .. FlurryBuffTerminal.buffs[i][5] .. "\n"
			helpMessage = helpMessage .. "Constitution: " .. FlurryBuffTerminal.buffs[i][6] .. "\n"
			helpMessage = helpMessage .. "Action: " .. FlurryBuffTerminal.buffs[i][7] .. "\n"
			helpMessage = helpMessage .. "Quickness: " .. FlurryBuffTerminal.buffs[i][8] .. "\n"
			helpMessage = helpMessage .. "Stamina: " .. FlurryBuffTerminal.buffs[i][9] .. "\n"
			helpMessage = helpMessage .. "Mind: " .. FlurryBuffTerminal.buffs[i][10] .. "\n"
			helpMessage = helpMessage .. "Focus: " .. FlurryBuffTerminal.buffs[i][11] .. "\n"
			helpMessage = helpMessage .. "Willpower: " .. FlurryBuffTerminal.buffs[i][12] .. "\n\n"
		end
		
		suiManager:sendMessageBox(pObject, pPlayer, "About Buffs", helpMessage, "@ok", "FlurryBuffTerminalMenuComponent", "noCallback")
	end 
	
	return 0
end

function FlurryBuffTerminalMenuComponent:noCallback(pPlayer, pSui, eventIndex)
	-- do nothing
end

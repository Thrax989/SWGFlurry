-- By: Mindsoft (Property of BloodfinEMU.net)


---------------------------------------------(Screenplay & Spawns)
bf_tickets_vendor = ScreenPlay:new {numberOfActs = 1}
registerScreenPlay("bf_tickets_vendor", true)

--Spawn Quest givers and triggers. - spawnMobile("planet", "mobile",respawn, x, z, y, dir, cell )
function bf_tickets_vendor:start()
	--spawnMobile("planet", "mobile",respawn, x, z, y, dir, cell )
	--spawnMobile("tatooine", "gold_ticket_vendor",-1, 1, 195, 1, 1, 0 )
end


----------------------------------------------(Ticket Vendor Handler)
bf_tickets_vendor_handler = Object:new {
	["questString"] = "bf_tickets_vendor_handler",
	["tickets"] = {
		{["name"] = "Shuttle Tickets",
			{"CNET       (Single)      Cost:  5 (tokens)",5,"object/tangible/mindsoft/bf_teleports/bf_teleport_cnet.iff"},
			{"Theed      (Single)      Cost:  5 (tokens)",5,"object/tangible/mindsoft/bf_teleports/bf_teleport_theed.iff"},
			{"Eisley     (Single)      Cost:  5 (tokens)",5,"object/tangible/mindsoft/bf_teleports/bf_teleport_eisley.iff"},
			{"Gold       (Single)      Cost: 10 (tokens)",10,"object/tangible/mindsoft/bf_teleports/bf_teleport_gold_cnet.iff"},
			{"CNET       (Group)       Cost: 15 (tokens)",15,"object/tangible/mindsoft/bf_teleports/bf_teleport_cnet_group.iff"},
			{"Gold       (Group)       Cost: 20 (tokens)",20,"object/tangible/mindsoft/bf_teleports/bf_teleport_gold_cnet_group.iff"}
		}, -- end shuttle tickets
		{["name"] = "Space Tickets",
			{"Nova Orion (Single)      Cost:  5 (tokens)",5,"object/tangible/mindsoft/bf_teleports/bf_teleport_nova.iff"},
			{"ISD Hangar (Single)      Cost: 10 (tokens)",10,"object/tangible/mindsoft/bf_teleports/bf_teleport_isd.iff"},
			{"Avatar     (Single)      Cost: 15 (tokens)",15,"object/tangible/mindsoft/bf_teleports/bf_teleport_avatar.iff"},
			{"Gold Space (Single)      Cost: 20 (tokens)",20,"object/tangible/mindsoft/bf_teleports/bf_teleport_gold_space.iff"},
			{"ISD Hangar (Group)       Cost: 25 (tokens)",25,"object/tangible/mindsoft/bf_teleports/bf_teleport_isd_group.iff"},
			{"Avatar     (Group)       Cost: 30 (tokens)",30,"object/tangible/mindsoft/bf_teleports/bf_teleport_avatar_group.iff"},
			{"Gold Space (group)       Cost: 35 (tokens)",35,"object/tangible/mindsoft/bf_teleports/bf_teleport_gold_space_group.iff"}

		}, -- end Space tickets
		{["name"] = "PVE Tickets",
			{"Warren     (Single)      Cost: 10 (tokens)",10,"object/tangible/mindsoft/bf_teleports/bf_teleport_warren.iff"},
			{"Geo Caves  (Single)      Cost: 10 (tokens)",10,"object/tangible/mindsoft/bf_teleports/bf_teleport_geo.iff"},
			{"Lake Rose  (Single)      Cost: 10 (tokens)",10,"object/tangible/mindsoft/bf_teleports/bf_teleport_banshee.iff"},
			{"DWB        (Single)      Cost: 15 (tokens)",15,"object/tangible/mindsoft/bf_teleports/bf_teleport_dwb.iff"},
			{"Geo Caves  (Group)       Cost: 15 (tokens)",15,"object/tangible/mindsoft/bf_teleports/bf_teleport_geo_group.iff"},
			{"DWB        (Group)       Cost: 20 (tokens)",20,"object/tangible/mindsoft/bf_teleports/bf_teleport_dwb_group.iff"},
			{"Gold PVE   (group)       Cost: 25 (tokens)",25,"object/tangible/mindsoft/bf_teleports/bf_teleport_gold_pve_group.iff"}

		} -- end PVE tickets
	} -- end tickets
}


-----------------------------------------------(NEXT CONVO HANDLER)

function bf_tickets_vendor_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	return bf_tools_convo_handler:generic_getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
end

-----------------------------------------------(SCREEN HANDLER)
function bf_tickets_vendor_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	local quest = {
-- necessary values:
	["player"] =  conversingPlayer,
	["creature"] = LuaCreatureObject(conversingPlayer),
	["questString"] = self.questString,
	["npc"] = conversingNPC,
-- Editable values:
	["purchase"] = function(...) bf_tickets_vendor_handler:categoryChoice(...) end
	}
	return bf_tools_convo_handler:generic_runScreenHandlers( conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen, quest)
end

---------------------------------------------(SUI Window 1: Category Selection)
function bf_tickets_vendor_handler:categoryChoice(quest)
	local options = {}
	local list = self.tickets
	for k,v in ipairs(list) do
		table.insert(options,list[k].name)
	end

	--local npc = quest.npc:getObjectID()
	local suiManager = LuaSuiManager()

	suiManager:sendListBox(quest.player, quest.player, "Choose Type:", "There are many types of transmission passes:\nPick which type of ticket to buy.", 2, "@cancel", "", "@ok", "bf_tickets_vendor_handler", "itemChoice", options) 
	return 0
end

---------------------------------------------(SUI Window 2: Item Selection)
function bf_tickets_vendor_handler:itemChoice(pCreature, pSui, eventIndex, choice)
	local cancel = (eventIndex == 1)
	if cancel or pCreature == nil or choice == nil then
		return
	end
	writeData(CreatureObject(pCreature):getObjectID() .. ":bf_purchase_option",choice)
	local options = {}
	local list = self.tickets
	list = list[choice+1]
	if list == nil then 
		return 
	end
	for k,v in ipairs(list) do
		table.insert(options,v[1])
	end

	--local npc = quest.npc:getObjectID()
	local suiManager = LuaSuiManager()
	suiManager:sendListBox(pSui, pCreature, "Buy tickets:", "Pick which ticket to buy.\nTo use:\n-Radial Ticket\n-Choose Destination\n\nNote: Tickets MUST BE used out of combat.", 2, "@cancel", "", "@ok", "bf_tickets_vendor_handler", "handleSuiPurchase", options) 
	return 0
end


function bf_tickets_vendor_handler:handleSuiPurchase(pCreature, pSui, eventIndex, selected)
	local cancel = (eventIndex == 1)
	local creature = CreatureObject(pCreature)
	local category = readData(creature:getObjectID() .. ":bf_purchase_option")
	
	if cancel or creature == nil or category == "" or selected == "-1" then
		deleteData(CreatureObject(pCreature):getObjectID() .. ":bf_purchase_option")
		return
	end
	
	local selected = selected + 1
	local category = self.tickets[category+1]
	local testList = {}
	table.insert(testList,category)
	local itemChoice = (testList[1][selected][1])
	local purchaseIFF = (testList[1][selected][3])
	local purchaseCost = (testList[1][selected][2])

	-- Get some information about the player and it's inventory.
	local credits = creature:getCashCredits()
	local pInventory = creature:getSlottedObject("inventory")
	local inventory = LuaSceneObject(pInventory)
	local containerSize = inventory:getContainerObjectsSize()
	local itemCounter = 0
	local i = 0 

	for i = 0, containerSize - 1, 1 do
        	 local pInvObj = inventory:getContainerObject(i)
	         local InvObj = LuaSceneObject(pInvObj)
		-- Get Objectnames from Each Item and check if its the choosen Item. (This is your token for the vendor)
		if (InvObj:getObjectName() == "halloween_coin_n")   then
			itemCounter = itemCounter + 1
		end
	end
	  
         -- Insufficent Space
	if (SceneObject(pInventory):isContainerFullRecursive()) then
		creature:sendSystemMessage("You do not have enough inventory space")  
		return 0
	-- Insufficent Items
	elseif itemCounter < purchaseCost then            
		creature:sendSystemMessage("You have insufficient items")
		return 0
	end
	
	-- Remove Barter Items
	for i = containerSize - 1 , 0 , -1 do
          	pInvObj = inventory:getContainerObject(i)
        	invObj = LuaSceneObject(pInvObj)
     	    	-- Get Objectnames from Each Item and remove if bloodfin coin until cost = 0.
		if (invObj:getObjectName() == "halloween_coin_n" and purchaseCost > 0 ) then
			purchaseCost = purchaseCost - 1
			invObj:destroyObjectFromWorld()
			invObj:destroyObjectFromDatabase()
		end
	end
	-- Give player purchased item.
	local pItem = giveItem(pInventory, purchaseIFF, -1)
	deleteData(CreatureObject(pCreature):getObjectID() .. ":bf_purchase_option")
	creature:sendSystemMessage("You have received: "..itemChoice..".")
end

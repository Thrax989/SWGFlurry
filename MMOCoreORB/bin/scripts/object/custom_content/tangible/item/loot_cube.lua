object_tangible_item_loot_cube = object_tangible_item_shared_loot_cube:new {
  
	templateType = LOOTKIT,
	
	gameObjectType = 8233,
	
	--These are used to determine which components are necessary in the loot kit to finish the item
	collectibleComponents = {"object/tangible/loot/misc/datadisk_corrupt.iff", "object/tangible/loot/misc/datadisk_corrupt.iff", "object/tangible/loot/misc/datadisk_corrupt.iff"},
	
	collectibleReward = {"object/tangible/loot/simple_kit/datadisk.iff"},

	deleteComponents = 0,

	attributes = {}
}

ObjectTemplates:addTemplate(object_tangible_item_loot_cube, "object/tangible/item/loot_cube.iff")

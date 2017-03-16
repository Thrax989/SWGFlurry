object_tangible_item_loot_cube = object_tangible_item_shared_loot_cube:new {
  
	templateType = LOOTKIT,
	
	gameObjectType = 8233,
	
	--These are used to determine which components are necessary in the loot kit to finish the item
	collectibleComponents = {"object/tangible/jedi/jedi_holocron_dark.iff", "object/tangible/jedi/jedi_holocron_light.iff", "object/tangible/mission/quest_item/luthik_uwyr_q3_needed.iff"},
	
	collectibleReward = {"object/tangible/loot/mustafar/jedi_relic_01.iff"},

	deleteComponents = 0,

	attributes = {}
}

ObjectTemplates:addTemplate(object_tangible_item_loot_cube, "object/tangible/item/loot_cube.iff")

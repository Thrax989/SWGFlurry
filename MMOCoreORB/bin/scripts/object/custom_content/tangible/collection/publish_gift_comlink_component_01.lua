
object_tangible_collection_publish_gift_comlink_component_01 = object_tangible_collection_shared_publish_gift_comlink_component_01:new {

	templateType = LOOTKIT,
	
	gameObjectType = 8233,
	
	--items required for output reward
	collectibleComponents = {"object/tangible/item/loot_credit_chip.iff", "object/tangible/item/loot_credit_chip.iff", "object/tangible/item/loot_credit_chip.iff"},
	
	collectibleReward = {"object/tangible/collection/publish_gift_comlink_component_10.iff"},

	deleteComponents = 0,

	attributes = {}
}
ObjectTemplates:addTemplate(object_tangible_collection_publish_gift_comlink_component_01, "object/tangible/collection/publish_gift_comlink_component_01.iff")
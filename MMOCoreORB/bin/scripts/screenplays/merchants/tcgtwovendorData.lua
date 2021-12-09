TcgtwoVendorLogic = VendorLogic:new {
	scriptName = "TcgtwoVendorLogic",
	currencies = {
	--For Tokens: Displayed Name, full template string (without shared_), if applicable: ScreenPlayData string, ScreenPlayData key
		{currency = "token", name = "Community Token", template = "object/tangible/loot/token/event_token.iff", ScreenPlayDataString = "vendorToken", ScreenPlayDataKey = "event_token"},
	},
	--Displayed Name, full template string (without shared_), cost in {}, use the same structure as currencies
	merchandise = {
	{name = "TCG Items", template = "object/tangible/tcg/series3/combine_object_boba_fett_statue.iff", cost = {10,}},
	},
}

registerScreenPlay("TcgtwoVendorLogic", false)

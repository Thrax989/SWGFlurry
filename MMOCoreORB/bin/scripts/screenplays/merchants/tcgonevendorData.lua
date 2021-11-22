TcgoneVendorLogic = VendorLogic:new {
	scriptName = "TcgoneVendorLogic",
	currencies = {
	--For Tokens: Displayed Name, full template string (without shared_), if applicable: ScreenPlayData string, ScreenPlayData key
		{currency = "token", name = "Community Token", template = ".iff", ScreenPlayDataString = "vendorToken", ScreenPlayDataKey = "event_token"},
	},
	--Displayed Name, full template string (without shared_), cost in {}, use the same structure as currencies
	merchandise = {
	{name = "TCG Items", template = "", cost = {10,}},
	},
}

registerScreenPlay("TcgoneVendorLogic", false)

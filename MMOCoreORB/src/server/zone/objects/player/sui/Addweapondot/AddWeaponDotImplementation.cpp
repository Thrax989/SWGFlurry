#include "server/zone/objects/player/sui/Addweapondot/AddWeaponDot.h"
#include "server/zone/packets/ui/SuiCreatePageMessage.h"

BaseMessage* AddWeaponDotImplementation::generateMessage() {
	SuiCreatePageMessage* message = new SuiCreatePageMessage(boxID, "Script.transfer");

	//Declare Headers:
	addHeader("transaction.txtInputFrom", "Text");
	addHeader("transaction.txtInputTo", "Text");

	//Set Body Options:
	addSetting("3", "bg.caption.lblTitle", "Text", promptTitle);
	addSetting("3", "Prompt.lblPrompt", "Text", promptText);

	addSetting("3", "transaction.lblFrom", "Text", lblFrom);
	addSetting("3", "transaction.lblTo", "Text", lblTo);

	addSetting("3", "transaction.lblStartingFrom", "Text", lblStartingFrom);
	addSetting("3", "transaction.lblStartingTo", "Text", lblStartingTo);

	addSetting("3", "transaction.txtInputFrom", "Text", lblInputFrom);
	addSetting("3", "transaction.txtInputTo", "Text", lblInputTo);

	addSetting("3", "transaction", "ConversionRatioFrom", convertRatioFrom);
	addSetting("3", "transaction", "ConversionRatioTo", convertRatioTo);

	setHandlerText("handleDepositWithdraw");

	//Generate Packet:
	generateHeader(message);
	generateBody(message);
	//generateFooter(message, 1);
	generateFooter(message);
	hasGenerated = true;

	return message;
}

void AddWeaponDotImplementation::addExperience(int exp) {

	lblFrom = "Experience to use";
	lblStartingFrom = String::valueOf(exp);

	lblInputFrom = lblStartingFrom;

	convertRatioFrom = "1";

}

/*
 * WeaponObjectMenuComponent.cpp
 *
 *  Created on: 3/11/2012
 *      Author: kyle
 */

#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/objects/tangible/powerup/PowerupObject.h"
#include "server/zone/objects/tangible/weapon/WeaponObject.h"
#include "WeaponObjectMenuComponent.h"
#include "server/zone/objects/scene/components/ObjectMenuComponent.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/objects/player/sessions/SlicingSession.h"
#include "server/zone/objects/player/sui/callbacks/AddWeaponDotCallback.h"
#include "server/zone/objects/player/sui/Addweapondot/AddWeaponDot.h"
#include "server/zone/objects/player/sui/callbacks/DeconstructWeaponCallback.h"
#include "server/zone/objects/player/sui/deconstructweapon/DeconstructWeapon.h"

void WeaponObjectMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	if (!sceneObject->isTangibleObject())
		return;

	ManagedReference<WeaponObject*> weapon = cast<WeaponObject*>(sceneObject);
	if(weapon == nullptr)
		return;

	if(weapon->isASubChildOf(player)) {

		if(weapon->hasPowerup()) {
			menuResponse->addRadialMenuItem(71, 3, "@powerup:mnu_remove_powerup"); // Remove Powerup
		}

		if(weapon->getConditionDamage() > 0 && weapon->canRepair(player)) {
			menuResponse->addRadialMenuItem(70, 3, "@sui:repair"); // Slice
		}

		ManagedReference<PlayerObject*> ghost = player->getPlayerObject();

		if(ghost->getExperience("recycle_contraband") > 0){
			menuResponse->addRadialMenuItem(250, 3, "Apply Dot");
		}
		/*
		if(player->hasSkill("crafting_weaponsmith_master")){
			menuResponse->addRadialMenuItem(251, 3, "Deconstruct Weapon");
		}
		*/
	}

	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);

}

int WeaponObjectMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const {
	if (!sceneObject->isTangibleObject())
		return 0;

	ManagedReference<WeaponObject*> weapon = cast<WeaponObject*>(sceneObject);
	if(weapon == nullptr)
		return 1;

	if(weapon->isASubChildOf(player)) {

		if (selectedID == 69 && player->hasSkill("combat_smuggler_slicing_02")) {
			if (weapon->isSliced()) {
				player->sendSystemMessage("@slicing/slicing:already_sliced");
				return 0;
			}

			ManagedReference<Facade*> facade = player->getActiveSession(SessionFacadeType::SLICING);
			ManagedReference<SlicingSession*> session = dynamic_cast<SlicingSession*>(facade.get());

			if (session != nullptr) {
				player->sendSystemMessage("@slicing/slicing:already_slicing");
				return 0;
			}

			//Create Session
			session = new SlicingSession(player);
			session->initalizeSlicingMenu(player, weapon);

			return 0;

		}

		if(selectedID == 70) {

			weapon->repair(player);
			return 1;
		}

		if(selectedID == 71) {

			ManagedReference<PowerupObject*> pup = weapon->removePowerup();
			if(pup == nullptr)
				return 1;

			Locker locker(pup);

			pup->destroyObjectFromWorld( true );
			pup->destroyObjectFromDatabase( true );

			StringIdChatParameter message("powerup", "prose_remove_powerup"); //You detach your powerup from %TT.
			message.setTT(weapon->getDisplayedName()); 
			player->sendSystemMessage(message);

			return 1;
		}

		if(selectedID == 250) {

			 if(weapon->getNumberOfDots() == 0){


			 	 ManagedReference<PlayerObject*> ghost = player->getPlayerObject();
			 	ZoneServer* server = player->getZoneServer();

				ManagedReference<AddWeaponDot*> dotBox = new AddWeaponDot(player, SuiWindowType::ADD_DOT);
				dotBox->setCallback(new AddWeaponDotCallback(server, ghost, weapon));
				dotBox->setPromptTitle("Add Damage Over Time");

				StringBuffer promptText;
				promptText << "Apply Damage Over Time Too:\t\t " << weapon->getDisplayedName() << "\n"
							<< "Current Experience Avalible: " << String::valueOf(ghost->getExperience("recycle_contraband")) << "\n";

				dotBox->setPromptText(promptText.toString());
				dotBox->addExperience(ghost->getExperience("recycle_contraband"));

				ghost->addSuiBox(dotBox);
				player->sendMessage(dotBox->generateMessage());

			 }else {
				 player->sendSystemMessage("This weapon already has a Dot");
			 }

			return 1;
		}
		if(selectedID == 251) {
			 if(!weapon->getDeconstructionTemplate().isEmpty()){
				 String deconChance;
				 int chance = 0;
				 if (weapon->getConditionDamage() < 1){
					 player->sendSystemMessage("This Weapon can be Deconstructed");
				 	 deconChance = "Zero";
				 }else if (weapon->getConditionDamage() <= 200){
					 deconChance = "Mild";
					 chance = 5;
				 }else {
					 deconChance = "High";
					 chance = 10;
				 }
			 	ManagedReference<PlayerObject*> ghost = player->getPlayerObject();
			 	ZoneServer* server = player->getZoneServer();
				ManagedReference<DeconstructWeapon*> deconstructBox = new DeconstructWeapon(player, SuiWindowType::DECONSTRUCT_WEAPON);
				deconstructBox->setCallback(new DeconstructWeaponCallback(server, ghost, weapon, chance));
				deconstructBox->setUsingObject(player);
				deconstructBox->setPromptTitle("Deconstruct Weapon");
				deconstructBox->setPromptText("Are you sure you wish to Deconstruct this weapon? Failure Probability: " + deconChance);
				deconstructBox->setOkButton(true, "@yes");
				deconstructBox->setCancelButton(true, "@no");

				player->getPlayerObject()->addSuiBox(deconstructBox);
				player->sendMessage(deconstructBox->generateMessage());

			 }else {
				 player->sendSystemMessage("No Deconstruction Avalible" + weapon->getDeconstructionTemplate());
			 }

			return 1;
		}
	}

	return TangibleObjectMenuComponent::handleObjectMenuSelect(sceneObject, player, selectedID);
}

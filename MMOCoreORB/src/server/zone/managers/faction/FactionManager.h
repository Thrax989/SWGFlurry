/*
 * FactionManager.h
 *
 *  Created on: Mar 17, 2011
 *      Author: crush
 */

#ifndef FACTIONMANAGER_H_
#define FACTIONMANAGER_H_

#include "FactionMap.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "templates/faction/FactionRanks.h"

#include "server/chat/room/ChatRoom.h"

namespace server {
namespace chat {

class ChatManager;

} // namespace chat
} // namespace server

namespace server {
namespace zone {
namespace objects {
namespace creature {

class CreatureObject;

} // namespace creature
} // namespace objects
} // namespace zone
} // namespace server

namespace server {
namespace zone {
namespace objects {
namespace tangible {

class TangibleObject;

} // namespace tangible
} // namespace objects
} // namespace zone
} // namespace server

using namespace server::chat;
using namespace server::chat::room;

class FactionMap;

using namespace server::zone::objects::creature;
using namespace server::zone::objects::tangible;

class FactionManager : public Singleton<FactionManager>, public Logger, public Object {
	FactionMap factionMap;
	FactionRanks factionRanks;

public:
	FactionManager();

	static const int TEFTIMER = 300000;

	/**
	 * Loads faction configuration information from the faction manager lua file: managers/faction_manager.lua
	 * Loads faction ranks from datatable
	 * Sets up faction relationships
	 */
	void loadData();

	/**
	* Creates GCW specific Chat Rooms
	*/
	void createGcwRooms(ChatManager* chatManager);

	/**

	 * Awards points to the player based on the faction they killed.
	 * @pre: player locked
	 * @post: player locked
	 * @param player The player receiving the faction points for the kill.
	 * @param faction The string key of the faction that was killed.
	 * @param level The level of the mob that was killed
	 */
	void awardFactionStanding(CreatureObject* player, const String& factionName, int level);

	void awardPvpFactionPoints(TangibleObject* killer, CreatureObject* destructedObject, int numberCombatants);

	/**
	 * Gets a list of enemy factions to the faction passed to the method.
	 * @param faction The faction to check for enemies.
	 */
	SortedVector<String> getEnemyFactions(const String& faction);

	/**
	 * Gets a list of ally factions to the faction passed to the method.
	 * @param faction The faction to check for enemies.
	 */
	SortedVector<String> getAllyFactions(const String& faction);

	FactionMap* getFactionMap();

	String getRankName(int idx);
	int getRankCost(int rank);
	int getRankDelegateRatioFrom(int rank);
	int getRankDelegateRatioTo(int rank);
	int getFactionPointsCap(int rank);

	bool isHighestRank(int rank) {
		return rank >= factionRanks.getCount() - 1 || rank >= 15;
	}

	bool isFaction(const String& faction);
	bool isEnemy(const String& faction1, const String& faction2);
	bool isAlly(const String& faction1, const String& faction2);

	ChatRoom* getImperialChat() const { return imperialChat; }
	ChatRoom* getRebelChat() const { return rebelChat; }
	ChatRoom* getPvpNotificationChat() const { return pvpNotificationChat; }

protected:
	void loadFactionRanks();
	void loadLuaConfig();
  ManagedReference<ChatRoom*> imperialChat;
  ManagedReference<ChatRoom*> rebelChat;
  ManagedReference<ChatRoom*> pvpNotificationChat;
};

#endif /* FACTIONMANAGER_H_ */

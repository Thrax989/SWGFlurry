	if (color == 31) {
		minStat = crystalData->getMinDamage();
		maxStat = crystalData->getMaxDamage();

		if (damage > maxStat || damage < minStat)
			damage = getRandomizedStat(minStat, maxStat, itemLevel);

		minStat = crystalData->getMinHealthSac();
		maxStat = crystalData->getMaxHealthSac();

		if (sacHealth > maxStat || sacHealth < minStat)
			sacHealth = getRandomizedStat(minStat, maxStat, itemLevel);

		minStat = crystalData->getMinActionSac();
		maxStat = crystalData->getMaxActionSac();

		if (sacAction > maxStat || sacAction < minStat)
			sacAction = getRandomizedStat(minStat, maxStat, itemLevel);

		minStat = crystalData->getMinMindSac();
		maxStat = crystalData->getMaxMindSac();

		if (sacMind > maxStat || sacMind < minStat)
			sacMind = getRandomizedStat(minStat, maxStat, itemLevel);

		minStat = crystalData->getMinWoundChance();
		maxStat = crystalData->getMaxWoundChance();

		if (woundChance > maxStat || woundChance < minStat)
			woundChance = getRandomizedStat(minStat, maxStat, itemLevel);

		float minFloatStat = crystalData->getMinForceCost();
		float maxFloatStat = crystalData->getMaxForceCost();

		if (floatForceCost > maxFloatStat || floatForceCost < minFloatStat)
			floatForceCost = getRandomizedStat(minFloatStat, maxFloatStat, itemLevel);

		minFloatStat = crystalData->getMinAttackSpeed();
		maxFloatStat = crystalData->getMaxAttackSpeed();

		if (attackSpeed > maxFloatStat || attackSpeed < minFloatStat)
			attackSpeed = Math::getPrecision(getRandomizedStat(minFloatStat, maxFloatStat, itemLevel), 2);
	}

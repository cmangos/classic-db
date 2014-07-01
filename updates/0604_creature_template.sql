-- Fixed template of many creatures:

-- Baron Rivendare (10440): fixed min level, health, mana rare rank
UPDATE `creature_template` SET `MinLevel` = 62, `Rank` = 1, `HealthMultiplier` = 17.7606, `MinLevelHealth` = 46000, `MaxLevelHealth` = 46000, `ManaMultiplier` = 5, `MinLevelMana` = 12840, `MaxLevelMana` = 12840 WHERE `Entry` = 10440;
 
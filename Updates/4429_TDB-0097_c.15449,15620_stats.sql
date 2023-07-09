-- Correct some more Stats related to Field Duty Quests

-- Hive'Regal Hunter-Killer 15620
-- dmg: (((31.3842 * (1.0 or 1.5)) + (238 / 14)) * (2000 / 1000)) * 6.4 = (619 - 820) dmg
UPDATE creature_template SET `Faction` = 1395, `SpeedWalk` = 1, `SpeedRun` = 1.71429, `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000, `DamageMultiplier` = 6.4, `MinLootGold` = 0, `MaxLootGold` = 0, `LootId` = 0 WHERE `entry` = 15620;
DELETE FROM `creature_loot_template` WHERE `entry` = 15620;
UPDATE `creature_model_info` SET `bounding_radius` = 8.15, `combat_reach` = 7.5 WHERE `modelid` = 15576;

-- Hive'Zora Abomination 15449 - 619-820, 6.4 ok.
UPDATE creature_template SET `SpeedRun` = 2.85714, `MinLootGold` = 0, `MaxLootGold` = 0, `LootId` = 0 WHERE `entry` = 15449;
DELETE FROM `creature_loot_template` WHERE `entry` = 15449;
UPDATE `creature_model_info` SET `bounding_radius` = 7.965, `combat_reach` = 6.75 WHERE `modelid` = 15452;

-- Orgrimmar Legion Axe Thrower 15617
UPDATE `creature_equip_template` SET `equipentry3` = 5856 WHERE `entry` = 15617;

-- "Hive" Factions
-- Hive'Regal Burrower
UPDATE creature_template SET `Faction` = 311 WHERE `entry` = 11731;
UPDATE creature_template SET `Faction` = 310 WHERE `entry` IN (10040,10041,13136,13301);


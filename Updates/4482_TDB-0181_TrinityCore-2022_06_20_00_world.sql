-- DB/Loot: Remove loot from creatures which shouldn't drop anything
-- DELETE FROM `pickpocketing_loot_template` WHERE `Entry` IN (12352); -- keep - https://www.wowhead.com/classic/npc=12352/scarlet-trooper#pickpocketing
UPDATE `creature_template` SET `LootId` = 0, `MinLootGold` = 10, `MaxLootGold` = 20 WHERE `entry` = 4625; -- seems to be pickpocket loot.
UPDATE `creature_template` SET `SkinningLootId` = 0, `MinLootGold` = 0, `MaxLootGold` = 0 WHERE `entry` = 11374;
UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` = 27414;
DELETE FROM `creature_loot_template` WHERE `entry` IN (4625,27414);


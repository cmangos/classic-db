-- Fixed drop rate of item 4527 (Azure Agate) involved in quest Trelane's Defense
-- Source: http://www.wowhead.com/item=4527#comments
-- Value is guessed from comments and adjusted by the fact that quest drop rates were increased in patch 2.3
-- But this value is still way better than the 100% previous one
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `item` = 4527;

-- Fixed drop chance of quest item 3923 (Water Elemental Bracer) in Stranglethorn Cape
-- Source: http://www.wowhead.com/item=3923#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -38 WHERE `item` = 3923;

-- Fixed drop chance for item 1357 (Captain Sanders' Treasure Map) in Westfall because it previously was a 100% drop chance
-- Thanks Shubu for pointing. This closes #237 
-- Source: http://www.wowhead.com/item=1357#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 15 WHERE `item` = 1357 AND `entry` IN (515, 126);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 11 WHERE `item` = 1357 AND `entry` IN (456);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 3 WHERE `item` = 1357 AND `entry` IN (391, 127, 517, 458, 171, 513);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 4.5 WHERE `item` = 1357 AND `entry` IN (519, 520);

-- Fixed drop chance for item 5884 (Unpopped Darkmist Eye) in Dustwallow Marsh because it previously was a 100% drop chance
-- Source: http://wowhead.com/item=5884#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -45 WHERE `item` = 5884 AND `entry` IN (4376, 4379);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -35 WHERE `item` = 5884 AND `entry` IN (4380, 4378);

-- Fixed drop chance for item 6245 (Karnitol's Satchel) in Desolace because it previously was a 100% drop chance
-- Source: http://wowhead.com/item=6245#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `item` = 6245;

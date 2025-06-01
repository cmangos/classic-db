-- Fixes for RFK
UPDATE `broadcast_text` SET `ChatTypeID` = 1 WHERE `Id` = 6180; -- Who's next?

-- https://web.archive.org/web/20080803144655/http://wow.allakhazam.com/db/item.html?witem=6679 - 40
-- https://www.wowhead.com/wotlk/npc=4438/razorfen-spearhide#drops - 61
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 50 WHERE `entry` = 4438 AND `item` = 6679; -- 79,56

-- Disable Aggro Call for Heralath Fallowbrook so horde players killing him dont aggro the goblin
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|2048 WHERE `entry` = 4510;


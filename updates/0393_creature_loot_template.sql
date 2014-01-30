-- Fixed rank of creature 2600 (Singer) because she is rare but not elite and changed faction to Syndicate
-- Source: http://www.wowwiki.com/Singer
UPDATE `creature_template` SET `rank` = 4, `faction_A` = 87, `faction_H` = 87 WHERE `entry` = 2600;

-- Fixed loot of creature 2600 (Singer) because she was missing her specific items
-- Thanks Neotmiren for pointing and fixing
-- Source: http://www.wowwiki.com/Singer
-- Correct drop value from PSDB
DELETE FROM `creature_loot_template` WHERE `item` IN (5180, 5181) AND `entry` = 2600;
INSERT INTO `creature_loot_template` VALUES
(2600, 5180, 30, 2, 1, 1, 0), -- uncommon Necklace of Harmony
(2600, 5181, 70, 2, 1, 1, 0); -- uncommon Vibrant Silk Cape
DELETE FROM `reference_loot_template` WHERE `item` IN (5180, 5181);

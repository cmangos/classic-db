-- Fixed loot table of creature 1119 (Hammerspine)
-- Thanks Zingzah for reporting and Sinoxan for providing ratio. This closes #528 and closes #543 
-- Source: http://www.wowwiki.com/Hammerspine

DELETE FROM `reference_loot_template` WHERE `item` IN (2254, 763);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 80, `groupid` = 2 WHERE `entry` = 1119 AND `item` = 763;
DELETE FROM `creature_loot_template` WHERE `item` = 2254;
INSERT INTO `creature_loot_template` VALUES
(1119, 2254, 20, 2, 1, 1, 0);

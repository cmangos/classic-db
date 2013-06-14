-- Correcting too high XP reward for quests 8460, 8464, 8485 (Timbermaw Hold)
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 3780 WHERE `entry` = 8460;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 5400 WHERE `entry` = 8464;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 8580 WHERE `entry` = 8485;
-- Improved script for quest 656 (Summoning the Princess) in Arathi Highlands
-- Now Myzrael has a speech and will engage players on spawn
-- Source: https://www.youtube.com/watch?v=aI6vUWaR2kg
-- https://www.youtube.com/watch?v=WjezLpIxxLg

UPDATE `creature_template` SET `MinLevel` = 44, `MaxLevel` = 44, `MinLevelHealth` = 11408, `MaxLevelHealth`=11408, `HealthMultiplier` = 8, `PowerMultiplier` = 3, `ArmorMultiplier` = 1 WHERE `Entry` = 2755;

SET @STRING := 2000000234;

DELETE FROM `db_script_string` WHERE `entry` BETWEEN @STRING AND @STRING + 2;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(@STRING, 'What? $N, you served me well, but...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@STRING + 1, 'Why have you summoned me so soon? I haven\'t yet reached my full power!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@STRING + 2, 'No matter. You were a fool to help me, and now you will pay!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

DELETE FROM `dbscripts_on_event` WHERE `id` = 420;
INSERT INTO `dbscripts_on_event` VALUES
(420, 0, 10, 2755, 3000000, 0, 0, 0, 0, 0, 0, 0, -931.73, -3111.81, 48.517, 3.27404, 'quest 656'),
(420, 3, 0, 0, 0, 2755, 50, 3, @STRING, 0, 0, 0, 0, 0, 0, 0, ''),
(420, 6, 0, 0, 0, 2755, 50, 3, @STRING + 1, 0, 0, 0, 0, 0, 0, 0, ''),
(420, 11, 0, 0, 0, 2755, 50, 3, @STRING + 2, 0, 0, 0, 0, 0, 0, 0, ''),
(420, 12, 26, 0, 0, 2755, 50, 3, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Removed addons for deleted Razormane wolves and some Twilight Prophets/Avengers
DELETE FROM `creature_addon` WHERE `guid` IN (14324, 14325, 14326, 14327, 14328, 14329, 14330, 14331, 14332);
DELETE FROM `creature_addon` WHERE `guid` IN (42969, 42983, 42984, 43322, 43323);

-- Moved to creature_template_addon of creatures Twilight Prophets/Avengers
DELETE FROM `creature_template_addon` WHERE `entry` IN (11880, 15308);
INSERT INTO `creature_template_addon` VALUES
(11880, 0, 0, 1, 16, 0, 0, NULL),
(15308, 0, 0, 1, 16, 0, 0, NULL);

-- Removed reference to missing script for one of the Ironforge guards
UPDATE `creature_movement` SET `script_id` = 0 WHERE `id` = 97 AND `point` = 2;

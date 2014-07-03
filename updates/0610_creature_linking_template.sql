-- Linked creatures 4063 (Feeboz), 2764 (Sleeby) and 2765 (Znort) to creature 2611 (Fozruk) in Arathi Highlands
-- Source: http://www.wowwiki.com/Fozruk
DELETE FROM `creature_linking_template` WHERE `entry` = 7343;
INSERT INTO `creature_linking_template` VALUES
(4063, 0, 2611, 515, 0),
(2764, 0, 2611, 515, 0),
(2765, 0, 2611, 515, 0);

-- Removed waypoints from creatures 4063 (Feeboz), 2764 (Sleeby) and 2765 (Znort) as they now follow creature 7357 (Fozruk)
DELETE FROM `creature_movement` WHERE `id` IN (SELECT `guid` FROM `creature` WHERE `id` IN (4063, 2764, 2765));
UPDATE `creature` SET `MovementType` = 2 WHERE `id` IN (4063, 2764, 2765);
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` IN (4063, 2764, 2765);

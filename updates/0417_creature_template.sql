-- Fixed faction and rank of creature 14488 (Roloch) because he is rare
-- but not elite and definely not a wolf. Only a ogre.
-- Source: http://www.wowwiki.com/Roloch?oldid=355484

SET @EQUIPID := 1238;
UPDATE `creature_template` SET `rank` = 4, `faction_A` = 45, `faction_H` = 45, `equipment_id` = @EQUIPID, `MovementType` = 2 WHERE `entry` = 14488;

-- Added missing equipment for creature 14488 (Roloch)
-- Based on UDB equipment
DELETE FROM `creature_equip_template_raw` WHERE `entry` = @EQUIPID;
INSERT INTO  `creature_equip_template_raw` VALUES
(@EQUIPID, 8499, 0, 0, 285280258, 0, 0, 1, 0, 0);

-- Removed duplicate spawns of  creature 14488 (Roloch) and relocates the last one
-- to the first waypoint of its path
DELETE FROM `creature` WHERE `guid` BETWEEN 134223 AND 134227;
UPDATE `creature` SET `position_x` = -12465.1, `position_y` = -210.576, `position_z` = 14.3717, `MovementType` = 2, `equipment_id` = 0 WHERE `guid` = 134222;

-- Added waypoint movement to creature 14488 (Roloch)
-- Source: YTDB and http://www.wowhead.com/npc=14488#map
DELETE FROM `creature_movement_template` WHERE `entry` = 14488;
INSERT INTO `creature_movement_template` VALUES
(14488, 1, -12465.1, -210.576, 14.3717, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14488, 2, -12490.7, -193.771, 12.0785, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14488, 3, -12509.6, -173.085, 11.6376, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14488, 4, -12498.8, -164.274, 12.191, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14488, 5, -12510.9, -173.704, 11.3185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14488, 6, -12460.5, -217.992, 14.1069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

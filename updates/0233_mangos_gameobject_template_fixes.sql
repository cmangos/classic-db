-- Added gossip menus to the following gameobjects based on UDB data, also fixed type when needed
-- Gossips were checked to prevent linking to a TBC/WotLK gossip
-- This should greatly decrease the number of broken quests, events or scripts due to missing gossip menus
-- Source: UDB
UPDATE `gameobject_template` SET `type`= 2, `data3` = 1045 WHERE `entry` = 142345; -- Matrix Punchograph 3005-A
UPDATE `gameobject_template` SET `type`= 2, `data3` = 1047 WHERE `entry` = 142475; -- Matrix Punchograph 3005-B
UPDATE `gameobject_template` SET `type`= 2, `data3` = 1049 WHERE `entry` = 142476; -- Matrix Punchograph 3005-C
UPDATE `gameobject_template` SET `type`= 2, `data3` = 1050 WHERE `entry` = 142696; -- Matrix Punchograph 3005-D
UPDATE `gameobject_template` SET `type`= 2, `data3` = 2211 WHERE `entry` = 160445; -- Sha'ni Proudtusk's Remains
UPDATE `gameobject_template` SET `type`= 2, `data3` = 2187 WHERE `entry` = 169294; -- Tablet of the Seven
UPDATE `gameobject_template` SET `type`= 2, `data3` = 6669 WHERE `entry` = 180665; -- Draconic for Dummies
UPDATE `gameobject_template` SET `type`= 2, `data3` = 6670 WHERE `entry` = 180666; -- Draconic for Dummies
UPDATE `gameobject_template` SET `type`= 2, `data3` = 6668 WHERE `entry` = 180667; -- Draconic for Dummies

-- Added missing gossip menu option for Matrix Punchograph
INSERT INTO `gossip_menu_option` VALUES (1047, 1, 0, 'Use engineering to access hidden shematics!', 1, 1, -1, 0, 104702, 0, 0, '', 672);
-- Added missing script for Matrix Punchograph
INSERT INTO `dbscripts_on_gossip` VALUES (104702, 0, 17, 14639, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hidden schematic');

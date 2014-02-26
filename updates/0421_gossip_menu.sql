-- Fixed gossip and conditions for gossip of creature 4087 (Arias'ta Bladesinger) Warrior Trainer in Darnassus
-- Thanks Patman for pointing
-- This closes #230 
DELETE FROM `gossip_menu` WHERE `entry` = 4697 AND `text_id` = 1217;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(4697, 1217, 0, 0);
UPDATE `gossip_menu` SET `condition_id` = 28 WHERE `entry` = 4697 AND `text_id` = 5725;

-- Fixed gossip of creature 384 (Katie Hunter) Human mount vendor in Elwynn Forest to adjust it to alliance player reputation
DELETE FROM `gossip_menu` WHERE `entry` = 4004 AND `text_id` = 4859;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(4004, 4859, 0, 846);

-- Fixed gossip of creature 7312 (Dink) a mage trainer in Ironforge
DELETE FROM `gossip_menu` WHERE `entry` = 4553 AND `text_id` = 561;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(4553, 561, 0, 23);
UPDATE `gossip_menu` SET `condition_id` = 18 WHERE `entry` = 4553 AND `text_id` = 560;

-- Fixed conditions for gossip of creature 1261 (Veron Amberstill) Dwarf mount vendor
-- in Dun Morogh to adjust it to alliance player reputation and allow dwarves to
-- by their own racial mounts
-- Thanks Scotty0100 for pointing
-- This closes #265 
DELETE FROM `conditions` WHERE `condition_entry` IN (40, 1100);
INSERT INTO `conditions` VALUES
(40, 14, 4, 0),       -- is a dwarf
(1100, -2, 40, 1027); -- is either a dwarf or exalted with Ironforge (Alliance but not dwarf)
UPDATE `gossip_menu` SET `condition_id` = 1100 WHERE `entry` = 4001 AND `text_id` = 4855;
UPDATE `gossip_menu_option` SET `condition_id` = 1100 WHERE `menu_id` = 4001;

-- Fixed gossip menu of creature 4968 (Lady Jaina Proudmoore) because she always used
-- a gossip related to a quest
-- Source: YTDB
DELETE FROM `gossip_menu` WHERE `entry` = 2465 AND `text_id` = 3157;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(2465, 3157, 0, 0);
UPDATE `gossip_menu` SET `condition_id` = 41 WHERE `entry` = 2465 AND `text_id` = 3158;

DELETE FROM `conditions` WHERE `condition_entry` = 41;
INSERT INTO `conditions` VALUES
(41, 8, 1324, 0);

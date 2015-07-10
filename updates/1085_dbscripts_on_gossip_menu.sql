-- Fixed quest 4136 (Ribbly Screwspigot) in Blackrock Depths
-- Added missing condition for gossip menu
-- Added missing script
-- Thanks Nekoi for pointing and @scotty0100 for providing solid basis for the fix
-- This closes #182

SET @ENTRY := 2000005626;
SET @CONDITION := 844;

DELETE FROM `conditions` WHERE `condition_entry` = @CONDITION;
INSERT INTO `conditions` VALUES
(@CONDITION, 9, 4136, 0);

UPDATE `gossip_menu_option` SET `action_menu_id`=-1, `action_script_id`=197001, `condition_id` = @CONDITION WHERE `menu_id`=1970 AND `id`=1;

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 197001;
INSERT INTO `dbscripts_on_gossip` VALUES
(197001, 0, 22, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ribbly - update faction'),
(197001, 0, 22, 21, 0, 10043, 46616, 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Ribbly Crony - update faction'),
(197001, 0, 22, 21, 0, 10043, 46617, 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Ribbly Crony - update faction'),
(197001, 0, 22, 21, 0, 10043, 46618, 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Ribbly Crony - update faction'),
(197001, 3, 0, 0, 0, 0, 0, 0, @ENTRY, 0, 0, 0, 0, 0, 0, 0, ''),
(197001, 5, 26, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ribbly  - attack player');

DELETE FROM `db_script_string` WHERE `entry` = @ENTRY;
INSERT INTO `db_script_string` VALUES
(@ENTRY, 'No! Get away from me! Help!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

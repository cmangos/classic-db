-- Fixed quest 3801 (Dark Iron Legacy) in Blackrock Mountain
-- Missing condition added for gossip
-- Missing end script added

SET @COND := 205;

DELETE FROM `conditions` WHERE `condition_entry` = @COND;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
(@COND, 9, 3801, 0);

UPDATE `gossip_menu_option` SET `condition_id` = @COND WHERE `menu_id` = 1663;
UPDATE `gossip_menu` SET `script_id` = 166601 WHERE `entry` = 1666;

UPDATE `quest_template` SET `SpecialFlags` = 2 WHERE `entry` = 3801;

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 166601;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(166601, 0, 7, 3801, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'complete quest');

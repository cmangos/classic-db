-- Fixed gossip menu of NPC 3430 (Mangletooth) in the Barrens
-- Thanks thegreatsepiroth for reporting. This closes #525
SET @CONDITION := 324;

DELETE FROM `conditions` WHERE `condition_entry` = @CONDITION;
INSERT INTO `conditions` VALUES
(@CONDITION, 8, 5052, 0);

DELETE FROM `gossip_menu` WHERE `entry` = 2944 AND `text_id` = 3656;
INSERT INTO `gossip_menu` VALUES
(2944, 3656, 0, 0);

UPDATE `gossip_menu` SET `condition_id` = @CONDITION WHERE `entry` = 2944 AND `text_id` = 3670;

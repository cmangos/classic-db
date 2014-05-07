-- Fixed conditions of gossip of creature 15498 (Windcaller Yessendra) in Cenarion Hold
-- previously her gossip options allowed player to get back the epic quest rewards
-- she provides without having complete the quests first
-- This closes #400 

SET @CID := 1126;

-- Added missing conditions: player must have finished the quest and have the
-- related item missing
DELETE FROM `conditions` WHERE `condition_entry` BETWEEN @CID + 1 AND @CID + 15;
INSERT INTO `conditions` VALUES
(@CID + 1, 8, 8697, 0),
(@CID + 2, 8, 8703, 0),
(@CID + 3, 8, 8701, 0),
(@CID + 4, 8, 8699, 0),
(@CID + 5, 8, 8700, 0),
(@CID + 6, 24, 21411, 1),
(@CID + 7, 24, 21396, 1),
(@CID + 8, 24, 21405, 1),
(@CID + 9, 24, 21414, 1),
(@CID + 10, 24, 21408, 1),
(@CID + 11, -1, @CID + 10, @CID + 5),
(@CID + 12, -1, @CID + 9, @CID + 4),
(@CID + 13, -1, @CID + 8, @CID + 3),
(@CID + 14, -1, @CID + 7, @CID + 2),
(@CID + 15, -1, @CID + 6, @CID + 1);

UPDATE `gossip_menu_option` SET `condition_id` = @CID + 11 WHERE `menu_id` = 6928 AND `id` = 0;
UPDATE `gossip_menu_option` SET `condition_id` = @CID + 12 WHERE `menu_id` = 6928 AND `id` = 1;
UPDATE `gossip_menu_option` SET `condition_id` = @CID + 13 WHERE `menu_id` = 6928 AND `id` = 2;
UPDATE `gossip_menu_option` SET `condition_id` = @CID + 14 WHERE `menu_id` = 6928 AND `id` = 3;
UPDATE `gossip_menu_option` SET `condition_id` = @CID + 15 WHERE `menu_id` = 6928 AND `id` = 4;
UPDATE `gossip_menu_option` SET `condition_id` = 1114 WHERE `menu_id` = 6928 AND `id` = 5;
UPDATE `gossip_menu_option` SET `condition_id` = 1117 WHERE `menu_id` = 6928 AND `id` = 6;
UPDATE `gossip_menu_option` SET `condition_id` = 1120 WHERE `menu_id` = 6928 AND `id` = 7;
UPDATE `gossip_menu_option` SET `condition_id` = 1123 WHERE `menu_id` = 6928 AND `id` = 8;
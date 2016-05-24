-- Rewrote script for quest 1886
-- It was not following coding standards and was using wrong values
-- This contributes to #847
UPDATE `gossip_menu_option` SET `action_script_id` = 12501 WHERE `menu_id` = 125;

DELETE FROM `dbscripts_on_gossip` WHERE `id` IN (125, 12501);
INSERT INTO `dbscripts_on_gossip` VALUES
(12501, 1, 22, 168, 0x01+0x04, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Astor change faction'),
(12501, 2, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Astor attack start');

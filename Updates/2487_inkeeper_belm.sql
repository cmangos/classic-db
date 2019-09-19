-- fix for Innkeeper Belm 1247 missing "What can I do at an inn?" option
DELETE FROM `conditions` WHERE `condition_entry` IN (1598);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES
(1598, 4, 2102, 0, 'Is In Area ID: 2102'); -- Thunderbrew Distillery
UPDATE `gossip_menu_option` SET `condition_id`=1598 WHERE `menu_id`=1297 AND `id`=3;

-- Added missing gossip menu option and script to creature 6729 (Morridune)
-- He can now teleport Alliance players from Blackfathom Deeps to Darnassus
-- Source: UDB
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 321 AND `id` = 0;
INSERT INTO `gossip_menu_option` VALUES
(321, 0, 0, 'Please port me to Darnassus.', 1, 1, 0, 0, 321, 0, 0, '', 0);

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 321;
INSERT INTO `dbscripts_on_gossip` VALUES
(321, 0, 15, 9268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Teleport to Darnassus');

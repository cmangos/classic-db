-- Added missing gossip menu option to creature 6566 (Estelle Gendry) to fix quest 1999 (Tools of the Trade)
-- The NPC will now give item 5060 (Thieves Tool) to player on the quest
-- Thanks The-Great-Sephiroth for pointing. This closes #535

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 161;
INSERT INTO `gossip_menu_option` VALUES
(161, 1, 0, '[PH] Get Thieves\' Tools', 1, 1, -1, 0, 50041, 0, 0, NULL, 1090);

DELETE FROM `conditions` WHERE `condition_entry` = 1090;
INSERT INTO `conditions` VALUES
(1090, 9, 1999, 0);

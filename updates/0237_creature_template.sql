-- Updated gossip_menu for hunter pets trainer since 1.7 they should use gossip 4783
-- and be able to untrain pets
-- for pet training (see http://www.wowwiki.com/Hunter_pet and http://www.wowwiki.com/Patch_1.7.0)
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 4783;    -- Fixes Pet Trainer Gossip Menu
INSERT INTO `gossip_menu_option` VALUES 
(4783, 1, 3, 'How do I train my pet?', 5, 16, 0, 0, 0, 0, 0, NULL, 0),
(4783, 2, 0, 'I wish to untrain my pet.', 17, 16, 0, 0, 0, 0, 0, NULL, 0);

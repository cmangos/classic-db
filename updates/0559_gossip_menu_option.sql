-- Added missing gossip menu and gossip menu options to creature 15502 (Andorgos) in Temple of Ahn'Qiraj
-- This allows player to be teleported to Twins Emperors' lair or Final Chamber near C'Thun, depending on which boss is defeated
-- Thanks Tobschinski for poiting, this closes #375 
-- Source: http://wowpedia.org/Andorgos

-- Added conditions related to encounters beaten
DELETE FROM `conditions` WHERE `condition_entry` IN (717, 718);
INSERT INTO `conditions` VALUES
(717, 31, 715, 0),
(718, 31, 716, 0);

-- Added gossip menu to display once Ouro is defeated
DELETE FROM `gossip_menu` WHERE `entry` = 6644 AND `text_id` = 8702;
INSERT INTO `gossip_menu` VALUES (6644, 8702, 0, 718);

-- Added gossip menu options to display once the related encounters are defeated
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 6644;
INSERT INTO `gossip_menu_option` VALUES
(6644, 0, 0, 'Teleport me to the lair of the Twin Emperors, please.', 1, 1, 0, 0, 66441, 0, 0, '', 717),
(6644, 1, 0, 'Please teleport me to the final chamber.', 1, 1, 0, 0, 66442, 0, 0, '', 718);

-- Added scripts to teleport players to related rooms
DELETE FROM `dbscripts_on_gossip` WHERE `id` IN (66441, 66442);
INSERT INTO `dbscripts_on_gossip` VALUES
(66441, 0, 15, 29182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'teleport - lair of the Twin Emperors'),
(66442, 0, 15, 29188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'teleport - final chamber');

-- Backport from UDB missing gossip_menu from previous update
DELETE FROM `gossip_menu` WHERE `entry` IN (643,646,3161,3162,3861,3922,4004,4005,4006,4112,4821,4823,5304,6223,6525,7406,7577,8085,8453,8851,9821,10215,10775,50005,50006);
INSERT INTO `gossip_menu` VALUES
(643, 1203, 0, 38),
(646, 1208, 0, 0),
(3161, 5841, 0, 0),
(3162, 5842, 0, 0),
(3861, 4778, 3861, 39),
(3922, 4777, 0, 39),
(4004, 5855, 0, 0),
(4005, 4869, 0, 851),
(4006, 5843, 0, 0),
(4112, 5019, 0, 0),
(4821, 5874, 0, 18),
(4823, 5878, 0, 18),
(5304, 6336, 0, 0),
(6223, 7394, 0, 0),
(6525, 7820, 0, 3),
(7406, 8875, 0, 0),
-- (7577, 9218, 0, 0),
-- (8085, 9995, 0, 0),
-- (8453, 10560, 0, 0), -- TBC version, need to be reverted
(8851, 11492, 0, 0),
(9821, 13584, 0, 0),
(9821, 13557, 0, 15),
(10215, 14198, 0, 0); -- à tester

-- Backport from UDB missing gossip_menu_options from previous update
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (643,646,3161,3162,4004,4005,4006,4821,4823,6525,8085,8453,8851,9821);
INSERT INTO `gossip_menu_option` VALUES
(646, 0, 3, 'Train me.', 5, 16, 0, 0, 0, 0, 0, '', 0),
(3161, 0, 1, 'I would like to buy from you.', 3, 4, 0, 0, 0, 0, 0, NULL, 845),
(3162, 0, 1, 'I would like to buy from you.', 3, 4, 0, 0, 0, 0, 0, '', 849),
(4004, 0, 1, 'I would like to buy from you.', 3, 4, 0, 0, 0, 0, 0, '', 846),
(4005, 0, 1, 'I would like to buy from you.', 3, 4, 0, 0, 0, 0, 0, NULL, 851),
(4006, 0, 1, 'I would like to buy from you.', 3, 4, 0, 0, 0, 0, 0, '', 847),
(4821, 0, 3, 'Please teach me.', 5, 16, 0, 0, 0, 0, 0, NULL, 18),
(4823, 0, 3, 'Please teach me.', 5, 16, 0, 0, 0, 0, 0, NULL, 18),
(6525, 2, 1, 'I wish to browse your wares, Calandrath.', 3, 128, 0, 0, 0, 0, 0, '', 0),
(6525, 3, 5, 'Make this inn your home.', 8, 128, 0, 0, 0, 0, 0, '', 0),
-- (8453, 0, 9, 'I wish to join the battle!', 12, 1048576, 0, 0, 0, 0, 0, '', 0), -- TBC version, need to be revert
(9821, 1, 0, 'I\'d like to stable my pet here', 14, 8192, 0, 0, 0, 0, 0, '', 0);

-- Backport from UDB npc_text from previous update
DELETE FROM `npc_text` WHERE `id` IN (11492, 13584, 13557, 14198);
INSERT INTO `npc_text` VALUES
(8875, 'It\'s good to hear the voices of others here in Forest Song again. I\'d begun to feel as though I might be the last of the kaldorei ever to set eyes on these lands before their descent into corruption.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(11492, 'Welcome to Theramore, $c.', 'Welcome to Theramore, $c.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(13557, 'Greetings, $c. I can help stable your pets or assist you in recovering lost companions.', 'Greetings, $c. I can help stable your pets or assist you in recovering lost companions.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(13584, 'Greetings, $c. I can assist you in recovering lost companions.', 'Greetings, $c. I can assist you in recovering lost companions.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(14198, 'The Emerald Dream has become a dangerous place. I grow increasingly concerned for those who have sacrificed their waking life in Azeroth in hopes of saving it.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

-- Backport from UDB missing DB scrpit from previous update
DELETE FROM `dbscripts_on_gossip` WHERE `id` = 3861;
INSERT INTO `dbscripts_on_gossip` VALUES (3861, 0, 8, 10936, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'give quest credit - The Battle of Darrowshire');

-- Backport from UDB missing conditions used by gossip_menu and gossip_menu_options above
DELETE FROM `conditions` WHERE `condition_entry` IN (38, 39, 851, 831, 812, 821, 839, 845, 825, 806, 815, 836, 849, 829, 810, 819, 842, 846, 826, 807, 816, 835, 847, 827, 808, 817, 840);
INSERT INTO `conditions` VALUES 
(38, 7, 182, 1),
(39, 9, 5721, 0),
(851, -2, 831, 839),
(831, -1, 812, 821),
(812, 5, 68, 7),
(821, 14, 674, 0),
(839, 14, 16, 0),
(845, -2, 825, 836),
(825, -1, 806, 815),
(806, 5, 76, 7),
(815, 14, 688, 0),
(836, 14, 2, 0),
(849, -2, 829, 842),
(829, -1, 810, 819),
(810, 5, 530, 7),
(819, 14, 562, 0),
(842, 14, 128, 0),
(846, -2, 826, 835),
(826, -1, 807, 816),
(807, 5, 72, 7),
(816, 14, 1100, 0),
(835, 14, 1, 0),
(847, -2, 827, 840),
(827, -1, 808, 817),
(808, 5, 81, 7),
(817, 14, 658, 0),
(840, 14, 32, 0);
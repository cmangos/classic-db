-- Fixed quests 7481 & 7482 (Elven Legends - Alliance / Horde) by adding missing
-- gossip_menu_options and missing DBscripts on gossip. Thanks TheTrueAnimal
-- for pointing. This closes #637
-- Also fixed quest requirements
-- Source: YTDB and http://www.wowhead.com/quest=7482
SET @STRING := 2000000196;
SET @CONDITION := 48;

DELETE FROM `conditions` WHERE `condition_entry` IN (@CONDITION, @CONDITION + 1);
INSERT INTO `conditions` VALUES
(@CONDITION, 9, 7482, 0),
(@CONDITION + 1, 9, 7481, 0);


DELETE FROM `gossip_menu_option` WHERE `menu_id` = 5743;
INSERT INTO `gossip_menu_option` VALUES
(5743, 0, 0, 'Mourn the great loss.', 1, 1, -1, 0, 574301, 0, 0, NULL, @CONDITION),
(5743, 1, 0, 'Mourn the great loss.', 1, 1, -1, 0, 574302, 0, 0, NULL, @CONDITION + 1);

DELETE FROM `dbscripts_on_gossip` WHERE `id` IN (574301, 574302);
INSERT INTO `dbscripts_on_gossip` VALUES
(574301, 0, 7, 7482, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(574301, 2, 3, 0, 0, 14368, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0.7, ''),
(574301, 4, 0, 0, 0, 14368, 20, 0, @STRING, 0, 0, 0, 0, 0, 0, 0, ''),
(574301, 7, 0, 0, 0, 14368, 20, 0, @STRING + 1, 0, 0, 0, 0, 0, 0, 0, ''),
(574301, 13, 0, 0, 0, 14368, 20, 0, @STRING + 2, 0, 0, 0, 0, 0, 0, 0, ''),
(574301, 20, 3, 0, 0, 14368, 20, 0, 0, 0, 0, 0, 0, 0, 0, 3.07178, ''),
(574302, 0, 7, 7481, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(574302, 2, 3, 0, 0, 14368, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0.7, ''),
(574302, 4, 0, 0, 0, 14368, 20, 0, @STRING, 0, 0, 0, 0, 0, 0, 0, ''),
(574302, 7, 0, 0, 0, 14368, 20, 0, @STRING + 1, 0, 0, 0, 0, 0, 0, 0, ''),
(574302, 13, 0, 0, 0, 14368, 20, 0, @STRING + 2, 0, 0, 0, 0, 0, 0, 0, ''),
(574302, 20, 3, 0, 0, 14368, 20, 0, 0, 0, 0, 0, 0, 0, 0, 3.07178, '');

DELETE FROM `db_script_string` WHERE `entry` IN (@STRING, @STRING + 1, @STRING + 2);
INSERT INTO `db_script_string` VALUES
(@STRING, 'I very much doubt that he will have anything to say, stranger...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(@STRING + 1, 'I personally didn\'t mind him. It was the Prince who took exception to a high elf in his domain. Alas, I am not one to question the Prince. In his defense, he did not incinerate Master Winthalus immediately.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(@STRING + 2, 'We most definitely do not need any more attention drawn to us, stranger. Return to those that sent you in search of the lost master and tell them that nothing could be found. When this is done - and I will know when it is so - return and I shall reveal the secrets of the deceased.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL);

UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 0, `ReqCreatureOrGOCount1` = 0 WHERE `entry` IN (7481, 7482);

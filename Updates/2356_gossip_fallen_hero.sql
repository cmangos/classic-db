-- Fallen Hero of the Horde
-- gossip moved from SD2 into DB
DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 1518 AND 1523;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES
(1518, 9, 2801, 0, 'Quest ID 2801 Taken'),
(1519, 9, 2784, 0, 'Quest ID 2784 Taken'),
(1520, -2, 1518, 1519, '(Quest ID 2801 Taken OR Quest ID 2784 Taken)'),
(1521, 9, 2701, 0, 'Quest ID 2701 Taken'),
(1522, 9, 2702, 0, 'Quest ID 2702 Taken'),
(1523, -2, 1521, 1522, '(Quest ID 2701 Taken OR Quest ID 2702 Taken)');

UPDATE `gossip_menu` SET `condition_id` = 1520 WHERE `entry` =840 AND `text_id` =1451;
DELETE FROM `gossip_menu` WHERE `entry` IN (841,842);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(841, 1392, 0, 0),
(842, 1411, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (840,880,884,883,882,881,841,842);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(840, 0, 0, 'Please continue, Hero...', 1, 1, 880, 0, 0, 0, 0, NULL, 1518),
(840, 1, 0, 'Why are you here?', 1, 1, 841, 0, 0, 0, 0, NULL, 1519),
(840, 2, 0, 'Hero, I have urgent business with Corporal Splithoof.', 1, 1, -1, 0, 84001, 0, 0, NULL, 1523),
(841, 0, 0, 'Continue with your story.', 1, 1, 842, 0, 0, 0, 0, NULL, 0),
(842, 0, 0, 'Tragic...', 1, 1, -1, 0, 84201, 0, 0, NULL, 0),
(880, 0, 0, 'What could be worse than death?', 1, 1, 884, 0, 0, 0, 0, NULL, 0),
(881, 0, 0, 'I shall.', 1, 1, -1, 0, 88101, 0, 0, NULL, 0),
(882, 0, 0, 'You can count on me, Hero.', 1, 1, 881, 0, 0, 0, 0, NULL, 0),
(883, 0, 0, 'What are the stones of binding?', 1, 1, 882, 0, 0, 0, 0, NULL, 0),
(884, 0, 0, 'Subordinates?', 1, 1, 883, 0, 0, 0, 0, NULL, 0);

DELETE FROM `dbscripts_on_gossip` WHERE `id` in (84001,84201,88101);
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(84001, 1, 31, 7750, 50, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'search for 7750'),
(84001, 2, 10, 7750, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -10630.3, -2987.05, 28.96, 4.54, 'summon Corporal Thund Splithoof'), -- OR spell 11024
(84201, 0, 7, 2784, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Quest Credit "Fall From Grace"'),
(88101, 0, 7, 2801, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Quest Credit "A Tale of Sorrow"');

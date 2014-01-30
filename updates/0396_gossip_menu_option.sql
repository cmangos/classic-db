-- Thanks Ela for pointing and fixing
-- entries values for texts and gossip menus are temporary as reliable sources are currently missing
-- probably because this content was removed in WotLK
-- Sources:
-- http://www.wowwiki.com/Master_Craftsman_Omarion?oldid=1014129
-- http://www.wowhead.com/quest=9233#comments

-- Added gossip menu for creature 16365 (Omarion) in Naxxramas Military Wing
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 24404 WHERE `entry` = 16365;

-- Added npc texts for creature 16365 (Omarion) in Naxxramas Military Wing
DELETE FROM `npc_text` WHERE `ID` IN (24400, 24401, 24402, 24403, 24404);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
(24400, '<Omarion grumbles something under his breath.>$B$BBut of course I can help you, dear $N. It is my dying wish... my final desire. Please, take this handbook. The information on its pages are a compilation of all that I know and have learned in the past 30 some-odd years of my miserable life. Give the handbook to that good for nothing apprentice of mine that\'s probably sitting on his fat duff at Light\'s Hope Chapel.', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(24401, 'A tailor, eh? Very well. What would you like to learn about, tailor?$B$B', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(24402, 'A blacksmith, eh? Very well. What would you like to learn about, blacksmith?$B$B', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(24403, 'A leatherworker, eh? Very well. What would you like to learn about, leatherworker?$B$B', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(24404, 'Is this the best they could do?$B$B<Omarion musters the strength to laugh.>$B$BYou do not possess the resolve to face a monster like Kel\'Thuzad. You will crumble before his minions - just like those that have come before you...$B$BLeave me here to die. I refuse to return to a world that champions the likes of you.', '', 0, 0, 11, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

-- Added gossip menus for creature 16365 (Omarion) in Naxxramas Military Wing
DELETE FROM `gossip_menu` WHERE `entry` IN (24400, 24401, 24402, 24403, 24404);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(24404, 24404, 0, 0),
(24403, 24403, 0, 0),
(24402, 24402, 0, 0),
(24401, 24401, 0, 0),
(24400, 24400, 0, 0);

-- Added gossip menu options for creature 16365 (Omarion) in Naxxramas Military Wing
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (24400, 24401, 24402, 24403, 24404);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(24400, 1, 0, 'Thank you, Omarion. You have taken a fatal blow for the team on this day.', 1, 1, -1, 0, 2901, 0, 0, NULL, 0),
(24401, 1, 0, 'Glacial Cloak.', 1, 1, 24401, 0, 2902, 0, 0, NULL, 1361),
(24401, 2, 0, 'Glacial Gloves.', 1, 1, 24401, 0, 2903, 0, 0, NULL, 1347),
(24401, 3, 0, 'Glacial Wrists.', 1, 1, 24401, 0, 2904, 0, 0, NULL, 1346),
(24401, 4, 0, 'Glacial Vest.', 1, 1, 24401, 0, 2900, 0, 0, NULL, 1362),
(24401, 5, 0, 'I need to go. Evil stirs. Die well, Omarion.', 1, 1, -1, 0, 0, 0, 0, NULL, 0),
(24402, 1, 0, 'Icebane Bracers.', 1, 1, 24402, 0, 2905, 0, 0, NULL, 1345),
(24402, 2, 0, 'Icebane Gauntlets.', 1, 1, 24402, 0, 2906, 0, 0, NULL, 1344),
(24402, 3, 0, 'Icebane Breastplate.', 1, 1, 24402, 0, 2907, 0, 0, NULL, 1360),
(24402, 4, 0, 'I need to go. Evil stirs. Die well, Omarion.', 1, 1, -1, 0, 0, 0, 0, NULL, 0),
(24403, 1, 0, 'Polar Bracers.', 1, 1, 24403, 0, 2908, 0, 0, NULL, 1342),
(24403, 2, 0, 'Polar Gloves.', 1, 1, 24403, 0, 2909, 0, 0, NULL, 1341),
(24403, 3, 0, 'Polar Tunic.', 1, 1, 24403, 0, 2910, 0, 0, NULL, 1359),
(24403, 4, 0, 'Icy Scale Bracers.', 1, 1, 24403, 0, 2911, 0, 0, NULL, 1339),
(24403, 5, 0, 'Icy Scale Gauntlets.', 1, 1, 24403, 0, 2912, 0, 0, NULL, 1338),
(24403, 6, 0, 'Icy Scale Breastplate.', 1, 1, 24403, 0, 2913, 0, 0, NULL, 1358),
(24403, 7, 0, 'I need to go. Evil stirs. Die well, Omarion.', 1, 1, -1, 0, 0, 0, 0, NULL, 0),
(24404, 1, 0, 'I am a master leatherworker, Omarion.', 1, 1, 24403, 0, 0, 0, 0, NULL, 1353),
(24404, 2, 0, 'I am a master blacksmith, Omarion.', 1, 1, 24402, 0, 0, 0, 0, NULL, 1355),
(24404, 3, 0, 'I am a master tailor, Omarion.', 1, 1, 24401, 0, 0, 0, 0, NULL, 1357),
(24404, 4, 0, 'Omarion, I am not a craftsman. Can you still help me?', 1, 1, 24400, 0, 0, 0, 0, NULL, 1366);

-- Added gossip scripts for creature 16365 (Omarion) in Naxxramas Military Wing
DELETE FROM `dbscripts_on_gossip` WHERE `id` IN (2900, 2901, 2902, 2903, 2904, 2905, 2906, 2907, 2908, 2909, 2910, 2911, 2912, 2913);
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(2913, 0, 15, 28257, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'icy scale breastplate'),
(2912, 0, 15, 28258, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'icy scale gauntlets'),
(2911, 0, 15, 28259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'icy scale bracers'),
(2910, 0, 15, 28254, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'polar tunic'),
(2909, 0, 15, 28255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'polar gloves'),
(2908, 0, 15, 28256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'polar bracers'),
(2907, 0, 15, 28251, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast icebane breastplate'),
(2906, 0, 15, 28253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast icebane gauntlets'),
(2905, 0, 15, 28252, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast icebane bracers'),
(2904, 0, 15, 28262, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast glacial wrists'),
(2903, 0, 15, 28261, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast glacial gloves'),
(2902, 0, 15, 28263, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast glacial cloak'),
(2901, 0, 15, 28287, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Conjure E.C.A.C'),
(2900, 0, 15, 28260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast glacial vest');

-- Added conditions for gossip menus
DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 1337 AND 1366;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
(1337, 17, 28222, 1), -- Doesn't have Icy scale breastplate
(1338, 17, 28223, 1), -- Doesn't have Icy scale gauntlets
(1339, 17, 28224, 1), -- Doesn't have icy scale bracers
(1340, 17, 28219, 1), -- Doesn't have polar tunic
(1341, 17, 28220, 1), -- Doesn't have polar gloves
(1342, 17, 28221, 1), -- Doesn't have polar bracers
(1343, 17, 28242, 1), -- Doesn't have icebane breastplate
(1344, 17, 28243, 1), -- Doesn't have icebane gauntlets
(1345, 17, 28244, 1), -- Doesn't have icebane bracers
(1346, 17, 28209, 1), -- Doesn't have glacial wrists
(1347, 17, 28205, 1), -- Doesn't have glacial gloves
(1348, 17, 28208, 1), -- Doesn't have glacial cloak
(1350, 17, 28207, 1), -- Doesn't have glacial vest
(1357, -1, 1349, 1356),
(1356, 7, 197, 300),
(1355, -1, 1349, 1354),
(1354, 7, 164, 300),
(1353, -1, 1349, 1352),
(1352, 7, 165, 300),
(1351, 5, 529, 7),      -- Argent Dawn Exalted
(1349, 5, 529, 6),      -- Argent Dawn Revered
(1358, -1, 1351, 1337),
(1359, -1, 1351, 1340),
(1360, -1, 1351, 1343), 
(1361, -1, 1351, 1348),
(1362, -1, 1351, 1350),
(1363, 24, 22719, 1),   -- doesn't have item
(1364, 22, 9233, 0),    -- does not have quest taken/rewarded
(1365, -1, 1363, 1364),
(1366, -1, 1365, 1349);

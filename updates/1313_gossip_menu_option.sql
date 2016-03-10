-- Moved to DB gossip menu/gossip menus options used in quest 4224 (The True Masters) by NPC 9563 (Ragged John)

SET @CONDITION := 871;

DELETE FROM conditions WHERE condition_entry=@CONDITION;
INSERT INTO conditions VALUES
(@CONDITION, 9, 4224, 0);

DELETE FROM gossip_menu WHERE entry BETWEEN 2050 AND 2060;
INSERT INTO gossip_menu VALUES
(2050, 2725, 205001, 0),
(2051, 2723, 0, 0),
(2052, 2722, 0, 0),
(2053, 2721, 0, 0),
(2054, 2720, 0, 0),
(2055, 2719, 0, 0),
(2056, 2718, 0, 0),
(2057, 2717, 0, 0),
(2058, 2716, 0, 0),
(2059, 2715, 0, 0),
(2060, 2714, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id BETWEEN 2050 AND 2061;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(2061, 0, 0, 'Official business, John. I need some information about Marshal Windsor. Tell me about the last time you saw him', 1, 1, 2060, 0, 0, 0, 0, '', @CONDITION),
(2060, 0, 0, 'So what did you do?', 1, 1, 2059, 0, 0, 0, 0, '', 0),
(2059, 0, 0, 'Start making sense, dwarf. I don\'t want to have anything to do with your cracker, your pappy, or any sort of \'discreditin\'.', 1, 1, 2058, 0, 0, 0, 0, '', 0),
(2058, 0, 0, 'Ironfoe?', 1, 1, 2057, 0, 0, 0, 0, '', 0),
(2057, 0, 0, 'Interesting... continue, John.', 1, 1, 2056, 0, 0, 0, 0, '', 0),
(2056, 0, 0, 'So that\'s how Windsor died...', 1, 1, 2055, 0, 0, 0, 0, '', 0),
(2055, 0, 0, 'So how did he die?', 1, 1, 2054, 0, 0, 0, 0, '', 0),
(2054, 0, 0, 'Ok, so where the hell is he? Wait a minute! Are you drunk?', 1, 1, 2053, 0, 0, 0, 0, '', 0),
(2053, 0, 0, 'WHY is he in Blackrock Depths?', 1, 1, 2052, 0, 0, 0, 0, '', 0),
(2052, 0, 0, '300? So the Dark Irons killed him and dragged him into the Depths?', 1, 1, 2051, 0, 0, 0, 0, '', 0),
(2051, 0, 0, 'Ahh... Ironfoe.', 1, 1, 2050, 0, 0, 0, 0, '', 0),
(2050, 0, 0, 'Thanks, Ragged John. Your story was very uplifting and informative.', 1, 1, -1, 0, 0, 0, 0, '', 0);

DELETE FROM dbscripts_on_gossip WHERE id=205001;
INSERT INTO `dbscripts_on_gossip` VALUES
(205001, 0, 7, 4224, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

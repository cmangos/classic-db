-- Ragged John
-- gossip moved from sd2 to DB
DELETE FROM `conditions` WHERE `condition_entry` in (1526,1527,1528);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES
('1526', '9', '4866', '0', ''),
('1527', '1', '16468', '0', ''),
('1528', '-1', '1527', '1526', '');

DELETE FROM `gossip_menu` WHERE `entry`=2062;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(2062, 3496, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id` in (2061,2062);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(2061, 0, 0, 'Official business, John. I need some information about Marshal Windsor. Tell me about the last time you saw him', 1, 1, 2060, 0, 0, 0, 0, '', 1061),
(2061, 1, 0, 'Milk me, John.', 1, 1, 2062, 0, 0, 0, 0, NULL, 1528),
(2062, 0, 0, 'Do it... Do it now.', 1, 1, -1, 0, 206201, 0, 0, NULL, 0);

DELETE FROM `dbscripts_on_gossip` WHERE `id`=206201;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('206201', '0', '15', '16472', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'cast Wicked Milking'),
('206201', '1', '7', '4866', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Quest Credit Mother''s Milk');

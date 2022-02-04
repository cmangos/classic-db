-- Add WPL cauldron gossip menu
DELETE FROM `gossip_menu` WHERE `entry` = 3183; -- Source: Vanilla MaNGOS
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(3183, 3939, 0, 0),
(3183, 4040, 0, 3734); -- condition 60007 = "3734	8	5230	0	0	0	0	Quest ID 5230 Rewarded"

DELETE FROM gossip_menu_option WHERE menu_id IN(3183) AND id IN(0);
INSERT INTO gossip_menu_option(menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
('3183', '0', '0', 'How are we doing in the battle to subvert the cauldrons?', '6552', '1', '1', '0', '0', '0', '0', '0', '', '0', '0');
-- 3241
DELETE FROM gossip_menu WHERE entry IN(3241);
INSERT INTO gossip_menu VALUES
('3241', '3996', '0', '0'),
('3241', '3997', '0', '3742'),
('3241', '3998', '0', '3743'),
('3241', '3999', '0', '3744');

UPDATE gossip_menu_option SET condition_id=3734 WHERE menu_id IN(3183) AND id IN(0);
UPDATE gossip_menu_option SET condition_id=3738 WHERE menu_id IN(3184) AND id IN(0);

DELETE FROM conditions WHERE condition_entry BETWEEN 3734 AND 3744;
INSERT INTO conditions(condition_entry, type, value1, value2, value3, value4, flags) VALUES
('3734', '8', '5230', '0', '0', '0', '0'),
('3735', '8', '5232', '0', '0', '0', '0'),
('3736', '8', '5234', '0', '0', '0', '0'),
('3737', '8', '5236', '0', '0', '0', '0'),
('3738', '8', '5217', '0', '0', '0', '0'),
('3739', '8', '5220', '0', '0', '0', '0'),
('3740', '8', '5223', '0', '0', '0', '0'),
('3741', '8', '5226', '0', '0', '0', '0'),
('3742', '-2', '3735', '3739', '0', '0', '0'),
('3743', '-2', '3736', '3740', '0', '0', '0'),
('3744', '-2', '3737', '3741', '0', '0', '0');

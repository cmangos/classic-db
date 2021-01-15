DELETE FROM dbscripts_on_relay WHERE id=9002 AND delay=0 AND command=28;
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(9002, 0, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'High Inquisitor Fairbanks - STATE_STAND');

-- adjust condition to has in inventory or equipped (instead of only has equipped)
UPDATE conditions SET `type`=2, `comments`='Player Has 1 or more of Item ID 22691 in Inventory' WHERE condition_entry=9000;

-- High Inquisitor Fairbanks blizzlike gossip adjustments
UPDATE creature_template SET GossipMenuId=0 WHERE GossipMenuId=30101 AND Entry IN (4542,16439);
UPDATE creature_template SET GossipMenuId=7283 WHERE Entry=4542;
-- cleanup old custom IDs/entries
DELETE FROM gossip_menu WHERE entry BETWEEN 30101 AND 30117;
DELETE FROM gossip_menu_option WHERE menu_id BETWEEN 30101 AND 30117;
DELETE FROM npc_text WHERE Id BETWEEN 30117 AND 30133;
DELETE FROM gossip_menu WHERE entry IN (7284,7283,7282,7281,7280,7279,7278,7277,7276,7275,7274,7273,7272,7271,7270,7269,7268);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7284, 8612, 0, 0),
(7283, 8595, 0, 0),
(7282, 8596, 0, 0),
(7281, 8597, 0, 0),
(7280, 8598, 0, 0),
(7279, 8599, 0, 0),
(7278, 8600, 0, 0),
(7277, 8601, 0, 0),
(7276, 8602, 0, 0),
(7275, 8603, 0, 0),
(7274, 8604, 0, 0),
(7273, 8605, 0, 0),
(7272, 8606, 0, 0),
(7271, 8607, 0, 0),
(7270, 8608, 0, 0),
(7269, 8609, 0, 0),
(7268, 8610, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id IN (7283,7282,7281,7280,7279,7278,7277,7276,7275,7274,7273,7272,7271,7270,7269,7268);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
('7283', '0', '0', 'Curse? What\'s going on here, Fairbanks?', '12481', '1', '1', '7282', '0', '0', '0', '0', NULL, '0', '9000'),
('7282', '0', '0', 'Mograine?', '12483', '1', '1', '7281', '0', '0', '0', '0', NULL, '0', '0'),
('7281', '0', '0', 'What do you mean?', '12485', '1', '1', '7280', '0', '0', '0', '0', NULL, '0', '0'),
('7280', '0', '0', 'I still do not fully understand.', '12487', '1', '1', '7279', '0', '0', '0', '0', NULL, '0', '0'),
('7279', '0', '0', 'Incredible story. So how did he die?', '12489', '1', '1', '7278', '0', '0', '0', '0', NULL, '0', '0'),
('7278', '0', '0', 'You mean...', '12491', '1', '1', '7277', '0', '0', '0', '0', NULL, '0', '0'),
('7277', '0', '0', 'How do you know all of this?', '12493', '1', '1', '7276', '0', '0', '0', '0', NULL, '0', '0'),
('7276', '0', '0', 'A thousand? For one man?', '12495', '1', '1', '7275', '0', '0', '0', '0', NULL, '0', '0'),
('7275', '0', '0', 'Yet? Yet what??', '12497', '1', '1', '7274', '0', '0', '0', '0', NULL, '0', '0'),
('7274', '0', '0', 'And did he?', '12499', '1', '1', '7273', '0', '0', '0', '0', NULL, '0', '0'),
('7273', '0', '0', 'Continue please, Fairbanks.', '12501', '1', '1', '7272', '0', '0', '0', '0', NULL, '0', '0'),
('7272', '0', '0', 'You mean...', '12503', '1', '1', '7271', '0', '0', '0', '0', NULL, '0', '0'),
('7271', '0', '0', 'You were right, Fairbanks. That is tragic.', '12505', '1', '1', '7270', '0', '0', '0', '0', NULL, '0', '0'),
('7270', '0', '0', 'And you did...', '12507', '1', '1', '7269', '0', '0', '0', '0', NULL, '0', '0'),
('7269', '0', '0', 'You tell an incredible tale, Fairbanks. What of the blade? Is it beyond redemption?', '12509', '1', '1', '7268', '0', '0', '0', '0', NULL, '0', '0'),
('7268', '0', '0', 'But his son is dead.', '12511', '1', '1', '7284', '0', '0', '0', '0', NULL, '0', '0');
DELETE FROM npc_text WHERE Id IN (8595,8596,8597,8598,8599,8600,8601,8602,8603,8604,8605,8606,8607,8608,8609,8610,8612);
DELETE FROM npc_text_broadcast_text WHERE Id IN (8595,8596,8597,8598,8599,8600,8601,8602,8603,8604,8605,8606,8607,8608,8609,8610,8612);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(8595, 1, 12480),
(8596, 1, 12482),
(8597, 1, 12484),
(8598, 1, 12486),
(8599, 1, 12488),
(8600, 1, 12490),
(8601, 1, 12492),
(8602, 1, 12494),
(8603, 1, 12496),
(8604, 1, 12498),
(8605, 1, 12500),
(8606, 1, 12502),
(8607, 1, 12504),
(8608, 1, 12506),
(8609, 1, 12508),
(8610, 1, 12510),
(8612, 1, 12512);

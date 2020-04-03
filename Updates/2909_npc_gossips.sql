-- Orphan Matron Nightingale (14450) - gossip menu 5849
-- Orphan Matron Battlewail (14451) - gossip menu 5848
DELETE FROM conditions WHERE condition_entry IN (1477);
INSERT INTO conditions (condition_entry, type, value1, value2, comments) VALUES
(1477, 12, 10, 0, 'Event ID 10 Active');
DELETE FROM gossip_menu_option WHERE menu_id=5848;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(5848, 1, 0, 'Well what do you know, this is Children''s Week! What can I do to help?', 9675, 1, 1, 60001, 0, 0, 0, 0, '', 0, 1477);
UPDATE gossip_menu_option SET option_broadcast_text=9675, action_menu_id=60000, condition_id=1477 WHERE menu_id=5849;
DELETE FROM gossip_menu WHERE entry IN (60000,60001);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(60000, 60000, 0, 0),
(60001, 60001, 0, 0);
DELETE FROM npc_text WHERE Id IN (7010,7011);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7010,7011,60000,60001);
INSERT INTO npc_text_broadcast_text (Id, Prob0, Prob1, Prob2, Prob3, Prob4, Prob5, Prob6, Prob7, BroadcastTextId0, BroadcastTextId1, BroadcastTextId2, BroadcastTextId3, BroadcastTextId4, BroadcastTextId5, BroadcastTextId6, BroadcastTextId7) VALUES
(7010, 1, 0, 0, 0, 0, 0, 0, 0, 9656, 0, 0, 0, 0, 0, 0, 0),
(7011, 1, 0, 0, 0, 0, 0, 0, 0, 9659, 0, 0, 0, 0, 0, 0, 0),
(60000, 1, 0, 0, 0, 0, 0, 0, 0, 9677, 0, 0, 0, 0, 0, 0, 0),
(60001, 1, 0, 0, 0, 0, 0, 0, 0, 9678, 0, 0, 0, 0, 0, 0, 0);

-- Quartermaster Miranda Breechlock (11536)
UPDATE gossip_menu_option SET option_broadcast_text=12237 WHERE menu_id=7208 AND id=0;
UPDATE gossip_menu_option SET option_broadcast_text=12238 WHERE menu_id=7208 AND id=1;
UPDATE gossip_menu_option SET option_broadcast_text=12239 WHERE menu_id=7208 AND id=2;
UPDATE gossip_menu_option SET option_broadcast_text=12240 WHERE menu_id=7208 AND id=3;
UPDATE gossip_menu_option SET option_broadcast_text=6878 WHERE menu_id=3461 AND id=0;
UPDATE gossip_menu_option SET option_broadcast_text=2583 WHERE menu_id=3461 AND id=1;
UPDATE gossip_menu_option SET option_broadcast_text=12226, action_menu_id=7208 WHERE menu_id=3461 AND id=2;
DELETE FROM npc_text WHERE id IN (4213,8498,8499,8500,8502,8503);
DELETE FROM npc_text_broadcast_text WHERE id IN (4213,8498,8499,8500,8502,8503);
INSERT INTO npc_text_broadcast_text (Id, Prob0, Prob1, Prob2, Prob3, Prob4, Prob5, Prob6, Prob7, BroadcastTextId0, BroadcastTextId1, BroadcastTextId2, BroadcastTextId3, BroadcastTextId4, BroadcastTextId5, BroadcastTextId6, BroadcastTextId7) VALUES
(4213, 1, 0, 0, 0, 0, 0, 0, 0, 6882, 0, 0, 0, 0, 0, 0, 0),
(8498, 1, 0, 0, 0, 0, 0, 0, 0, 12227, 0, 0, 0, 0, 0, 0, 0),
(8499, 1, 0, 0, 0, 0, 0, 0, 0, 12229, 0, 0, 0, 0, 0, 0, 0),
(8500, 1, 0, 0, 0, 0, 0, 0, 0, 12232, 0, 0, 0, 0, 0, 0, 0),
(8502, 1, 0, 0, 0, 0, 0, 0, 0, 12235, 0, 0, 0, 0, 0, 0, 0),
(8503, 1, 0, 0, 0, 0, 0, 0, 0, 12236, 0, 0, 0, 0, 0, 0, 0);

-- Rayne (16135)
DELETE FROM npc_text WHERE id IN (8358,8385,8386,8416);
DELETE FROM npc_text_broadcast_text WHERE id IN (8358,8385,8386,8387,8416);
INSERT INTO npc_text_broadcast_text (Id, Prob0, Prob1, Prob2, Prob3, Prob4, Prob5, Prob6, Prob7, BroadcastTextId0, BroadcastTextId1, BroadcastTextId2, BroadcastTextId3, BroadcastTextId4, BroadcastTextId5, BroadcastTextId6, BroadcastTextId7) VALUES
(8358, 1, 0, 0, 0, 0, 0, 0, 0, 11950, 0, 0, 0, 0, 0, 0, 0),
(8385, 1, 0, 0, 0, 0, 0, 0, 0, 12016, 0, 0, 0, 0, 0, 0, 0),
(8386, 1, 0, 0, 0, 0, 0, 0, 0, 12018, 0, 0, 0, 0, 0, 0, 0),
(8387, 1, 0, 0, 0, 0, 0, 0, 0, 12020, 0, 0, 0, 0, 0, 0, 0),
(8416, 1, 0, 0, 0, 0, 0, 0, 0, 12091, 0, 0, 0, 0, 0, 0, 0);
UPDATE gossip_menu_option SET option_broadcast_text=12090, action_menu_id=7152 WHERE menu_id=7104;
DELETE FROM gossip_menu_option WHERE menu_id=7104 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id IN (7123,7124);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(7104, 0, 0, 'Hello, Rayne. What brings the Cenarion Circle to the Plaguelands?', 12015, 1, 1, 7123, 0, 0, 0, 0, '', 0, 0),
(7123, 0, 0, 'Are these lands not beyond healing? They look pretty beat up.', 12017, 1, 1, 7124, 0, 0, 0, 0, '', 0, 0),
(7124, 0, 0, 'What kind of services?', 12019, 1, 1, 7125, 0, 0, 0, 0, '', 0, 0);
DELETE FROM gossip_menu WHERE entry IN (7123,7124,7125);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7123, 8385, 0, 0),
(7124, 8386, 0, 0),
(7125, 8387, 0, 0);

-- Archmage Angela Dosantos (16116)
DELETE FROM npc_text_broadcast_text WHERE id IN (8350,8388,8389,8390,8391,8392,8393,8394,8395,8396,8397,8414);
INSERT INTO npc_text_broadcast_text (Id, Prob0, Prob1, Prob2, Prob3, Prob4, Prob5, Prob6, Prob7, BroadcastTextId0, BroadcastTextId1, BroadcastTextId2, BroadcastTextId3, BroadcastTextId4, BroadcastTextId5, BroadcastTextId6, BroadcastTextId7) VALUES
(8350, 1, 0, 0, 0, 0, 0, 0, 0, 11940, 0, 0, 0, 0, 0, 0, 0),
(8388, 1, 0, 0, 0, 0, 0, 0, 0, 12022, 0, 0, 0, 0, 0, 0, 0),
(8389, 1, 0, 0, 0, 0, 0, 0, 0, 12024, 0, 0, 0, 0, 0, 0, 0),
(8390, 1, 0, 0, 0, 0, 0, 0, 0, 12026, 0, 0, 0, 0, 0, 0, 0),
(8391, 1, 0, 0, 0, 0, 0, 0, 0, 12028, 0, 0, 0, 0, 0, 0, 0),
(8392, 1, 0, 0, 0, 0, 0, 0, 0, 12030, 0, 0, 0, 0, 0, 0, 0),
(8393, 1, 0, 0, 0, 0, 0, 0, 0, 12032, 0, 0, 0, 0, 0, 0, 0),
(8394, 1, 0, 0, 0, 0, 0, 0, 0, 12034, 0, 0, 0, 0, 0, 0, 0),
(8395, 1, 0, 0, 0, 0, 0, 0, 0, 12036, 0, 0, 0, 0, 0, 0, 0),
(8396, 1, 0, 0, 0, 0, 0, 0, 0, 12038, 0, 0, 0, 0, 0, 0, 0),
(8397, 1, 0, 0, 0, 0, 0, 0, 0, 12040, 0, 0, 0, 0, 0, 0, 0),
(8414, 1, 0, 0, 0, 0, 0, 0, 0, 12087, 0, 0, 0, 0, 0, 0, 0);
UPDATE gossip_menu_option SET option_broadcast_text=12021, action_menu_id=7135 WHERE menu_id=7096 AND id=0;
UPDATE gossip_menu_option SET option_broadcast_text=12086, action_menu_id=7150 WHERE menu_id=7096 AND id=1;

-- Huntsman Leopold (16132)
DELETE FROM npc_text WHERE id IN (8356,8369,8370,8408);
DELETE FROM npc_text_broadcast_text WHERE id IN (8356,8369,8370,8408);
INSERT INTO npc_text_broadcast_text (Id, Prob0, Prob1, Prob2, Prob3, Prob4, Prob5, Prob6, Prob7, BroadcastTextId0, BroadcastTextId1, BroadcastTextId2, BroadcastTextId3, BroadcastTextId4, BroadcastTextId5, BroadcastTextId6, BroadcastTextId7) VALUES
(8356, 1, 0, 0, 0, 0, 0, 0, 0, 11948, 0, 0, 0, 0, 0, 0, 0),
(8369, 1, 0, 0, 0, 0, 0, 0, 0, 11979, 0, 0, 0, 0, 0, 0, 0),
(8370, 1, 0, 0, 0, 0, 0, 0, 0, 11981, 0, 0, 0, 0, 0, 0, 0),
(8408, 1, 0, 0, 0, 0, 0, 0, 0, 12076, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM gossip_menu WHERE entry IN (7111,7112);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7111, 8369, 0, 0),
(7112, 8370, 0, 0);
UPDATE gossip_menu_option SET option_broadcast_text=12075, action_menu_id=7144 WHERE menu_id=7102 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=7102 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7111;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(7102, 0, 0, 'What is Cryptstalker armor?', 11978, 1, 1, 7111, 0, 0, 0, 0, '', 0, 0),
(7111, 0, 0, 'Continue please.', 11980, 1, 1, 7112, 0, 0, 0, 0, '', 0, 0);

-- Rohan the Assassin (16131)
DELETE FROM gossip_menu_option WHERE menu_id=7101 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id IN (7118,7119,7120,7121);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(7101, 0, 0, 'What is it that you do exactly, Rohan?', 12003, 1, 1, 7118, 0, 0, 0, 0, '', 0, 0),
(7118, 0, 0, 'So what brings you to Light''s Hope?', 12005, 1, 1, 7119, 0, 0, 0, 0, '', 0, 0),
(7119, 0, 0, 'What? Bonescythe?', 12007, 1, 1, 7120, 0, 0, 0, 0, '', 0, 0),
(7120, 0, 0, 'Wow, you''re insane, aren''t you?', 12009, 1, 1, 7121, 0, 0, 0, 0, '', 0, 0),
(7121, 0, 0, 'Hey wait, Gadgetzan has a disco?', 12011, 1, 1, 7122, 0, 0, 0, 0, '', 0, 0);
UPDATE gossip_menu_option SET option_broadcast_text=12077, action_menu_id=7145 WHERE menu_id=7101 AND id=1;
DELETE FROM npc_text WHERE id IN (8355,8380,8381,8382,8383,8384,8409);
DELETE FROM npc_text_broadcast_text WHERE id IN (8355,8380,8381,8382,8383,8384,8409);
INSERT INTO npc_text_broadcast_text (Id, Prob0, Prob1, Prob2, Prob3, Prob4, Prob5, Prob6, Prob7, BroadcastTextId0, BroadcastTextId1, BroadcastTextId2, BroadcastTextId3, BroadcastTextId4, BroadcastTextId5, BroadcastTextId6, BroadcastTextId7) VALUES
(8355, 1, 0, 0, 0, 0, 0, 0, 0, 11947, 0, 0, 0, 0, 0, 0, 0),
(8380, 1, 0, 0, 0, 0, 0, 0, 0, 12004, 0, 0, 0, 0, 0, 0, 0),
(8381, 1, 0, 0, 0, 0, 0, 0, 0, 12006, 0, 0, 0, 0, 0, 0, 0),
(8382, 1, 0, 0, 0, 0, 0, 0, 0, 12008, 0, 0, 0, 0, 0, 0, 0),
(8383, 1, 0, 0, 0, 0, 0, 0, 0, 12010, 0, 0, 0, 0, 0, 0, 0),
(8384, 1, 0, 0, 0, 0, 0, 0, 0, 12012, 0, 0, 0, 0, 0, 0, 0),
(8409, 1, 0, 0, 0, 0, 0, 0, 0, 12078, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM gossip_menu WHERE entry IN (7118,7119,7120,7121,7122);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7118, 8380, 0, 0),
(7119, 8381, 0, 0),
(7120, 8382, 0, 0),
(7121, 8383, 0, 0),
(7122, 8384, 0, 0);

-- Korfax, Champion of the Light (16112)
DELETE FROM npc_text WHERE id IN (8353,8363,8364,8365,8415);
DELETE FROM npc_text_broadcast_text WHERE id IN (8353,8363,8364,8365,8415);
INSERT INTO npc_text_broadcast_text (Id, Prob0, Prob1, Prob2, Prob3, Prob4, Prob5, Prob6, Prob7, BroadcastTextId0, BroadcastTextId1, BroadcastTextId2, BroadcastTextId3, BroadcastTextId4, BroadcastTextId5, BroadcastTextId6, BroadcastTextId7) VALUES
(8353, 1, 0, 0, 0, 0, 0, 0, 0, 11943, 0, 0, 0, 0, 0, 0, 0),
(8363, 1, 0, 0, 0, 0, 0, 0, 0, 11961, 0, 0, 0, 0, 0, 0, 0),
(8364, 1, 0, 0, 0, 0, 0, 0, 0, 11963, 0, 0, 0, 0, 0, 0, 0),
(8365, 1, 0, 0, 0, 0, 0, 0, 0, 11965, 0, 0, 0, 0, 0, 0, 0),
(8415, 1, 0, 0, 0, 0, 0, 0, 0, 12089, 0, 0, 0, 0, 0, 0, 0);
UPDATE gossip_menu_option SET option_broadcast_text=12088, action_menu_id=7151 WHERE menu_id=7099 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=7099 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id IN (7106,7107);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(7099, 0, 0, 'What is Dreadnaught armor?', 11960, 1, 1, 7106, 0, 0, 0, 0, '', 0, 0),
(7106, 0, 0, 'Continue please.', 11962, 1, 1, 7107, 0, 0, 0, 0, '', 0, 0),
(7107, 0, 0, 'Anything else?', 11964, 1, 1, 7108, 0, 0, 0, 0, '', 0, 0);
DELETE FROM gossip_menu WHERE entry IN (7106,7107,7108);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7106, 8363, 0, 0),
(7107, 8364, 0, 0),
(7108, 8365, 0, 0);

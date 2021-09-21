-- Initial clean-up of Classic DB version in order to synchronise all cores/DBs
DELETE FROM gossip_menu_option WHERE menu_id IN (SELECT entry FROM gossip_menu WHERE text_id IN (8524,8517,8518,8519,8520,8521,8522,8523,8529,8530,8531));
DELETE FROM gossip_menu WHERE text_id IN (8524,8517,8518,8519,8520,8521,8522,8523,8529,8530,8531);
DELETE FROM dbscripts_on_gossip WHERE id=8400;

-- TBD-DB backport
-- Archmage Tarsis Kir-Moldir
-- goes with core script npc_archmage_tarsis
DELETE FROM conditions WHERE condition_entry IN (2300,2301);
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(2300, 2, 22727, 1, 0, 0, 0, 'Player Has 1 or more of Item ID 9281 in Inventory'),
(2301, -3, 2300, 0, 0, 0, 0, 'NOT Player Has 1 or more of Item ID 9281 in Inventory');

UPDATE creature_template SET SpeedWalk=(2.5/2.5), Faction=35, UnitFlags=512, GossipMenuId=7229 WHERE Entry=16381;
DELETE FROM gossip_menu WHERE entry=50003; -- remove old temporary menu entry
DELETE FROM gossip_menu WHERE entry IN (7229,7228,7227,7226,7225,7224,7223,7222,7233,7232,7231);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7229, 8524, 722901, 0),
(7228, 8517, 0, 0),
(7227, 8518, 0, 0),
(7226, 8519, 0, 0),
(7225, 8520, 0, 0),
(7224, 8521, 0, 0),
(7223, 8522, 0, 0),
(7222, 8523, 0, 0),
(7233, 8529, 0, 0),
(7232, 8530, 0, 0),
(7231, 8531, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id IN (7228,7227,7226,7225,7224,7223,7222,7233,7232);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(7228, 0, 0, 'What are you talking about, mage?', 12283, 1, 1, 7227, 0, 0, 0, 0, '', 0, 2301),
(7228, 1, 0, 'What is it Tarsis? I don''t know what to do!', 12313, 1, 1, 0, 0, 722902, 0, 0, '', 0, 2300), -- guessed
(7227, 0, 0, 'Why have you done such horrible things?', 12285, 1, 1, 7226, 0, 0, 0, 0, '', 0, 0),
(7226, 0, 0, 'I still do not understand.', 12287, 1, 1, 7225, 0, 0, 0, 0, '', 0, 0),
(7225, 0, 0, 'You are talking nonsense, mage. ', 12289, 1, 1, 7224, 0, 0, 0, 0, '', 0, 0),
(7224, 0, 0, 'What staff?', 12291, 1, 1, 7223, 0, 0, 0, 0, '', 0, 0),
(7223, 0, 0, 'You said you would have it back. What does that mean?', 12293, 1, 1, 7222, 0, 0, 0, 0, '', 0, 0),
(7222, 0, 0, 'What happened to the staff?', 12304, 1, 1, 7233, 0, 0, 0, 0, '', 0, 0),
(7233, 0, 0, 'So what has led you to Naxxramas?', 12306, 1, 1, 7232, 0, 0, 0, 0, '', 0, 0),
(7232, 0, 0, 'So Kel''Thuzad holds all of the pieces?', 12308, 1, 1, 7231, 0, 0, 0, 0, '', 0, 0);

DELETE FROM npc_text WHERE id IN (8524,8517,8518,8519,8520,8521,8522,8523,8529,8530,8531);
DELETE FROM npc_text_broadcast_text WHERE Id IN (8524,8517,8518,8519,8520,8521,8522,8523,8529,8530,8531);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(8524, 0, 12297),
(8517, 0, 12282),
(8518, 0, 12284),
(8519, 0, 12286),
(8520, 0, 12288),
(8521, 0, 12290),
(8522, 0, 12292),
(8523, 0, 12294),
(8529, 0, 12305),
(8530, 0, 12307),
(8531, 0, 12309);

DELETE FROM dbscripts_on_gossip WHERE id=8400; -- old/bad script
DELETE FROM dbscripts_on_gossip WHERE id IN (722901,722902);
INSERT INTO dbscripts_on_gossip (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(722901, 0, 0, 29, 1, 0, 0, 16381, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - Remove Gossip NPCFlag'),
(722901, 3000, 0, 28, 8, 0, 0, 16381, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - Set Stand State to Kneel'),
(722901, 3000, 0, 0, 0, 0, 0, 16381, 25, 0, 2000006200, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - Say Emote Text'),
(722901, 6000, 0, 28, 1, 0, 0, 16381, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - Set Stand State to Sit'),
(722901, 6000, 0, 0, 0, 0, 0, 16381, 25, 0, 2000006201, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - Say Emote Text'),
(722901, 8000, 0, 29, 1, 1, 0, 16381, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - Add Gossip NPCFlag'),

(722902, 0, 0, 29, 1, 0, 0, 16381, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - Remove Gossip NPCFlag'),
(722902, 1000, 0, 28, 0, 0, 0, 16381, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - Set Stand State to Stand'), -- guesswork
(722902, 3000, 0, 0, 0, 0, 0, 16381, 25, 0, 2000006203, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - Say Text'),
(722902, 6000, 0, 0, 0, 0, 0, 16381, 25, 0, 2000006204, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - Say Emote Text'),
(722902, 8000, 0, 15, 7, 0, 0, 16381, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - Cast Suicide'); -- guesswork

DELETE FROM dbscript_string WHERE entry IN (2000006200,2000006201,2000006203,2000006204);
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, broadcast_text_id, comment) VALUES
(2000006200, '%s gets to one knee.', 0, 2, 0, 0, 12295, 'Archmage Tarsis Kir-Moldir'),
(2000006201, '%s sits down.', 0, 2, 0, 0, 12296, 'Archmage Tarsis Kir-Moldir'),
(2000006203, 'You... The frame! How? You must not... It... the Destroyer...', 0, 0, 0, 0, 12312, 'Archmage Tarsis Kir-Moldir'),
(2000006204, '%s scratches at his throat.', 0, 2, 0, 0, 12314, 'Archmage Tarsis Kir-Moldir');


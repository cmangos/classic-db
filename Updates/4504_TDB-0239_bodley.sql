-- bodley
UPDATE creature_template SET GossipMenuId=7044,NpcFlags=3 WHERE entry=16033;
UPDATE creature_template_addon SET auras='27614 27978' WHERE entry IN(16033); -- missed 27978
DELETE FROM npc_text_broadcast_text WHERE Id IN(8271,25001,25002,25003,25004,25005,8339,8340,25008,25009,25010,25011); -- no longer in sniffs
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(8271,1,11772),
(25001,1,11775),
(25002,1,11831),
(25003,1,11912),
(25004,1,11777),
(25005,1,11785),
(8339,1,11918),
(8340,1,11920),
(25008,1,11781),
(25009,1,11787),
(25010,1,11779),
(25011,1,11774);
DELETE FROM npc_text_broadcast_text WHERE Id IN(8338, 8341, 8342, 8343); -- these were in sniffs
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(8338,1,11916),
(8341,1,11922),
(8342,1,11924),
(8343,1,11926);
DELETE FROM gossip_menu WHERE entry IN(7044,7041,7043,7087,7086,7085,7090,7089,7088);
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
(7044,25004,0,8010),
(7044,25003,0,8007),
(7044,25002,0,8006),
(7044,25001,0,8001),
(7044,8271,0,0),
-- bodley retrieve amulet
(7041,25004,0,0),
-- amulet retrieved - missing top and whole - guessed ids
(7039,25008,0,0), -- left
(7038,25010,0,0), -- top
(7037,25011,0,0), -- whole
-- bodley retrieve brazier
(7043,25005,0,0),
-- brazier retrieved
(7042,25009,0,0),
-- bodley whats going on
(7087,8338,0,0),
(7086,8339,0,0),
(7085,8340,0,0),
(7090,8341,0,0),
(7089,8342,0,0),
(7088,8343,0,0);
DELETE FROM conditions WHERE condition_entry BETWEEN 8001 AND 8062;
INSERT INTO conditions(condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
('8001', '8', '8961', '0', '0', '0', '0', 'Quest ID 8961 Rewarded'), -- three kings of flame
('8002', '8', '8962', '0', '0', '0', '0', 'Quest ID 8962 Rewarded'), -- Components of importance variants
('8003', '8', '8963', '0', '0', '0', '0', 'Quest ID 8963 Rewarded'),
('8004', '8', '8964', '0', '0', '0', '0', 'Quest ID 8964 Rewarded'),
('8005', '8', '8965', '0', '0', '0', '0', 'Quest ID 8965 Rewarded'),
('8006', '-2', '8002', '8003', '8004', '8005', '0', ''),
('8007', '8', '8996', '0', '0', '0', '0', 'Quest ID 8996 Rewarded'), -- return to bodley
('8008', '8', '8998', '0', '0', '0', '0', 'Quest ID 8998 Rewarded'), -- back to the beginning variants
('8009', '8', '8997', '0', '0', '0', '0', 'Quest ID 8997 Rewarded'),
('8010', '-2', '8008', '8009', '0', '0', '0', ''),
('8011', '9', '8966', '0', '0', '0', '0', 'Quest ID 8966 Taken'),
('8012', '9', '8967', '0', '0', '0', '0', 'Quest ID 8967 Taken'),
('8013', '9', '8968', '0', '0', '0', '0', 'Quest ID 8968 Taken'),
('8014', '9', '8969', '0', '0', '0', '0', 'Quest ID 8969 Taken'),
('8015', '8', '8966', '0', '0', '0', '0', 'Quest ID 8966 Rewarded'),
('8016', '8', '8967', '0', '0', '0', '0', 'Quest ID 8967 Rewarded'),
('8017', '8', '8968', '0', '0', '0', '0', 'Quest ID 8968 Rewarded'),
('8018', '8', '8969', '0', '0', '0', '0', 'Quest ID 8969 Rewarded'),
('8019', '-2', '8011', '8015', '0', '0', '0', ''),
('8020', '-2', '8012', '8016', '0', '0', '0', ''),
('8021', '-2', '8013', '8017', '0', '0', '0', ''),
('8022', '-2', '8014', '8018', '0', '0', '0', ''),
('8023', '-2', '8019', '8020', '8021', '8022', '0', ''),
('8024', '8', '8996', '0', '0', '0', '1', 'Quest ID 8996 NOT Rewarded'), -- return to bodley
('8025', '-1', '8023', '8024', '0', '0', '0', ''), -- taken or completed any left amulet quest and not rewarded return to bodley
('8026', '8', '9015', '0', '0', '0', '0', 'Quest ID 9015 Rewarded'),
('8027', '8', '8989', '0', '0', '0', '1', 'Quest ID 8989 NOT Rewarded'), -- The Right Piece of Lord Valthalak's Amulet variants
('8028', '8', '8990', '0', '0', '0', '1', 'Quest ID 8990 NOT Rewarded'),
('8029', '8', '8991', '0', '0', '0', '1', 'Quest ID 8991 NOT Rewarded'),
('8030', '8', '8992', '0', '0', '0', '1', 'Quest ID 8992 NOT Rewarded'),
('8031', '-1', '8027', '8028', '8029', '8030', '0', ''),
('8032', '-1', '8026', '8031', '0', '0', '0', ''), -- rewarded the challenge and not rewarded
('8033', '9', '8989', '0', '0', '0', '0', 'Quest ID 8989 Taken'),
('8034', '9', '8990', '0', '0', '0', '0', 'Quest ID 8990 Taken'),
('8035', '9', '8991', '0', '0', '0', '0', 'Quest ID 8991 Taken'),
('8036', '9', '8992', '0', '0', '0', '0', 'Quest ID 8992 Taken'),
('8037', '23', '22048', '1', '0', '0', '1', 'Player NOT Has 1 or more of Item ID 22048 in Inventory'), -- Lord Valthalak's Amulet
('8038', '23', '21984', '1', '0', '0', '1', 'Player NOT Has 1 or more of Item ID 21984 in Inventory'), -- Left Piece of Lord Valthalak's Amulet
('8039', '23', '22047', '1', '0', '0', '1', 'Player NOT Has 1 or more of Item ID 22047 in Inventory'), -- Top Piece of Lord Valthalak's Amulet
('8040', '23', '22046', '1', '0', '0', '1', 'Player NOT Has 1 or more of Item ID 22046 in Inventory'), -- Right Piece of Lord Valthalak's Amulet
('8041', '23', '22050', '1', '0', '0', '1', 'Player NOT Has 1 or more of Item ID 22050 in Inventory'), -- Brazier of Beckoning (Isalien)
('8042', '23', '22049', '1', '0', '0', '1', 'Player NOT Has 1 or more of Item ID 22049 in Inventory'), -- Brazier of Beckoning (Mor Grayhoof)
('8043', '23', '22052', '1', '0', '0', '1', 'Player NOT Has 1 or more of Item ID 22052 in Inventory'), -- Brazier of Beckoning (Kormok)
('8044', '23', '22051', '1', '0', '0', '1', 'Player NOT Has 1 or more of Item ID 22051 in Inventory'), -- Brazier of Beckoning (Jarien)
('8045', '23', '22056', '1', '0', '0', '1', 'Player NOT Has 1 or more of Item ID 22056 in Inventory'), -- Brazier of Beckoning (Lord Valthalak)
('8046', '-2', '8011', '8033', '0', '0', '0', ''),
('8047', '-2', '8012', '8034', '0', '0', '0', ''),
('8048', '-2', '8013', '8035', '0', '0', '0', ''),
('8049', '-2', '8014', '8036', '0', '0', '0', ''),
('8050', '-1', '8041', '8047', '0', '0', '0', ''),
('8051', '-1', '8042', '8046', '0', '0', '0', ''),
('8052', '-1', '8043', '8049', '0', '0', '0', ''),
('8053', '-1', '8044', '8048', '0', '0', '0', ''),
('8054', '9', '8995', '0', '0', '0', '0', 'Quest ID 8995 Taken'),
('8056', '-1', '8054', '8024', '0', '0', '0', ''),
('8057', '-1', '8037', '8054', '0', '0', '0', ''),
('8058', '-1', '8032', '8039', '0', '0', '0', ''),
('8059', '-2', '8015', '8016', '8017', '8018', '0', ''),
('8061', '-1', '8031', '8059', '0', '0', '0', ''),
('8062', '-1', '8038', '8061', '0', '0', '0', '');
DELETE FROM gossip_menu_option WHERE menu_id IN(7044,7087,7086,7085,7090,7089,7041,7043);
INSERT INTO gossip_menu_option(menu_id,id,option_id,option_icon,option_text,option_broadcast_text,npc_option_npcflag,action_menu_id,action_script_id,condition_id) VALUES
(7044,0,1,0,'I lost a piece of Lord Valthalak''s Amulet!',11776,1,7041,0,8032),
(7044,1,1,0,'I''ve misplaced the Brazier of Beckoning!',11784,1,7043,0,8025),
(7044,2,1,0,'Bodley, tell me what''s going on.',11915,1,7087,0,8024), -- return to bodley quest not rewarded
(7087,0,1,0,'You were telling me about The Veiled Blade and how you took the wrong mission.',11917,1,7086,0,0),
(7086,0,1,0,'No, no, please continue... it''s just that the air up here is so, um, smoky.',11919,1,7085,0,0),
(7085,0,1,0,'Please continue, Bodley.',11921,1,7090,0,0),
(7090,0,1,0,'I thought you were almost done?',11923,1,7089,0,0),
(7089,0,1,0,'What happened to your mercenary company, The Veiled Blade?',11925,1,7088,0,0),
(7041,1,1,0,'Yes I checked, I''m missing the left piece!',11780,1,7039,704102,8062),
(7041,0,1,0,'Yes I checked, I''m missing the top piece!',11778,1,7038,704101,8058),
(7041,2,1,0,'I lost Lord Valthalak''s Amulet!',11773,1,7037,704103,8057),
(7043,0,1,0,'Yes, please summon it back!',11786,1,7042,704301,8050), -- isalien
(7043,1,1,0,'Yes, please summon it back!',11786,1,7042,704302,8051), -- mor grayhoof
(7043,2,1,0,'Yes, please summon it back!',11786,1,7042,704303,8052), -- kormok
(7043,3,1,0,'Yes, please summon it back!',11786,1,7042,704304,8053), -- jarien
(7043,4,1,0,'Yes, please summon it back!',11786,1,7042,704305,8056); -- lord
DELETE FROM dbscripts_on_gossip WHERE Id BETWEEN 704301 AND 704305;
DELETE FROM dbscripts_on_gossip WHERE Id BETWEEN 704101 AND 704103;
INSERT INTO dbscripts_on_gossip(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
('704101', '0', '0', '15', '27542', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bodley - Top Piece replacement'),
('704102', '0', '0', '15', '27544', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bodley - Left Piece replacement'),
('704103', '0', '0', '15', '27537', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bodley - Amulet replacement'),
('704301', '0', '0', '15', '27558', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bodley - Brazier (Isalien) replacement'),
('704302', '0', '0', '15', '27560', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bodley - Brazier (Mor Grayhoof) replacement'),
('704303', '0', '0', '15', '27562', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bodley - Brazier (Kormok) replacement'),
('704304', '0', '0', '15', '27563', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bodley - Brazier (Jarien & Sothos) replacement'),
('704305', '0', '0', '15', '27566', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bodley - Brazier (Lord Valthalakk) replacement');





-- ----------------------------
-- Lorekeeper Lydros (Entry: 14368)
-- The IDs for most of these menus and texts are unknown. Behaviour is based on http://wowwiki.wikia.com/wiki/Quest:Foror%27s_Compendium
-- The added texts are from Trinitycore broadcast_text IDs 9516-9527
-- Any unknown text or gossip ID has been assigned a number above 50k. Once sniffed IDs are found they should be replaced
-- This resolves the issue where a player would not be able to complete the Quel'Serrar questline. (After q.7507 you would be stuck and unable to acquire q.7508 due to the missing gossip)

DELETE FROM gossip_menu WHERE entry=5747 OR (entry BETWEEN 50004 AND 50008);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(5747, 6925, 0, 0),
(5747, 6926, 0, 190), -- q.7481 (H) or q.7482 (A) Rewarded
(5747, 50218, 0, 42), -- q.7508 Available
(50004, 50219, 0, 0),
(50005, 50220, 0, 0),
(50006, 50221, 0, 0),
(50007, 50222, 0, 0),
(50008, 50223, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id=5747 OR (menu_id BETWEEN 50004 AND 50008);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(5747, 0, 0, 'Fascinating, Lorekeeper. Continue please.', 1, 1, 50004, 0, 0, 0, 0, NULL, 42),
(50004, 0, 0, '(Continue.)', 1, 1, 50005, 0, 0, 0, 0, NULL, 0),
(50005, 0, 0, '(Continue.)', 1, 1, 50006, 0, 0, 0, 0, NULL, 0),
(50006, 0, 0, '(Continue.)', 1, 1, 50007, 0, 0, 0, 0, NULL, 0),
(50007, 0, 0, 'Eh?', 1, 1, 50008, 0, 0, 0, 0, NULL, 0),
(50008, 0, 0, 'Maybe... What do I do now?', 1, 1, -1, 0, 5000801, 0, 0, NULL, 0);

DELETE FROM conditions WHERE condition_entry= 42;
INSERT INTO conditions VALUES 
(42, 19, 7508, 0, 'Quest ID 7508 Available');

DELETE FROM dbscripts_on_gossip WHERE id IN(5000801);
INSERT INTO dbscripts_on_gossip (id,delay,command,datalong,datalong2,datalong3,dataint,dataint2,dataint3,dataint4,buddy_entry,search_radius,data_flags,comments,x,y,z,o) VALUES
(5000801,0,15,22925,0,0,0,0,0,0,0,0,0,'Lorekeeper Lydros - Cast Conjure Dull Flat Elven Blade DND',0,0,0,0);

DELETE FROM npc_text WHERE ID BETWEEN 50218 AND 50223;
INSERT INTO npc_text (ID,text0_0,em0_0,em0_1,em0_2,text1_0,prob0) VALUES
(50218,"<Lydros reaches into his robe and presents you with a dull, flat elven blade.>$B$BIn ages past, well before even the War of the Ancients, there existed this blade.",1,1,0,NULL,1),
(50219,"The blade itself had to be crafted in ceremony with the children of the Aspects. A rare occurrence indeed... For not only would a dragon have to willingly heat and mold the enchanted metal with their breath, they would also need to contain the fury of their own enchantment by using their blood as temper.",1,1,1,NULL,1),
(50220,"Over the course of 8,000 years, only a handful of these blades were created - each blade unique in both power and appearance. The blades of Quel'Serrar would take on the characteristics of their creator.",1,1,0,NULL,1),
(50221,"Rumors exist of a single, legendary blade of Quel'Serrar crafted for an unknown entity by the combined might of the five Aspects. Before the abominations of Nefarian and Deathwing were thrust into our world, such meetings of the Aspect were represented by the term 'Prismatic.' I could only assume that the Prismatic Blade of Quel'Serrar was a most glorious creation.",1,1,0,NULL,1),
(50222,"What I offer to you now is one such blade, unfired, unheated, untreated - the most raw and basic form.$B$BNow you merely need to find a dragon that will willingly enchant the blade.$B$BIf you had an eternity to live, this might be a possibility; but since you are mortal and could very likely cease to exist at any moment, might I recommend trying to persuade one of the lesser dragons to do your bidding. ",1,1,6,NULL,1),
(50223,"Have you heard of the brood mother of the Black Flight? I believe she is called Onyxia...",6,273,0,NULL,1);
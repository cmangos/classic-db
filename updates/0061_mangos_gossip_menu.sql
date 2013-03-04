-- ************************************************************
-- Sequel Pro SQL dump
-- Version 3408
--
-- http://www.sequelpro.com/
-- http://code.google.com/p/sequel-pro/
--
-- Host: 127.0.0.1 (MySQL 5.5.17)
-- Database: mangos
-- ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- The lines below were done by evil.at.wow based on TBC-DB data by X-Savior
-- They add gossip data (menus, options, scripts) that previously were managed
-- by SD2 but removed from SD2 data as they should better be managed by database
-- They are here reintroduced into classic DB thanks to evil.at.wow who sorted the
-- classic stuff apart from TBC stuff

-- =================================================
-- Missing data for gossip that was removed from SD2
-- =================================================

-- -------
-- Classic
-- -------

-- Removed in SD2-TBC s2376, backport from UDB 404
-- Schematic: Field Repair Bot 74A learning support
DELETE FROM conditions WHERE condition_entry IN (243, 244, 245, 246, 247, 248);
INSERT INTO conditions VALUES
(243, 7, 202, 300),
(244, 17, 22704, 0),
(245, 17, 22704, 1),
(246, 29, 202, 1),
(247, 29, 202, 300),
(248, -1, 243, 245);

DELETE FROM gossip_menu WHERE entry=5749;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(5749, 6929, 0, 246),
(5749, 6930, 0, 248),
(5749, 6931, 0, 247),
(5749, 6932, 0, 244);

DELETE FROM gossip_menu_option WHERE menu_id=5749;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(5749, 0, 0, '<Copy the schematic into your engineering notebook.>', 1, 1, -1, 0, 5749, 0, 0, NULL, 248);

DELETE FROM dbscripts_on_gossip WHERE id=5749;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5749, 0, 15, 22864, 0, 0, 0, 0x04, 0, 0, 0, 0, 0, 0, 0, 0, 'Learn Field Repair Bot 74A');
-- /Schematic: Field Repair Bot 74A learning support


-- Removed in SD2-TBC s2377, backport from UDB 404
-- Orb of Command
DELETE FROM conditions WHERE condition_entry IN (249);
INSERT INTO conditions VALUES
(249, 8, 7761, 0);

DELETE FROM gossip_menu WHERE entry=6001;
INSERT INTO gossip_menu (entry, text_id, condition_id) VALUES
(6001, 7154, 0),
(6001, 7155, 249);

DELETE FROM gossip_menu_option WHERE menu_id=6001;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(6001, 0, 0, '<Put your hand on the sphere.>', 1, 1, -1, 0, 6001, 0, 0, NULL, 249);

DELETE FROM dbscripts_on_gossip WHERE id=6001;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(6001, 0, 15, 23460, 0, 0, 0, 0x04, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- /Orb of Command


-- Removed in SD2-TBC s2378, backport from UDB 404
-- Lunaclaw Spirit
DELETE FROM conditions WHERE condition_entry IN (250, 251);
INSERT INTO conditions VALUES
(250, 9, 6001, 1),
(251, 9, 6002, 1);

DELETE FROM dbscripts_on_gossip WHERE id IN (386201, 386202);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(386201, 0, 7, 6001, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Lunaclaw - Questcredit (Alliance)'),
(386202, 0, 7, 6002, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Lunaclaw - Questcredit (Horde)');

DELETE FROM gossip_menu_option WHERE menu_id=3862;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(3862, 0, 0, 'You have fought well, spirit.  I ask you to grant me the strength of your body and the strength of your heart.', 1, 1, 3863, 0, 386201, 0, 0, '', 250),
(3862, 1, 0, 'You have fought well, spirit.  I ask you to grant me the strength of your body and the strength of your heart.', 1, 1, 3863, 0, 386202, 0, 0, '', 251);
-- /Lunaclaw Spirit


-- Removed in SD2-TBC s2381, backport from UDB 404
-- npc_zamael_lunthistle / quest 3377
DELETE FROM conditions WHERE condition_entry IN (252);
INSERT INTO conditions VALUES
(252, 9, 3377, 1);

UPDATE gossip_menu_option SET condition_id=252 WHERE menu_id=1285 AND id=0;
UPDATE gossip_menu_option SET action_menu_id=-1, action_script_id=1286 WHERE menu_id=1286 AND id=0;

DELETE FROM dbscripts_on_gossip WHERE id=1286;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, comments) VALUES
(1286, 0, 7, 3377, 5, 'Zamael Lunthistle - Questcredit (3377)');
-- /npc_zamael_lunthistle / quest 3377


-- Removed in SD2-TBC s2428, backport from UDB 404
-- go_tablet_of_the_seven / quest 4296
DELETE FROM conditions WHERE condition_entry IN (253, 254, 255);
INSERT INTO conditions VALUES
(253, 9, 4296, 0),
(254, 24, 11470, 1),
(255, -1, 253, 254);

DELETE FROM gossip_menu_option WHERE menu_id = 2187 AND id = 0;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(2187, 0, 0, 'Transcript the Tablet', 1, 1, -1, 0, 2187, 0, 0, NULL, 255);

DELETE FROM dbscripts_on_gossip WHERE id = 2187;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2187, 0, 15, 15065, 0, 0, 0, 0x04, 0, 0, 0, 0, 0, 0, 0, 0, 'Create Tablet Transcript');
-- /go_tablet_of_the_seven / quest 4296


-- Removed in SD2-TBC s2445, backport from UDB 404
-- Note: UDB's fix is wrong; the gossip_menu_option update uses cond_1 columns twice, instead of using cond_1 and cond_2!
-- npc_witch_doctor_mauari / quest 975
DELETE FROM conditions WHERE condition_entry IN (256, 257, 258);
INSERT INTO conditions VALUES
(256, 8, 975, 0),
(257, 24, 12384, 1),
(258, -1, 256, 257);

UPDATE gossip_menu SET condition_id=256 WHERE entry = 2703 AND text_id = 3377;

UPDATE gossip_menu_option SET action_menu_id=-1, action_script_id = 2703, condition_id = 258 WHERE menu_id = 2703 AND id = 0;

DELETE FROM dbscripts_on_gossip WHERE id = 2703;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2703, 0, 15, 16351, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Create Cache of Mau\'ari');
-- /npc_witch_doctor_mauari / quest 975


-- Removed in SD2-TBC s2455, backport from UDB 405
-- npc_nat_pagle / quest 8227
DELETE FROM conditions WHERE condition_entry IN (259);
INSERT INTO conditions VALUES
(259, 8, 8227, 0);

DELETE FROM gossip_menu WHERE entry = 6445 AND text_id = 7640;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6445, 7640, 0, 259);

DELETE FROM gossip_menu_option WHERE menu_id = 6445 AND id = 0;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(6445, 0, 1, 'I want to browse your goods.', 3, 128, 0, 0, 0, 0, 0, NULL, 259);
-- /npc_nat_pagle / quest 8227


-- Removed in SD2-TBC s2457, backport from UDB 405
-- go_tablet_of_madness / GO 180368
DELETE FROM conditions WHERE condition_entry IN (260, 261, 262);
INSERT INTO conditions VALUES
(260, 7, 171, 300),
(261, 17, 24266, 1),
(262, -1, 260, 261);

DELETE FROM gossip_menu WHERE entry = 6443;
INSERT INTO gossip_menu (entry, text_id, condition_id) VALUES
(6443, 7635, 0),
(6443, 7636, 260);

DELETE FROM gossip_menu_option WHERE menu_id = 6443 AND id = 0;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(6443, 0, 0, '[ph]Learn recipe...', 1, 1, -1, 0, 6443, 0, 0, NULL, 262);

DELETE FROM dbscripts_on_gossip WHERE id = 6443;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(6443, 0, 15, 24267, 0, 0, 0, 0x04, 0, 0, 0, 0, 0, 0, 0, 0, 'Learn Gurubashi Mojo Madness');
-- /go_tablet_of_madness / GO 180368


-- Removed in SD2-TBC s2458, backport from UDB 405
-- Note: I corrected the gossip_menu_option text (there was clearly a typo '...to to...' and there was no
--       real evidence for this text to be found); it now uses a text provided by several sources, including wowpedia.
--       Also TrinityCore uses this text stating it comes "from sniff", though their data could be WoTLK specific.
-- npc_deathly_usher / quest 3628
DELETE FROM conditions WHERE condition_entry IN (263, 264, 265);
INSERT INTO conditions VALUES
(263, 9, 3628, 1),
(264, 2, 10757, 1),
(265, -1, 263, 264);

UPDATE creature_template SET gossip_menu_id = 1541 WHERE entry = 8816;

DELETE FROM gossip_menu WHERE entry = 1541;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(1541, 2213, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id = 1541;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(1541, 0, 0, 'I wish to face the Defiler.', 1, 1, -1, 0, 1541, 0, 0, NULL, 265);

DELETE FROM dbscripts_on_gossip WHERE id = 1541;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1541, 0, 15, 12885, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Teleport to Razelikh');
-- /npc_deathly_usher / quest 3628


-- Removed in SD2-TBC s2459, backport from UDB 405
-- npc_augustus_the_touched / quest 6164
DELETE FROM conditions WHERE condition_entry IN (266);
INSERT INTO conditions VALUES
(266, 8, 6164, 0);

DELETE FROM gossip_menu WHERE entry = 4085 AND text_id = 4980;
INSERT INTO gossip_menu (entry, text_id, condition_id) VALUES
(4085, 4980, 266);

DELETE FROM gossip_menu_option WHERE menu_id = 4085 AND id = 0;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, box_coded, box_money, box_text, condition_id) VALUES
(4085, 0, 1, 'Yes, Augustus.  I would like to do business.', 3, 128, 0, 0, '', 266);
-- /npc_augustus_the_touched / quest 6164


-- Removed from SD2-TBC s2462, backport from UDB 404 with the extra fix from UDB 405 (scripts)
-- Note: extra fix from evil@wow, not in UDB: the removed SD2 script used text 2114 as response when learning
--       the cooking recipe, which is correct (2173 says your cooking skill is too low).
-- NPC Henry Stern
DELETE FROM conditions WHERE condition_entry IN (267, 268, 269, 270, 271, 272);
INSERT INTO conditions VALUES
(267, 7, 171, 180),
(268, 7, 185, 175),
(269, 17, 3451, 1),
(270, 17, 13028, 1),
(271, -1, 268, 270),
(272, -1, 267, 269);

DELETE FROM gossip_menu WHERE entry=1442;
INSERT INTO gossip_menu (entry, text_id) VALUES
(1442, 2115);

DELETE FROM gossip_menu WHERE entry=1501;
INSERT INTO gossip_menu (entry, text_id) VALUES
(1501, 2114);

DELETE FROM gossip_menu_option WHERE menu_id=1443;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(1443,0,0,'You can cook?  So can I!  Is there a recipe you can teach me?',1,1,1501,0,144300,0,0,'',271),
(1443,1,0,'You\'re an alchemist?  So am I.  Perhaps you can teach me what you know...',1,1,1442,0,144301,0,0,'',272);

DELETE FROM dbscripts_on_gossip WHERE id IN (144300,144301);
INSERT INTO dbscripts_on_gossip (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,x,y,z,o,comments) VALUES
(144300,1,15,13029,0,0,0,0,0,0,0,0,0,0,'learn Goldthorn Tea'),
(144300,0,0,0,0,0,0,0,2000000237,0,0,0,0,0,'say 1'),
(144301,1,15,13030,0,0,0,0,0,0,0,0,0,0,'learn Major Troll\'s Blood Elixir'),
(144301,0,0,0,0,0,0,0,2000000237,0,0,0,0,0,'say 2');

DELETE FROM db_script_string WHERE entry=2000000237;
INSERT INTO db_script_string (entry, content_default) VALUES 
(2000000237,'Thank again, $n.  Now I\'ll just wait here until it\'s safe to leave.');
-- /NPC Henry Stern


-- Removed from SD2-TBC s2463, backport from UDB 405
-- NPC Rivern Frostwind
DELETE FROM conditions WHERE condition_entry IN (273);
INSERT INTO conditions VALUES
(273, 5, 589, 7);

UPDATE creature_template SET gossip_menu_id = 3130 WHERE entry = 10618;

DELETE FROM gossip_menu_option WHERE menu_id = 3130 AND id = 0;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(3130, 0, 1, 'Let me browse your goods', 3, 128, 0, 0, 0, 0, 0, NULL, 273);
-- /NPC Rivern Frostwind


-- Removed from SD2-TBC s2464, backport from UDB 405
-- Note: I'm using script ID 246500 instead of 2465 for consistency - TBCDB 1.2.2 already added 246501 for quest 11222!
-- NPC Lady Jaina Proudmoore / quest 558
UPDATE gossip_menu_option SET action_script_id = 246500 WHERE menu_id = 2465 AND id = 0;

DELETE FROM dbscripts_on_gossip WHERE id = 246500;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(246500, 0, 15, 23122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Create Jaina\'s Autograph');
-- /NPC Lady Jaina Proudmoore / quest 558


-- Removed from SD2-TBC s2473, backport from UDB 405
-- npc_parqual_fintallas / quest 6628
DELETE FROM conditions WHERE condition_entry IN (274, 275, 276);
INSERT INTO conditions VALUES
(274, 9, 6628, 0),
(275, 11, 6767, 0),
(276, -1, 274, 275);

UPDATE creature_template SET gossip_menu_id = 4764 WHERE entry = 4488;

DELETE FROM gossip_menu WHERE entry = 4764;
INSERT INTO gossip_menu (entry, text_id, condition_id) VALUES
(4764, 5821, 0),
(4764, 5822, 276);

DELETE FROM gossip_menu_option WHERE menu_id = 4764;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(4764, 0, 1, 'Gul\'dan', 1, 1, -1, 0, 476401, 0, 0, NULL, 276),
(4764, 1, 1, 'Kel\'Thuzad', 1, 1, -1, 0, 476401, 0, 0, NULL, 276),
(4764, 2, 1, 'Ner\'zhul', 1, 1, -1, 0, 476402, 0, 0, NULL, 276);

DELETE FROM dbscripts_on_gossip WHERE id IN (476401, 476402);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(476402, 0, 7, 6628, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest complete'),
(476401, 0, 15, 6767, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Mark of Shame');
-- /npc_parqual_fintallas / quest 6628


-- Removed in SD2-TBC s2474, backport from UDB 405
-- Note: gossip_menu_option data for menu_id 3228 were already present in UDB/TBCDB, but without conditions. The
--       existing texts differ from the texts in UDB 405 however! I kept the existing texts because the texts in
--       UDB 405, as suggested by NeatElves in his change, are wrong (I assume they were translated from a
--       different locale). My own sniff archive confirms the old texts are correct!
-- npcs_dithers_and_arbington / npc 11056
DELETE FROM conditions WHERE condition_entry IN (277, 278, 279, 280);
INSERT INTO conditions VALUES
(277, 8, 5237, 0),
(278, 8, 5238, 0),
(279, -1, 121, 277),
(280, -1, 121, 278);

UPDATE creature_template SET gossip_menu_id = 3223, npcflag=7 WHERE entry = 11057;

DELETE FROM gossip_menu WHERE (entry = 3223 AND text_id = 3978) OR (entry = 3223 AND text_id = 3979) OR (entry = 3224 AND text_id = 3980) OR (entry = 3225 AND text_id = 3981) OR (entry = 3226 AND text_id = 3982) OR (entry = 3227 AND text_id = 3983);
INSERT INTO gossip_menu (entry, text_id) VALUES
(3223, 3978),
(3223, 3979),
(3224, 3980),
(3225, 3981),
(3226, 3982),
(3227, 3983);

UPDATE gossip_menu SET condition_id = 277 WHERE entry = 3223 AND text_id = 3979;
UPDATE gossip_menu SET condition_id = 278 WHERE entry = 3228 AND text_id = 3985;

DELETE FROM gossip_menu_option WHERE menu_id IN (3223, 3228) AND id IN (0, 1, 2, 3, 4, 5);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(3223, 0, 0, 'I need a vitreous focuser.', 1, 1, -1, 0, 3223, 0, 0, NULL, 279),
(3223, 1, 1, 'I wish to purchase arcane quickener from you.', 3, 128, 0, 0, 0, 0, 0, NULL, 277),
(3223, 2, 1, 'What\'s needed for the cauldron at Felstone Field?', 1, 1, 3224, 0, 0, 0, 0, NULL, 277),
(3223, 3, 1, 'What\'s needed for the cauldron at Dalson\'s Tears?', 1, 1, 3225, 0, 0, 0, 0, NULL, 277),
(3223, 4, 1, 'What\'s needed for the cauldron at the Writhing Haunt?', 1, 1, 3226, 0, 0, 0, 0, NULL, 277),
(3223, 5, 1, 'What\'s needed for the cauldron at Gahrron\'s Withering?', 1, 1, 3227, 0, 0, 0, 0, NULL, 277),
(3228, 0, 0, 'I need a vitreous focuser.', 1, 1, -1, 0, 3223, 0, 0, NULL, 280),
(3228, 1, 1, 'I wish to purchase arcane quickener from you.', 3, 128, 0, 0, 0, 0, 0, NULL, 278),
(3228, 2, 1, 'What\'s needed for the cauldron at Felstone Field?', 1, 1, 3224, 0, 0, 0, 0, NULL, 278),
(3228, 3, 1, 'What\'s needed for the cauldron at Dalson\'s Tears?', 1, 1, 3225, 0, 0, 0, 0, NULL, 278),
(3228, 4, 1, 'What\'s needed for the cauldron at the Writhing Haunt?', 1, 1, 3226, 0, 0, 0, 0, NULL, 278),
(3228, 5, 1, 'What\'s needed for the cauldron at Gahrron\'s Withering?', 1, 1, 3227, 0, 0, 0, 0, NULL, 278);

DELETE FROM dbscripts_on_gossip WHERE id IN (3228, 3223);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3223, 0, 15, 17529, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Vitreous Focuser');
-- /npcs_dithers_and_arbington / npc 11056 


-- Removed from SD2-TBC s2518, backport from UDB 405
-- npc_tirion_fordring / NPC 1855 / quest 5742
DELETE FROM conditions WHERE condition_entry IN (281);
INSERT INTO conditions VALUES
(281, 9, 5742, 0);

DELETE FROM gossip_menu WHERE entry = 3502 AND text_id = 4673;
INSERT INTO gossip_menu (entry, text_id, condition_id) VALUES (3502, 4673, 281);
DELETE FROM gossip_menu_option WHERE menu_id = 3502 AND id = 0;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, condition_id) VALUES
(3502, 0, 0, 'I am ready to hear your tale, Tirion.', 1, 1, 3683, 281);
DELETE FROM gossip_menu WHERE entry = 3683 AND text_id = 4493;
INSERT INTO gossip_menu (entry, text_id) VALUES (3683, 4493);
DELETE FROM gossip_menu_option WHERE menu_id = 3683 AND id = 0;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id) VALUES
(3683, 0, 0, 'Thank you, Tirion. What of your identity?', 1, 1, 3682);
DELETE FROM gossip_menu WHERE entry = 3682 AND text_id = 4494;
INSERT INTO gossip_menu (entry, text_id) VALUES (3682, 4494);
DELETE FROM gossip_menu_option WHERE menu_id = 3682 AND id = 0;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id) VALUES
(3682, 0, 0, 'That is terrible.', 1, 1, 3681);
DELETE FROM gossip_menu WHERE entry = 3681 AND text_id = 4495;
INSERT INTO gossip_menu (entry, text_id) VALUES (3681, 4495);
DELETE FROM gossip_menu_option WHERE menu_id = 3681 AND id = 0;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_script_id) VALUES
(3681, 0, 0, 'I will, Tirion.', 1, 1, -1, 3681);
DELETE FROM dbscripts_on_gossip WHERE id = 3681;
INSERT INTO dbscripts_on_gossip (id, command, datalong, comments) VALUES 
(3681, 7, 5742, 'complete quest');
-- /npc_tirion_fordring / NPC 1855 / quest 5742


-- Removed from SD2-TBC s2518, backport from UDB 405
-- Note: gossip exists, but conditions and action are missing.
-- npc_royal_historian_archesonus / quest 3702
DELETE FROM conditions WHERE condition_entry IN (282);
INSERT INTO conditions VALUES
(282, 9, 3702, 0);

UPDATE gossip_menu SET condition_id = 282 WHERE entry = 1561 AND text_id = 2235;
UPDATE gossip_menu_option SET condition_id = 282 WHERE menu_id = 1561 AND id = 0;

UPDATE gossip_menu_option SET action_script_id = 1563 WHERE menu_id = 1563 AND id = 0;

DELETE FROM dbscripts_on_gossip WHERE id = 1563;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1563, 0, 7, 3702, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'give questcredit - The Smoldering Ruins of Thaurissan');
-- /npc_royal_historian_archesonus / quest 3702


-- Removed from SD2-TBC s2523, backport from UDB 405
-- npc_gregan_brewspewer / quest 3909
DELETE FROM conditions WHERE condition_entry IN (283);
INSERT INTO conditions VALUES
(283, 9, 3909, 0);

DELETE FROM gossip_menu WHERE entry = 1802 AND text_id = 2434;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(1802, 2434, 0, 283);

DELETE FROM gossip_menu_option WHERE menu_id = 1802 AND id = 0;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(1802, 0, 1, 'Buy somethin\', will ya?', 3, 128, 0, 0, 0, 0, 0, NULL, 283);
-- /npc_gregan_brewspewer / quest 3909


-- Removed from SD2-TBC s2523, backport from UDB 405
-- npc 8612 / quest 3520
UPDATE creature_template SET flags_extra = flags_extra | 2048 WHERE entry = 8612;

UPDATE gossip_menu SET script_id = 1405 WHERE entry = 1405 AND text_id = 2039;

DELETE FROM dbscripts_on_gossip WHERE id = 1405;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(1405, 0, 8, 8612, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'give killcredit - Screecher Spirit'),
(1405, 2, 29, 1, 2, 8612, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- /npc 8612 / quest 3520


-- Removed from SD2-TBC s2523, backport from UDB 405
-- npc_skorn_whitecloud / quest 770
DELETE FROM conditions WHERE condition_entry IN (284);
INSERT INTO conditions VALUES
(284, 22, 770, 0);

UPDATE gossip_menu_option SET condition_id = 284 WHERE menu_id = 24 AND id = 0;
-- /npc_skorn_whitecloud / quest 770


-- Removed from SD2-TBC s2523, backport from UDB 405
-- quest 925 gossip
DELETE FROM conditions WHERE condition_entry IN (285, 286, 287);
INSERT INTO conditions VALUES
(285, 9, 925, 0),
(286, 24, 18643, 1),
(287, -1, 285, 286);

DELETE FROM gossip_menu WHERE entry = 20021 AND text_id = 7014;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(20021, 7014, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id = 5851 AND id = 0;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(5851, 0, 0, 'I know this is rather silly but a young ward who is a bit shy would like your hoofprint.', 1, 1, 20021, 0, 5851, 0, 0, NULL, 287);

DELETE FROM dbscripts_on_gossip WHERE id = 5851;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5851, 0, 15, 23123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'get - Cairne\'s Hoofprint');
-- /quest 925 gossip


-- Removed from SD2-TBC s2523, backport from UDB 405
-- npc_lorax / quest 5126
DELETE FROM conditions WHERE condition_entry IN (288);
INSERT INTO conditions VALUES
(288, 9, 5126, 0);

UPDATE creature_template SET gossip_menu_id = 3049 WHERE entry = 10918;

DELETE FROM gossip_menu WHERE entry IN (3049, 20015, 20016, 20017, 20018, 20019);
INSERT INTO gossip_menu (entry, text_id) VALUES
(3049,3758),
(20015,3759),
(20016,3760),
(20017,3761),
(20018,3762),
(20019,3763);

DELETE FROM gossip_menu_option WHERE menu_id IN (3049, 20015, 20016, 20017, 20018, 20019);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(3049, 0, 0, 'You will have to excuse me, Lorax, I do not speak \'crazy\'.', 1, 1, 20015, 0, 0, 0, 0, NULL, 288),
(20016, 0, 0, 'Do you? Perhaps you should tell me what it is that is bothering you.', 1, 1, 20017, 0, 0, 0, 0, NULL, 0),
(20017, 0, 0, 'What deal?', 1, 1, 20018, 0, 0, 0, 0, NULL, 0),
(20018, 0, 0, 'So how did he break the deal?', 1, 1, 20019, 0, 0, 0, 0, NULL, 0),
(20019, 0, 0, 'Perhaps I can be of some assistance. I will make a deal with you, Satyr. I shall recover this unforged breastplate and slay the beast. In exchange for this task, you will teach me how to create the breastplate.', 1, 1, -1, 0, 3049, 0, 0, NULL, 0),
(20015, 0, 0, 'My apologies, I did not realize that you could understand what I was saying. What is it you are doing out here?', 1, 1, 20016, 0, 0, 0, 0, NULL, 0);

DELETE FROM dbscripts_on_gossip WHERE id = 3049; 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3049, 0, 7, 5126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'give questcredit - Lorax\'s Tale');
-- /npc_lorax / quest 5126


-- Removed from SD2-TBC s2568, backport from UDB 405
-- go_sacred_fire_of_life
DELETE FROM dbscripts_on_go_template_use WHERE id = 175944;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(175944, 0, 10, 10882, 30000, 0, 0, 0, 0, 0, 0, 0, -5008.078, -2115.23, 83.69985, 1.029744, '');

-- go_hand_of_iruxos_crystal
DELETE FROM dbscripts_on_go_template_use WHERE id = 176581;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(176581, 0, 10, 11876, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- go_resonite_cask
DELETE FROM dbscripts_on_go_template_use WHERE id = 178145;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(178145, 0, 10, 11920, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');


-- Removed from SD2-TBC s2573, backport from UDB 405
-- Note: I corrected the gossip_menu_option text, because it was wrong (it sounded like a google translation).
--       There is also more than just this option if you have a Sulfuron Ingot. In fact there's like an entire
--       conversation, which is still missing. I'll check my archives later to see if I have the correct data.
-- npc_lokhtos_darkbargainer
DELETE FROM conditions WHERE condition_entry IN (289);
INSERT INTO conditions VALUES
(289, 5, 59, 4);

UPDATE gossip_menu SET condition_id = 289 WHERE entry = 4781 AND text_id = 5834;

DELETE FROM gossip_menu WHERE entry = 4781 AND text_id = 3673;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4781, 3673, 0, 0);

UPDATE gossip_menu_option SET condition_id = 289 WHERE menu_id = 4781 AND id = 0;

DELETE FROM gossip_menu_option WHERE menu_id = 4781 AND id = 1;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(4781, 1, 0, 'Hrm, I\'m listening. What is this offer?', 1, 1, -1, 0, 4781, 0, 0, NULL, 0);

DELETE FROM dbscripts_on_gossip WHERE id = 4781;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(4781, 0, 15, 23059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Create Thorium Brotherhood Contract');

-- Additional fix: require the player to have a Sulfuron Ingot before giving the option to create the Thorium Brotherhood Contract.
DELETE FROM conditions WHERE condition_entry IN (356);
INSERT INTO conditions VALUES
(356, 2, 17203, 1);

UPDATE gossip_menu_option SET condition_id = 356 WHERE menu_id = 4781 and id = 1;
-- /npc_lokhtos_darkbargainer


-- Removed from SD2-TBC s2573, backport from UDB 405
-- Note: I simplified the condition a bit, which brings it down from 9 entries to 8.
--       The original UDB condition was written out as follows:
--       "(quest 5862 taken AND not aura) OR (quest 5944 not rewarded AND not aura AND quest 5862 rewarded)"
--       This is equivalent with the following:
--       "not aura AND (quest 5862 taken OR (quest 5944 not rewarded AND quest 5862 rewarded))"
-- npc_myranda_hag
DELETE FROM conditions WHERE condition_entry IN (290, 291, 292, 293, 294, 295, 296, 297);
INSERT INTO conditions VALUES
(290, 8, 5862, 0),
(291, 8, 5944, 0),
(292, 9, 5862, 0),
(293, 11, 17961, 0),
(294, -3, 291, 0),
(295, -1, 290, 294),
(296, -2, 292, 295),
(297, -1, 293, 296);

DELETE FROM gossip_menu WHERE entry = 3801 AND text_id = 4773;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(3801, 4773, 0, 297);

DELETE FROM gossip_menu_option WHERE menu_id = 3801;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_script_id, condition_id) VALUES
(3801, 0, 0, 'I am ready for the illusion, Myranda.', 1, 1, -1, 3801, 297);

DELETE FROM dbscripts_on_gossip WHERE id = 3801;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3801, 0, 15, 17961, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Scarlet Illusion');
-- /npc_myranda_hag


-- Removed from SD2-TBC s2573
-- npc_great_bear_spirit
DELETE FROM conditions WHERE condition_entry IN (298);
INSERT INTO conditions VALUES
(298, -2, 57, 58);

UPDATE gossip_menu SET condition_id = 298 WHERE entry = 3882 AND text_id = 4719;
UPDATE gossip_menu_option SET condition_id = 298 WHERE menu_id = 3882 AND id = 0;
-- /npc_great_bear_spirit


-- Removed from SD2-TBC s2573
-- npcs_riverbreeze_and_silversky 
-- npc_bunthen_plainswind
-- npc_silva_filnaveth
-- npc_great_bear_spirit
-- npc_braug_dimspirit
-- => all included in TBC-DB 1.2.2


-- Removed from SD2-TBC s2577, backport from UDB 405
-- NPC 9037 / quest 4083
DELETE FROM conditions WHERE condition_entry IN (299, 300, 301, 302, 303, 304, 305);
INSERT INTO conditions VALUES
(299, 7, 186, 230),
(300, 8, 4083, 0),
(301, 17, 14891, 1),
(302, -1, 299, 301),
(303, -1, 300, 302),
(304, -3, 300, 0),
(305, -1, 302, 304);

UPDATE creature_template SET gossip_menu_id = 1945 WHERE entry=9037;

DELETE FROM gossip_menu WHERE entry IN (1945, 20023, 20024);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(1945, 2598, 0, 0),
(1945, 2605, 0, 303),
(20023, 2604, 0, 0),
(20024, 2606, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id = 1945;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(1945, 0, 0, 'Gloom\'rel, tell me your secrets!', 1, 1, 20023, 0, 194502, 0, 0, NULL, 305),
(1945, 1, 0, 'I have pald your price, Gloom\'rel. Now teach me your secrets!', 1, 1, 20024, 0, 194501, 0, 0, NULL, 303);

DELETE FROM dbscripts_on_gossip WHERE id in (194501, 194502);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(194501, 0, 15, 14894, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Smelt Dark Iron'),
(194502, 1, 9, 67871, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'spawn Spectral Chalice');
-- /NPC 9037 / quest 4083


-- Removed from SD2-TBC s2594, backport from UDB 405
-- npc_highlord_demitrian
DELETE FROM conditions WHERE condition_entry IN (306, 307, 308, 309, 310, 311, 312, 313);
INSERT INTO conditions VALUES
(306, 2, 18563, 1),
(307, 2, 18564, 1),
(308, 8, 7785, 0),
(309, 24, 19016, 1),
(310, -3, 308, 0),
(311, -2, 306, 307),
(312, -1, 309, 310),
(313, -1, 311, 312);

UPDATE creature_template SET gossip_menu_id = 5675 WHERE entry = 14347;

DELETE FROM gossip_menu WHERE entry IN (5675, 5687, 5688, 5689, 5701, 5702, 5703, 5704);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(5675, 6812, 0, 0),
(5687, 6844, 0, 0),
(5688, 6843, 0, 0),
(5689, 6842, 0, 0),
(5701, 6868, 0, 0),
(5702, 6867, 0, 0),
(5703, 6870, 0, 0),
(5704, 6869, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id IN (5675, 5687, 5688, 5689, 5701, 5702, 5703, 5704);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(5675, 0, 0, 'What do you know of it?', 1, 1, 5689, 0, 0, 0, 0, NULL, 313),
(5687, 0, 0, 'A battle?', 1, 1, 5702, 0, 0, 0, 0, NULL, 0),
(5688, 0, 0, 'Continue, please.', 1, 1, 5687, 0, 0, 0, 0, NULL, 0),
(5689, 0, 0, 'I am listening, Demitrian.', 1, 1, 5688, 0, 0, 0, 0, NULL, 0),
(5701, 0, 0, 'Caught unaware? How?', 1, 1, 5704, 0, 0, 0, 0, NULL, 0),
(5702, 0, 0, '<Nod>', 1, 1, 5701, 0, 0, 0, 0, NULL, 0),
(5704, 0, 0, 'So what did Ragnaros do next?', 1, 1, 5703, 0, 5704, 0, 0, NULL, 0);

DELETE FROM dbscripts_on_gossip WHERE id = 5704;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5704, 0, 17, 19016, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'create Vessel of Rebirth');
-- /npc_highlord_demitrian


-- Removed from SD2-TBC s2594, backport from UDB 405
-- npcs_rutgar_and_frankal
DELETE FROM conditions WHERE condition_entry IN (314);
INSERT INTO conditions VALUES
(314, 9, 8304, 0);

UPDATE creature_template SET gossip_menu_id = 6534 WHERE entry=15170;
UPDATE creature_template SET gossip_menu_id = 6533 WHERE entry=15171;

DELETE FROM gossip_menu WHERE entry IN (6533, 6534, 6545, 6546, 6547, 6548, 6549, 6550, 6551, 6552, 6553, 6554, 6555, 6556, 6557, 6558);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6533, 7735, 0, 0),
(6534, 7736, 0, 0),
(6545, 7761, 0, 0),
(6546, 7760, 0, 0),
(6547, 7759, 0, 0),
(6548, 7758, 0, 0),
(6549, 7757, 0, 0),
(6550, 7756, 0, 0),
(6551, 7755, 0, 0),
(6552, 7768, 0, 0),
(6553, 7767, 0, 0),
(6554, 7766, 0, 0),
(6555, 7765, 0, 0),
(6556, 7764, 0, 0),
(6557, 7763, 0, 0),
(6558, 7762, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id IN (6533, 6534, 6545, 6546, 6547, 6548, 6549, 6550, 6551, 6552, 6553, 6554, 6555, 6556, 6557, 6558);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(6533, 0, 0, 'Hello, Frankal. I\'ve heard that you might have some information as to the whereabouts of Mistress Natalia Mar\'alith.', 1, 1, 6558, 0, 0, 0, 0, NULL, 314),
(6558, 0, 0, 'That\'s what I like to hear.', 1, 1, 6557, 0, 0, 0, 0, NULL, 0),
(6557, 0, 0, 'That\'s odd.', 1, 1, 6556, 0, 0, 0, 0, NULL, 0),
(6556, 0, 0, 'You couldn\'t handle a lone night elf priestess?', 1, 1, 6555, 0, 0, 0, 0, NULL, 0),
(6555, 0, 0, 'I\'ve been meaning to ask out about that monkey.', 1, 1, 6554, 0, 0, 0, 0, NULL, 0),
(6554, 0, 0, 'Then what?', 1, 1, 6553, 0, 0, 0, 0, NULL, 0),
(6553, 0, 0, 'What a story! So she went into Hive\'Regal and that was the last you saw of her?', 1, 1, 6552, 0, 0, 0, 0, NULL, 0),
(6552, 0, 0, 'Thanks for the information, Frankal.', 1, 1, -1, 0, 6552, 0, 0, NULL, 0),
(6534, 0, 0, 'Hello, Rutgar. The Commander has sent me here to gather some information about his missing wife.', 1, 1, 6551, 0, 0, 0, 0, NULL, 314),
(6551, 0, 0, 'That sounds dangerous.', 1, 1, 6550, 0, 0, 0, 0, NULL, 0),
(6550, 0, 0, 'What happened to her after that?', 1, 1, 6549, 0, 0, 0, 0, NULL, 0),
(6549, 0, 0, 'Natalia?', 1, 1, 6548, 0, 0, 0, 0, NULL, 0),
(6548, 0, 0, 'What demands?', 1, 1, 6547, 0, 0, 0, 0, NULL, 0),
(6547, 0, 0, 'Lost it? What do you mean?', 1, 1, 6546, 0, 0, 0, 0, NULL, 0),
(6546, 0, 0, 'Possessed by what?', 1, 1, 6545, 0, 0, 0, 0, NULL, 0),
(6545, 0, 0, 'I\'ll be back once I straighten this mess out.', 1, 1, -1, 0, 6545, 0, 0, NULL, 0);

DELETE FROM dbscripts_on_gossip WHERE id IN (6545, 6552);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(6545, 0, 8, 15222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast killcredit 15222'),
(6552, 0, 8, 15221, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast killcredit 15221');
-- /npcs_rutgar_and_frankal


-- Removed from SD2-TBC s2598, backport from UDB 405
-- npc_darrowshire_spirit
UPDATE gossip_menu SET script_id = 3141 WHERE entry = 3141 AND text_id = 3873;

DELETE FROM dbscripts_on_gossip WHERE id = 3141;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3141, 0, 8, 11064, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3141, 2, 29, 1, 2, 11064, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- /npc_darrowshire_spirit


-- Removed from SD2-TBC s2599, backport from UDB 405
-- Note: I fixed gossip menu option 21/0 because the text from UDB is wrong according to my own sniffs.
-- npc_sputtervalve
DELETE FROM conditions WHERE condition_entry IN (315, 316);
INSERT INTO conditions VALUES
(315, 8, 1094, 0),
(316, 9, 6981, 0);

UPDATE creature_template SET gossip_menu_id = 21 WHERE entry = 3442;

DELETE FROM gossip_menu WHERE entry IN (21, 22, 20025);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(21, 518, 0, 315),
(21, 519, 0, 0),
(22, 520, 0, 0),
(20025, 2013, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id = 21;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(21, 0, 0, 'How can I help?', 1, 1, 22, 0, 0, 0, 0, NULL, 0),
(21, 1, 0, 'Can you tell me about this shard?', 1, 1, 20025, 0, 21, 0, 0, NULL, 316);

DELETE FROM dbscripts_on_gossip WHERE id = 21;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21, 0, 7, 6981, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest complete 6981');
-- /npc_sputtervalve


-- Removed from SD2-TBC s2599, backport from UDB 405
-- npc_marin_noggenfogger
UPDATE gossip_menu_option SET condition_id = 43 WHERE menu_id = 922 AND id = 0;
DELETE FROM gossip_menu_option WHERE menu_id = 922 AND id = 3;
-- /npc_marin_noggenfogger

-- Updates the npc_option_npcflag as classic core handles them
-- differently than TBC core though GOSSIP enum are the same in two
-- cores. This should be investigated maybe
UPDATE gossip_menu_option SET npc_option_npcflag=1 WHERE option_id=1;
UPDATE gossip_menu_option SET npc_option_npcflag=2 WHERE option_id=2;
UPDATE gossip_menu_option SET npc_option_npcflag=4 WHERE option_id=3;
UPDATE gossip_menu_option SET npc_option_npcflag=8 WHERE option_id=4;
UPDATE gossip_menu_option SET npc_option_npcflag=16 WHERE option_id=5;
UPDATE gossip_menu_option SET npc_option_npcflag=32 WHERE option_id=6;
UPDATE gossip_menu_option SET npc_option_npcflag=64 WHERE option_id=7;
UPDATE gossip_menu_option SET npc_option_npcflag=128 WHERE option_id=8;
UPDATE gossip_menu_option SET npc_option_npcflag=256 WHERE option_id=9;
UPDATE gossip_menu_option SET npc_option_npcflag=512 WHERE option_id=10;
UPDATE gossip_menu_option SET npc_option_npcflag=1024 WHERE option_id=11;
UPDATE gossip_menu_option SET npc_option_npcflag=2048 WHERE option_id=12;
UPDATE gossip_menu_option SET npc_option_npcflag=4096 WHERE option_id=13;
UPDATE gossip_menu_option SET npc_option_npcflag=8192 WHERE option_id=14;
UPDATE gossip_menu_option SET npc_option_npcflag=16384 WHERE option_id=15;
UPDATE gossip_menu_option SET npc_option_npcflag=16 WHERE option_id=16;
UPDATE gossip_menu_option SET npc_option_npcflag=16 WHERE option_id=17;
	
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
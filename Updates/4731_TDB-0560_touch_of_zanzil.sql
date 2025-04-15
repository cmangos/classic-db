-- ----------------
-- Stormwind
-- Quest - The Touch of Zanzil (id 2608) new script 
-- ---------------

-- Quest Start RP
-- 2608	0	0	0	0	0	0	0	0	0	3567	0	0	0	0	0	0	0	0	0	0	Doc Mixilpixil 7207 - q.2608 start
DELETE FROM dbscripts_on_quest_start WHERE id IN (2608);
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(2608, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Touch of Zanzil - Doc Mixilpixil - Set ActiveObject'),
-- Dont ask me why, but he looses npc flags when he says text and that happens after 4 seconds
(2608, 4000, 0, 29, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Touch of Zanzil - Doc Mixilpixil - Remove NpcFlags'),
(2608, 4000, 1, 0, 0, 0, 0, 0, 0, 0, 3567, 0, 0, 0, 0, 0, 0, 0, 'The Touch of Zanzil - Doc Mixilpixil - Say Text'),
-- If nothing happens for 3 minutes he gets back npc flags - using cai phasing
(2608, 4000, 2, 35, 5, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'The Touch of Zanzil - Doc Mixilpixil - SendAiEventA to self');

-- RelayScript that gives Doc micilpixil npc flags back when no player used /lay, started via CAI after 3minutes
DELETE FROM dbscripts_on_relay WHERE id IN (720701, 720702, 720703);
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(720701, 0, 0, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Doc Mixilpixil - Add NpcFlags'),
(720701, 0, 1, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Doc Mixilpixil - Remove ActiveObject'),
-- Relayscript after player used /lay
(720702, 0, 0, 1, 69, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Doc Mixilpixil - Emote StateUseStanding'),
(720702, 2000, 0, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Doc Mixilpixil - Remove Emote State'),
(720702, 2000, 1, 0, 0, 0, 0, 0, 0, 2, 3563, 0, 0, 0, 0, 0, 0, 0, 'Doc Mixilpixil - Say EmotedText'),
-- He doesnt reset his orientation till quest end or new player taking quest
(720702, 5000, 0, 36, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Doc Mixilpixil - Face Player'),
(720702, 5000, 1, 1, 36, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Doc Mixilpixil - Emote OneShotAttack1H'),
(720702, 6000, 1, 1, 36, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Doc Mixilpixil - Emote OneShotAttack1H'),
(720702, 8000, 1, 1, 36, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Doc Mixilpixil - Emote OneShotAttack1H'),
(720702, 11000, 1, 0, 0, 0, 0, 0, 0, 2, 3564, 0, 0, 0, 0, 0, 0, 0, 'Doc Mixilpixil - Say EmotedText'), 
(720702, 13000, 1, 1, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Doc Mixilpixil - Emote OneShotTalk'),
(720702, 13000, 1, 0, 0, 0, 0, 0, 0, 2, 3565, 0, 0, 0, 0, 0, 0, 0, 'Doc Mixilpixil - Say Text'),  
(720702, 16000, 0, 7, 2608, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Doc Mixilpixil - Finish Quest'),
(720702, 16000, 1, 29, 2, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Doc Mixilpixil - Add NpcFlags'),
(720702, 16000, 2, 21, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Doc Mixilpixil - Remove ActiveObject'),
-- RelayScript started after doc mixilpixil reaches home position
(720703, 0, 0, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Doc Mixilpixil - Add NpcFlags'),
(720703, 0, 1, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Doc Mixilpixil - Remove Active Object'); 

UPDATE broadcast_text SET ChatTypeID = 2 WHERE Id IN (3563, 3564, 3566);


-- Quest End RP
DELETE FROM dbscripts_on_quest_end WHERE id IN (2608);
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(2608, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Touch of Zanzil - Doc Mixilpixil - Set ActiveObject'),
(2608, 0, 1, 29, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Touch of Zanzil - Doc Mixilpixil - Remove NpcFlags'), -- 12:43:12.554
(2608, 2000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -8805.208, 338.5153, 95.18974, 0, 'The Touch of Zanzil - Doc Mixilpixil - Move Point'), -- 12:43:14.165
(2608, 3000, 0, 20, 2, 1, 0, 7208, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Touch of Zanzil - Noarm - Change Movement to Waypoint'), -- 12:43:15.780
(2608, 8000, 0, 0, 0, 0, 0, 0, 0, 0, 3566, 0, 0, 0, 0, 0, 0, 0, 'The Touch of Zanzil - Doc Mixilpixil - Say Text'), -- 12:43:20.726
(2608, 11000, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Touch of Zanzil - Doc Mixilpixil - Emote OneShotTalk'), -- 12:43:23.869
(2608, 15000, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Touch of Zanzil - Doc Mixilpixil - Emote OneShotTalk'), 
(2608, 19000, 0, 3, 720703, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Touch of Zanzil - Doc Mixilpixil - Move HomePosition'); -- 12:43:35.152


UPDATE quest_template SET CompleteScript = 2608 WHERE entry = 2608;

DELETE FROM creature_movement_template WHERE Entry= 7208;
INSERT INTO creature_movement_template (Entry, PathId, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId, Comment) VALUES
(7208, 1, 1, -8803.89, 339.752, 95.18976, 100, 34000, 720801, NULL),
(7208, 1, 2, -8804.023, 337.5969, 95.18974, 100, 100, 720802, NULL);  

DELETE FROM dbscripts_on_creature_movement WHERE id IN (720801, 720802);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(720801, 100, 0, 36, 0, 0, 0, 7207, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Noarm - Face Doc Mixilpixil'),
(720802, 0, 0, 20, 1, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Noarm - Change Movement to Random');

-- Out commited for now, this is maybe something that came with Classic rerelease
-- Gossip Menu option Doc Mixilpixil has if player lost Eau d' Mixilpixil
DELETE FROM gossip_menu_option WHERE menu_id IN (5763);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `condition_id`) VALUES 
(5763, 1, 0, 'I\'ve lost the cure, Doc! Tell me you got more!!!', 9532, 1, 1, -1, 0, 5763, 5765);

DELETE FROM conditions WHERE condition_entry IN (5763, 5764, 5765);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`,  `flags`, `comments`) VALUES 
(5763, 8, 2609, 0, 0, 'Player has done Quest The Touch of Zanzil'),
(5764, 2, 8432, 1, 1, 'Player Has Less Than 1 of Item ID 8432 in Inventory'),
(5765, -1, 5763, 5764, 0, 'Player has done Quest The Touch of Zanzil and dont have item Eau d\' Mixilpixil');


DELETE FROM dbscripts_on_gossip WHERE id = 5763;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES 
(5763, 0, 0, 15, 22943, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Doc Mixilpixil - cast Player Lost Eau d\' Mixilpixil DND');

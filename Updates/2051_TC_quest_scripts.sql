-- q.1842 'Satyr Hooves' End Script
-- inspired by: https://github.com/TrinityCore/TrinityCore/commit/0ef2cd28a72505516e7f1e17f2e9dd9fa9f71601

DELETE FROM dbscript_string WHERE entry IN (2000006700, 2000006701);
INSERT INTO dbscript_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
('2000006700', '%s begins to work...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '233', 'Ula''elek'),
('2000006701', 'I am done.  Your armor is ready, $n.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', 'Ula''elek');

UPDATE quest_template SET CompleteScript=1842 WHERE entry=1842;
DELETE FROM dbscripts_on_quest_end WHERE id IN (1842);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('1842', '0', '29', '2', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ula''elek - Remove Npc Flag Questgiver'),
('1842', '1', '0', '0', '0', '0', '0', '0', '0', '2000006700', '0', '0', '0', '0', '0', '0', '0', 'Ula''elek - Say Line 0'),
('1842', '18', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ula''elek - Stop Emote'),
('1842', '19', '0', '0', '0', '0', '0', '0', '0', '2000006701', '0', '0', '0', '0', '0', '0', '0', 'Ula''elek - Say Line 1'),
('1842', '20', '29', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ula''elek - Add Npc Flag Questgiver');

UPDATE creature SET position_x=-811.458, position_y=-4939.82, position_z=20.4816, orientation=3.59002 WHERE guid=6490;

-- q.1844 'Chimaeric Horn' End Script
-- inspired by: https://github.com/TrinityCore/TrinityCore/commit/b9b404c4fe2a5097758b0591f7930bcb7b964310

DELETE FROM dbscript_string WHERE entry IN (2000006702, 2000006703);
INSERT INTO dbscript_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
('2000006702', '%s begins to work...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '233', 'Orm Stonehoof'),
('2000006703', 'I have completed your helm, $n.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', 'Orm Stonehoof');

UPDATE quest_template SET CompleteScript=1844 WHERE entry=1844;
DELETE FROM dbscripts_on_quest_end WHERE id IN (1844);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('1844', '0', '29', '2', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Orm Stonehoof - Remove Npc Flag Questgiver'),
('1844', '1', '0', '0', '0', '0', '0', '0', '0', '2000006702', '0', '0', '0', '0', '0', '0', '0', 'Orm Stonehoof - Say Line 0'),
('1844', '18', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Orm Stonehoof - Stop Emote'),
('1844', '19', '0', '0', '0', '0', '0', '0', '0', '2000006703', '0', '0', '0', '0', '0', '0', '0', 'Orm Stonehoof - Say Line 1'),
('1844', '20', '29', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Orm Stonehoof - Add Npc Flag Questgiver');

UPDATE `creature` SET `position_x`=-1239.54, `position_y`=109.707, `position_z`=129.58, `orientation`=1.89658 WHERE `guid`=24678;

-- q.1846 'Dragonmaw Shinbones' End Script
-- inspired by: https://github.com/TrinityCore/TrinityCore/commit/c5cc36d4c3fbe7a7faa8953a9579f9f06a5555fb

DELETE FROM dbscript_string WHERE entry IN (2000006704, 2000006705);
INSERT INTO dbscript_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
('2000006704', '%s begins to craft...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '133', 'Velora Nitely'),
('2000006705', 'I have finished your leg guards, $n.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', 'Velora Nitely');

UPDATE quest_template SET CompleteScript=1846 WHERE entry=1846;
DELETE FROM dbscripts_on_quest_end WHERE id IN (1846);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('1846', '0', '29', '2', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Velora Nitely - Remove Npc Flag Questgiver'),
('1846', '1', '0', '0', '0', '0', '0', '0', '0', '2000006704', '0', '0', '0', '0', '0', '0', '0', 'Velora Nitely - Say Line 0'),
('1846', '18', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Velora Nitely - Stop Emote'),
('1846', '19', '0', '0', '0', '0', '0', '0', '0', '2000006705', '0', '0', '0', '0', '0', '0', '0', 'Velora Nitely - Say Line 1'),
('1846', '20', '29', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Velora Nitely - Add Npc Flag Questgiver');

-- q.1838 'Brutal Armor' End Script
-- inspired by: https://github.com/TrinityCore/TrinityCore/commit/bae86ff1b4e46aedc914b76d49ab21837cf1c131

DELETE FROM dbscript_string WHERE entry IN (2000006706, 2000006707);
INSERT INTO dbscript_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
('2000006706', '%s begins to work...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '69', 'Thun''grim Firegaze'),
('2000006707', 'Your armor is ready, $n.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', 'Thun''grim Firegaze');

UPDATE quest_template SET CompleteScript=1838 WHERE entry=1838;
DELETE FROM dbscripts_on_quest_end WHERE id IN (1838);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('1838', '0', '29', '2', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Thun''grim Firegaze - Remove Npc Flag Questgiver'),
('1838', '1', '20', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Thun''grim Firegaze - Set Waypoint Movement'),
('1838', '60', '0', '0', '0', '0', '0', '0', '0', '2000006707', '0', '0', '0', '0', '0', '0', '0', 'Thun''grim Firegaze - Say Line 1'),
('1838', '61', '29', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Thun''grim Firegaze - Add Npc Flag Questgiver');

DELETE FROM creature_movement_template WHERE entry=5878;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(5878,0,1,-423.713,-3167.24,212.779,100,0,0),
(5878,0,2,-423.211,-3164.23,212.864,100,0,0),
(5878,0,3,-425.1,-3162.25,212.697,2.92829,39000,587801),
(5878,0,4,-423.211,-3164.23,212.864,100,0,0),
(5878,0,5,-423.713,-3167.24,212.779,100,0,0),
(5878,0,6,-437.62,-3176.26,211.385,100,1000,587802);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (587801, 587802);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('587801', '1', '0', '0', '0', '0', '0', '0', '0', '2000006706', '0', '0', '0', '0', '0', '0', '0', 'Thun''grim Firegaze - Say Line 0'),
('587801', '16', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Thun''grim Firegaze - Stop Emote'),
('587801', '17', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.30012', 'Thun''grim Firegaze - Set orientation'),
('587801', '18', '1', '233', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Thun''grim Firegaze - Set Emote State 233'),
('587801', '38', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Thun''grim Firegaze - Stop Emote'),

('587802', '0', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Thun''grim Firegaze - Set Idle Movement'),
('587802', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.820305', 'Thun''grim Firegaze - Set orientation');

-- q.5541 'Ammo for Rumbleshot'
-- Closes #138 
DELETE FROM dbscripts_on_quest_end WHERE id = 5541;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5541,0,20,0,0,10610,269,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(5541,1,20,2,0,10610,269,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'); -- this will force him to start 'Mortar Combat' Event
UPDATE quest_template SET CompleteScript = 5541 WHERE entry = 5541;
-- Event: Mortar Combat - update
-- Angus (q.5541req.)
UPDATE creature_movement_template SET waittime = 1000 WHERE entry = 10610 AND point = 1;
UPDATE creature_movement_template SET waittime = 420000 WHERE entry = 10610 AND point = 7;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1061001 AND delay IN (0,1);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1061001,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Angus - active'),
(1061001,0,21,1,0,10805,272,0x10,0,0,0,0,0,0,0,0,'Klemmy - active'),
(1061001,0,21,1,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty - active'),
(1061001,1,29,3,2,1243,265,7 | 0x10,0,0,0,0,0,0,0,0,'1243 - NPCFlags removed'),
(1061001,1,21,1,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler - active'),
(1061001,1,21,1,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp - active');
DELETE FROM dbscripts_on_creature_movement WHERE id = 1061003 AND delay = 229;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1061003,229,29,3,1,1243,265,7 | 0x10,0,0,0,0,0,0,0,0,'1243 - NPCFlags added');

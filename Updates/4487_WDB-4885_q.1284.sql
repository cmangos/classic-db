-- q.1284 'Suspicious Hoofprints'
DELETE FROM dbscripts_on_quest_end WHERE id IN (1284);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1284,1,0,0,0,0,0,0,0x04,1753,0,0,0,0,0,0,0,'say'),
(1284,2,10,5088,30000,0,0,0,0x08,0,0,0,0,-3715.1462,-4523.845,25.917006,4.764749050140380859,'summon 5088'),
(1284,4900,31,4948,30,0,0,0,0,0,0,0,0,0,0,0,0,'search for 34948'),
(1284,5000,0,0,0,0,4948,30,7,1754,0,0,0,0,0,0,0,'buddy say');
UPDATE quest_template SET CompleteScript = 1284 WHERE entry = 1284;
UPDATE creature_template SET MovementType = 2 WHERE entry IN (5088);
DELETE FROM creature_movement_template WHERE Entry IN (5088);
INSERT INTO creature_movement_template (Entry, PathId, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(5088,0,1,-3714.1116,-4531.679,25.833683,100,0,0),
(5088,0,2,-3714.3645,-4537.4717,25.833675,100,0,0),
(5088,0,3,-3717.0732,-4542.716,25.833668,100,0,0),
(5088,0,4,-3724.3767,-4545.641,25.833649,100,10000,508801),
(5088,0,5,-3717.8364,-4542.7993,25.833664,100,0,0),
(5088,0,6,-3714.316,-4539.9526,25.833675,100,0,0),
(5088,0,7,-3712.778,-4535.7935,25.833683,100,0,0),
(5088,0,8,-3714.8342,-4524.9355,25.833683,100,100,1);
DELETE FROM dbscripts_on_creature_movement WHERE id = 508801;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(508801,1,31,4944,25,0,0,0,0,0,0,0,0,0,0,0,0,'search for 4944'),
(508801,10,36,0,0,0,4944,25,1,0,0,0,0,0,0,0,0,'face buddy'),
(508801,2000,1,16,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'kneel'),
(508801,4000,0,0,0,0,0,0,0x04,1752,0,0,0,0,0,0,0,'say'),
(508801,4001,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(508801,7000,1,66,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(508801,8000,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RuN ON');

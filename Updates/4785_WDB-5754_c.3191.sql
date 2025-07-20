-- Cook Torka 3191
-- emote is part of his script.
UPDATE creature_template_addon SET emote = 0 WHERE entry = 3191;
DELETE FROM creature_movement_template WHERE Entry = 3191;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(3191,1,312.09875,-4664.9517,16.353516,4.17133665,30000,0),
(3191,2,312.09875,-4664.9517,16.353516,4.17133665,7000,319101),
(3191,3,310.1939,-4663.651,16.372625,100,10000,319102),
(3191,4,312.09875,-4664.9517,16.353516,100,0,0),
(3191,5,312.09875,-4664.9517,16.353516,4.17133665,25000,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (319101,319102);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(319101,1000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,5.77704,''), -- 18:28:37.200
(319101,1100,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(319101,3100,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,1.256637,''), -- 18:28:40.339
(319101,3200,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(319102,1000,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(319102,9000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');

-- Kirtonos the Herald - fixed. thx @Tauriella for report and test
-- Kirtonos the Herald
UPDATE creature_template SET MovementType = 2 WHERE entry = 10506;
DELETE FROM creature_movement_template WHERE entry = 10506;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(10506,1,309.156,93.3245,101.662,0,0,3.17265,0,0),
(10506,2,299.559,93.255,105.634,10000,1050601,3.17972,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1050601;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1050601,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1050601,2,3,0,0,0,0,0,0,0,0,0,0,0,0,0.1,''),
(1050601,3,22,233,0x01 | 0x10 | 0x20,0,0,0,0,0,0,0,0,0,0,0,'temp faction');

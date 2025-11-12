-- Mark 795
-- Joshua 796
-- let them ocasionaly run during randommovement
UPDATE creature_template SET ExtraFlags=ExtraFlags|32 WHERE entry IN (795,796);
-- Bo 797
UPDATE creature_template SET ExtraFlags=ExtraFlags|32 WHERE entry IN (797);
UPDATE creature SET position_x = -9425.55, position_y = 129.192, position_z = 59.7319, spawndist = 0, MovementType = 4 WHERE guid = 80320;
DELETE FROM creature_movement WHERE id = 80320;
DELETE FROM creature_movement_template WHERE Entry = 797;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(797,1,-9425.55,129.192,59.7319,100,5000,79701),
(797,2,-9425.55,129.192,59.7319,100,1,5),
(797,3,-9435.16,135.157,58.4082,100,0,0),
(797,4,-9444.9,135.829,58.4839,100,0,0),
(797,5,-9457.16,126.087,59.1066,100,0,0),
(797,6,-9465.78,113.601,57.9173,100,0,0),
(797,7,-9460.58,94.2335,58.354,100,1,5),
(797,8,-9460.58,94.2335,58.354,100,5000,79702);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 79701 AND 79702;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(79701,1,20,1,5,55000,0,0,12,0,0,0,0,0,0,0,0,'Change Movement To 1 - Random 5yards (55secs TEMP) (around current location)'),
(79702,1,20,1,2,55000,0,0,12,0,0,0,0,0,0,0,0,'Change Movement To 1 - Random 2yards (55secs TEMP) (around current location)');

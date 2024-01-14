-- Daphne Stilwell 6182
-- custom made path corrected
UPDATE creature SET position_x = -11482.304, position_y = 1557.4106, position_z = 48.70583, orientation = 4.26775, spawndist = 0, MovementType = 2 WHERE id = 6182;
DELETE FROM creature_movement WHERE Id=66979;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 6182;
DELETE FROM creature_movement_template WHERE entry = 6182;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(6182,1 ,-11482.304,1557.4106,48.70583,100,11000,0),
(6182,2 ,-11476.278,1557.6038,48.70583,100,0,0),
(6182,3 ,-11470.299,1559.1139,48.58083,100,2000,0),
(6182,4 ,-11470.382,1563.5004,48.58083,100,1000,0),
(6182,5 ,-11464.786,1565.625,48.846966,100,10000,618201),
(6182,6 ,-11465.664,1567.7332,48.7971,100,0,0),
(6182,7 ,-11465.914,1569.9832,48.7971,100,0,0),
(6182,8 ,-11465.041,1570.8412,48.747234,100,0,0),
(6182,9 ,-11465.041,1570.8412,48.747234,6.21337,10000,618201),
(6182,10,-11471.896,1573.1904,48.59549,100,0,0),
(6182,11,-11477.807,1573.1018,48.59549,100,0,0),
(6182,12,-11480.656,1574.8416,48.59549,100,10000,618201),
(6182,13,-11482.617,1567.7522,48.59549,100,0,0),
(6182,14,-11480.854,1560.6074,48.58083,100,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (618201);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(618201,1000,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(618201,8000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'reset emote');


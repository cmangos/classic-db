-- Margol the Rager 5833
-- custom made wps fixed
UPDATE creature SET position_x = -7233.3613, position_y = -1883.0825, position_z = 294.2101, spawndist = 0, MovementType = 4 WHERE id = 5833;
UPDATE creature_template SET MovementType = 4 WHERE Entry = 5833; -- linear
DELETE FROM creature_movement WHERE id IN (6825);
DELETE FROM creature_movement_template WHERE entry = 5833;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(5833,1 ,-7233.3613,-1883.0825,294.2101,100,1000,0),
(5833,2 ,-7211.1333,-1900.2031,305.948,100,0,0),
(5833,3 ,-7191.6655,-1900.2885,315.52475,100,0,0),
(5833,4 ,-7171.328,-1867.002,312.42758,100,0,0),
(5833,5 ,-7187.06,-1901.5781,317.0272,100,0,0),
(5833,6 ,-7194.8438,-1935.5002,320.0126,100,0,0),
(5833,7 ,-7200.452,-1957.6002,313.0283,100,0,0),
(5833,8 ,-7237.8926,-1957.5543,306.86243,100,0,0),
(5833,9 ,-7267.9097,-1944.3954,296.29297,100,0,0),
(5833,10,-7292.1475,-1949.4032,299.10107,100,0,0),
(5833,11,-7310.0835,-1957.6923,298.0804,100,0,0),
(5833,12,-7324.4785,-1962.267,298.08063,100,1000,0);


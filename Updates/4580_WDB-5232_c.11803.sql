-- Twilight Keeper Exeter 11803
UPDATE creature_template SET MovementType = 4 WHERE entry = 11803;
UPDATE creature SET position_x = -7979.9775, position_y = 1972.1543, position_z = 6.459576, orientation = 3.578, spawndist = 0, MovementType = 4 WHERE id = 11803;
DELETE FROM creature_movement_template WHERE entry = 11803;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(11803,1,-7979.9775,1972.1543,6.459576,100,3000,0),
(11803,2,-7972.6157,1976.5465,7.2366757,100,0,0),
(11803,3,-7964.69,1977.1038,6.8965645,100,0,0),
(11803,4,-7957.2954,1977.9607,6.0370674,100,0,0),
(11803,5,-7952.4517,1979.7828,5.5264473,100,3000,0);

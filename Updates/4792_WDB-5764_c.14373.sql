-- Sage Korolusk 14373
-- correct path
UPDATE creature SET position_x = -4405.425, position_y = 273.8598, position_z = 25.177431, spawndist = 0, MovementType = 4 WHERE id = 14373; -- linear
UPDATE creature_template SET movementtype = 4 WHERE Entry = 14373;
DELETE FROM creature_movement WHERE Id IN (50010);
DELETE FROM creature_movement_template WHERE Entry = 14373;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(14373,1,-4405.425,273.8598,25.177431,100,1500,0),
(14373,2,-4405.425,273.8598,25.177431,100,0,0),
(14373,3,-4399.557,240.45909,25.454268,100,0,0),
(14373,4,-4394.1465,212.48395,25.413332,100,1500,0);

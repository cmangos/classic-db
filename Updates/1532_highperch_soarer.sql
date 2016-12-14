-- Highperch Soarer
-- These ones are only as visual effect in that area (flying above hills)
UPDATE creature_template SET InhabitType = 4 WHERE entry = 6139;
-- position corrected
UPDATE creature SET Spawndist = 10, MovementType = 1 WHERE guid = 21707;
UPDATE creature SET position_x = -4919.199219, position_y = -882.569946, position_z = 75.497215, Spawndist = 10, MovementType = 1 WHERE guid = 21706;
UPDATE creature SET position_x = -5075.835449, position_y = -1013.622375, position_z = 53.007923, Spawndist = 10, MovementType = 1 WHERE guid = 21708;

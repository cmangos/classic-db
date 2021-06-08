-- Falling underground - Fixes
UPDATE creature SET position_x = -6690.331543, position_y = -2988.697021, position_z = 248.367706, spawndist = 7, MovementType = 1 WHERE guid = 6910;
UPDATE creature SET position_x = -6629.925293, position_y = -3554.510498, position_z = 254.083786, spawndist = 7, MovementType = 1 WHERE guid = 6926;
UPDATE creature SET position_x = 51.213818, position_y = 1539.047974, position_z = 107.961784, spawndist = 7, MovementType = 1 WHERE guid = 27980;
UPDATE creature SET position_x = 393.519775, position_y = -623.946899, position_z = 162.409653, spawndist = 5, MovementType = 1 WHERE guid = 17345;
UPDATE creature SET position_x = -3649.268, position_y = -727.9708, position_z = 10.7234, orientation = 5.907869, spawndist = 0, MovementType = 0 WHERE guid = 9530;

-- Elder Shadowmaw Panther 1713
-- swimming anim fixed
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 1713);
UPDATE creature_template_addon SET bytes1 = 0 WHERE entry = 1713;

-- Ridge Stalker 2731 
-- swimming anim fixed
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 2731);
UPDATE creature_template_addon SET bytes1 = 0, auras = NULL WHERE entry = 2731;

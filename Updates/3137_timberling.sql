-- Timberling 2022
-- Duplicate removed
DELETE FROM creature_addon WHERE guid=49493;
DELETE FROM creature_movement WHERE id=49493;
DELETE FROM game_event_creature WHERE guid=49493;
DELETE FROM game_event_creature_data WHERE guid=49493;
DELETE FROM creature_battleground WHERE guid=49493;
DELETE FROM creature_linking WHERE guid=49493 OR master_guid=49493;
DELETE FROM creature WHERE guid=49493;
-- position update
UPDATE creature SET position_x = 9548.147, position_y = 701.311, position_z = 1260.48, MovementType = 1, spawndist = 7 WHERE guid = 49499;

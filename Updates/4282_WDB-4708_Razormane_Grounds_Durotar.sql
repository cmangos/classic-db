-- Razormane Grounds - Durotar

-- Duplicate
DELETE FROM creature_addon WHERE guid=12313;
DELETE FROM creature_movement WHERE Id=12313;
DELETE FROM game_event_creature WHERE guid=12313;
DELETE FROM game_event_creature_data WHERE guid=12313;
DELETE FROM creature_battleground WHERE guid=12313;
DELETE FROM creature_linking WHERE guid=12313
 OR master_guid=12313;
DELETE FROM creature WHERE guid=12313;
-- poss corrected
UPDATE creature SET position_x = 80.081703, position_y = -4544.539551, position_z = 58.119606, spawndist = 7, MovementType = 1 WHERE guid = 12315;


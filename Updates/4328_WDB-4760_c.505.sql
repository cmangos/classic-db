-- Alther's Mill - Redridge Mountains
-- Greater Tarantula 505
-- Duplicates
DELETE FROM creature_addon WHERE guid IN (10414,10453,10418);
DELETE FROM creature_movement WHERE Id IN (10414,10453,10418);
DELETE FROM game_event_creature WHERE guid IN (10414,10453,10418);
DELETE FROM game_event_creature_data WHERE guid IN (10414,10453,10418);
DELETE FROM creature_battleground WHERE guid IN (10414,10453,10418);
DELETE FROM creature_linking WHERE guid IN (10414,10453,10418)
 OR master_guid IN (10414,10453,10418);
DELETE FROM creature WHERE guid IN (10414,10453,10418);
UPDATE creature SET position_x = -9119.432617, position_y = -2611.173828, position_z = 114.952805, spawndist = 10, MovementType = 1 WHERE guid = 16460;


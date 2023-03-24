-- Silithid Creeper - duplicate removed
DELETE FROM creature_addon WHERE guid=19752;
DELETE FROM creature_movement WHERE Id=19752;
DELETE FROM game_event_creature WHERE guid=19752;
DELETE FROM game_event_creature_data WHERE guid=19752;
DELETE FROM creature_battleground WHERE guid=19752;
DELETE FROM creature_linking WHERE guid=19752
 OR master_guid=19752;
DELETE FROM creature WHERE guid=19752;


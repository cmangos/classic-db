-- Added missing event data for creature 19008
-- Add missing worgen transition for creature
DELETE FROM game_event_creature_data WHERE guid=19008;
INSERT INTO	game_event_creature_data (guid, entry_id, modelid, equipment_id, spell_start, spell_end, event) VALUES
(19008, 1893, 0, 0, 7671, 7671, 3);

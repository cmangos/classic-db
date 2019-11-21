-- Add Aggro Linking for Crimson Bodyguard 13118 -> Crimson Courier 12337
-- Currently all have different paths which is wrong should be one Formation
DELETE FROM creature_linking_template WHERE master_entry=12337;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(13118, 0, 12337, 3, 0); -- Crimson Bodyguard -> Crimson Courier

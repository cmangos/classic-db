-- ----------------
-- Change some guid/entry/ids to match with WIKI Informations.

-- Worldstate Resort
-- Official WorldStateID range from 1-10k (WoTLK ends at about 5k), Custom defined cMaNGOS WorldStateIDs start at 10k+.
-- Conditions
-- ---------------

-- Quest ID 330 - Plague Spreader Spawn
UPDATE worldstate_name SET Id = 18000 WHERE Id = 6506;
UPDATE dbscripts_on_creature_movement SET dataint = 18000 WHERE id = 142101 AND command = 53 AND dataint = 6506;
UPDATE dbscripts_on_creature_movement SET dataint = 18000 WHERE id = 60401 AND command = 53 AND dataint = 6506;
UPDATE spawn_group SET WorldState= 18000 WHERE Id = 19018;

-- Quest ID 5203 - Jaedenar Legionnaire Spawn
UPDATE worldstate_name SET Id = 18001 WHERE Id = 6507;
UPDATE dbscripts_on_creature_movement SET dataint = 18001 WHERE id = 1101601 AND command = 53 AND dataint = 6507;
UPDATE spawn_group SET WorldState= 18001 WHERE Id = 19030;

-- Use 1800+ for condition_entry
UPDATE conditions SET condition_entry = 1800, value1 = 18000 WHERE condition_entry = 6506;
UPDATE conditions SET condition_entry = 1801, value1 = 18001 WHERE condition_entry = 6507;
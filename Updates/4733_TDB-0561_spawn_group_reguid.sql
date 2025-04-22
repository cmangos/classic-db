-- ----------------
-- Change some guid/entry/ids to match with WIKI Informations.

-- Worldstate Resort
-- Official WorldStateID range from 1-10k (WoTLK ends at about 5k), Custom defined cMaNGOS WorldStateIDs start at 10k+.
-- Conditions
-- ---------------

-- Quest ID 330 - Plague Spreader Spawn
UPDATE worldstate_name SET Id = 19018 WHERE Id = 6506;
UPDATE dbscripts_on_creature_movement SET dataint = 19018 WHERE id = 142101 AND command = 53 AND dataint = 6506;
UPDATE dbscripts_on_creature_movement SET dataint = 19018 WHERE id = 60401 AND command = 53 AND dataint = 6506;
UPDATE spawn_group SET WorldState= 19018 WHERE Id = 19018;

-- Quest ID 5203 - Jaedenar Legionnaire Spawn
UPDATE worldstate_name SET Id = 19030 WHERE Id = 6507;
UPDATE dbscripts_on_creature_movement SET dataint = 19030 WHERE id = 1101604 AND command = 53 AND dataint = 6507;
UPDATE spawn_group SET WorldState= 19030 WHERE Id = 19030;

-- Use same worldstate.id for condition_entry
UPDATE conditions SET condition_entry = 19018, value1 = 19018 WHERE condition_entry = 6506;
UPDATE conditions SET condition_entry = 19030, value1 = 19030 WHERE condition_entry = 6507;
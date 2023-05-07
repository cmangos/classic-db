-- creature_spawn_data_template
-- Generics & names added
-- Be careful with equipment (wotlk has diff than TBC and Classic)  - wotlk has unique id for each set instead of id connected to each creature

-- Let's make few more GENERICs - that may be usefull in future
DELETE FROM creature_spawn_data_template WHERE entry BETWEEN 10 AND 100;
INSERT INTO creature_spawn_data_template (Entry, NpcFlags, UnitFlags, Faction, ModelId, EquipmentId, CurHealth, CurMana, SpawnFlags, RelayId, StringId, Name) VALUES
-- 4-9 - left for potential more options in SpawnFlags
-- NpcFlags 10-19
(10,0,-1,0,0,-1,0,0,0,0,0,'GENERIC - NpcFlags = 0 - DO NOT EDIT'), -- no interact with npc
(11,1,-1,0,0,-1,0,0,0,0,0,'GENERIC - NpcFlags = 1 (gossip) - DO NOT EDIT'), -- gossip only -- 4	1	-1	0	0	-1	0	0	0	0	0	GENERIC - NpcFlags (1) - UNIT_NPC_FLAG_GOSSIP
(12,2,-1,0,0,-1,0,0,0,0,0,'GENERIC - NpcFlags = 2 (quest giver) - DO NOT EDIT'), -- quest giver only
(13,3,-1,0,0,-1,0,0,0,0,0,'GENERIC - NpcFlags = 3 (gossip & quest giver) - DO NOT EDIT'), -- gossip & quest giver
-- UnitFlags 20-29
(20,-1,0,0,0,-1,0,0,0,0,0,'GENERIC - UnitFlags = 0 - DO NOT EDIT'), -- no flags
(21,-1,33554432,0,0,-1,0,0,0,0,0,'GENERIC - UnitFlags = 33554432 UNIT_FLAG_NOT_SELECTABLE - DO NOT EDIT'), -- Can’t be selected by mouse
-- Faction 30-39
-- ModelId 40-49
-- EquipmentId 50-59
(50,-1,-1,0,0,0,0,0,0,0,0,'GENERIC - EquipmentId = 0 - DO NOT EDIT'), -- no equipment -- 5	-1	-1	0	0	0	0	0	0	0	0	GENERIC - EquipmentId (0) - No Equipment
-- CurHealth 60-69
(60,-1,-1,0,0,-1,1,0,0,0,0,'GENERIC - CurHealth = 1 - DO NOT EDIT'), -- 1hp at start - handy for injured
-- CurMana 70-79
-- RelayId 80-89
(80,-1,-1,0,0,-1,0,0,0,30500,0,'GENERIC - RelayId 30500 (Send AI Event 5 (A) to Self) - DO NOT EDIT'),
(81,-1,-1,0,0,-1,0,0,0,30501,0,'GENERIC - RelayId 30501 (Send AI Event 6 (B) to Self) - DO NOT EDIT'),
(82,-1,-1,0,0,-1,0,0,0,30502,0,'GENERIC - RelayId 30502 (Send AI Event 8 (C) to Self) - DO NOT EDIT'),
(83,-1,-1,0,0,-1,0,0,0,30503,0,'GENERIC - RelayId 30503 (Send AI Event 9 (D) to Self) - DO NOT EDIT');
-- 84 - event E - not used yet
-- 85 - event F - not used yet

-- move already existing ones to new generic
UPDATE creature_spawn_data SET id = 10 WHERE id = 20032; -- was 20032, does not exist
UPDATE creature_spawn_data SET id = 11 WHERE id = 4; -- was 4
UPDATE creature_spawn_data SET id = 20 WHERE id = 20031; -- was 20031
UPDATE creature_spawn_data SET id = 50 WHERE id = 5; -- was 5
UPDATE creature_spawn_data SET id = 60 WHERE id = 20003; -- was 20003
UPDATE creature_spawn_data SET id = 80 WHERE id = 20033; -- was 20033
UPDATE creature_spawn_data SET id = 81 WHERE id = 20034; -- was 20034
UPDATE creature_spawn_data SET id = 82 WHERE id = 20035; -- was 20035
UPDATE creature_spawn_data SET id = 83 WHERE id = 20036; -- was 20036
-- not needed anymore
DELETE FROM creature_spawn_data_template WHERE entry IN (4,5,20032,20031,20003,20033,20034,20035,20036);


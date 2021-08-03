-- Scarlet Convert 1506 & Scarlet Initiate 1507 share spawn
-- https://github.com/cmangos/tbc-db/issues/657
REPLACE INTO creature_spawn_entry (guid, entry) SELECT guid AS guid, 1506 FROM creature WHERE creature.id = 1506;
REPLACE INTO creature_spawn_entry (guid, entry) SELECT guid AS guid, 1507 FROM creature WHERE creature.id = 1506;
REPLACE INTO creature_spawn_entry (guid, entry) SELECT guid AS guid, 1506 FROM creature WHERE creature.id = 1507;
REPLACE INTO creature_spawn_entry (guid, entry) SELECT guid AS guid, 1507 FROM creature WHERE creature.id = 1507;
UPDATE creature SET id = 0 WHERE id IN (1506,1507);

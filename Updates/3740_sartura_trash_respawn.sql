-- Prevent Battleguard Sartura trash mobs from respawning once she is defeated
INSERT INTO spawn_group (Id, Name, Type, MaxCount, WorldState, Flags) VALUES
(5310014, 'Temple of Ahn\'Qiraj - Battleguard Sartura - Trash mobs', 0, 0, 71101, 0);

INSERT INTO spawn_group_spawn (Id, Guid) SELECT 5310014, guid AS guid FROM creature WHERE id=15233; -- Vekniss Guardian
INSERT INTO spawn_group_spawn (Id, Guid) SELECT 5310014, guid AS guid FROM creature WHERE id=15247; -- Qiraji Brainwasher

-- Remove now deprecated creature_linking_template that don't work with current Sartura spawn_group_formation
DELETE FROM creature_linking_template WHERE master_entry=15516;

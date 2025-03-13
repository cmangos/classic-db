-- q.900 'Samophlange'
-- updates
DELETE FROM spawn_group WHERE Id IN (19020, 19021);
INSERT INTO spawn_group (Id, Name, Type, MaxCount, WorldState, Flags) VALUES 
(19020,'Barrens - Main Control Valve RND Spawn NPCs', 0, 2, 19020, 2),
(19021,'Barrens - Regulator Valve RND Spawn NPCs', 0, 2, 19021, 2);
-- if no formations then no slots
DELETE FROM spawn_group_spawn WHERE Id IN (19020, 19021);
INSERT INTO spawn_group_spawn (Id, Guid, SlotId) VALUES 
(19020, 158020, -1),
(19020, 158021, -1),
(19021, 158022, -1);

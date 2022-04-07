UPDATE creature_template SET NpcFlags=NpcFlags&~1 WHERE Entry=9460;

DELETE FROM creature_spawn_data_template WHERE Entry=4;
INSERT INTO creature_spawn_data_template (Entry, NpcFlags) VALUES
(4, 1);

DELETE FROM creature_spawn_data WHERE Guid IN (24664, 24665);
INSERT INTO creature_spawn_data (Guid, Id) VALUES
(24664, 4),
(24665, 4);

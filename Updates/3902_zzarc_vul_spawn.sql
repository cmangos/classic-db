-- Duskwood - Zzarc\' Vul (300)
DELETE FROM pool_template WHERE entry=1267;
DELETE FROM pool_creature_template WHERE id=300;

DELETE FROM spawn_group_spawn WHERE Id=19002;
INSERT INTO spawn_group_spawn (Id, Guid, SlotId) VALUES
(19002, 5066, '-1'), -- 5066
(19002, 5230, '-1'), -- 5230
(19002, 5231, '-1'); -- 5231

DELETE FROM spawn_group WHERE Id=19002;
INSERT INTO spawn_group (Id, Name, Type, MaxCount, WorldState, Flags) VALUES
(19002, 'Duskwood - Zzarc\' Vul (300)', '0', '1', '0', '0');

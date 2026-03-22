SET @CGUID:=160016;
DELETE FROM creature WHERE guid BETWEEN @CGUID AND @CGUID+2;
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(@CGUID+0,13136,1,0,-7184.5796,443.38177,26.530767,4.956735134124755859,600,600,0,0),
(@CGUID+1,13136,1,0,-7176.783,446.9732,28.669281,4.206243515014648437,600,600,0,0),
(@CGUID+2,13136,1,0,-7176.6562,439.0766,26.715515,3.822271108627319335,600,600,0,0);
DELETE FROM string_id WHERE Id IN(8001);
INSERT INTO string_id(Id, Name) VALUES
(8001, 'SILITHUS_HIVE_ASHI_TRAP_AREATRIGGER');
DELETE FROM spawn_group WHERE Id IN(8001);
INSERT INTO spawn_group(Id, Name, Type, MaxCount, WorldState, WorldStateExpression, Flags, StringId, RespawnOverrideMin, RespawnOverrideMax) VALUES
('8001', 'Silithus - Hive''Ashi Drone areatrigger', '0', '3', '0', '0', '0', '8001', 600, 600);
DELETE FROM spawn_group_spawn WHERE Id IN(8001);
INSERT INTO spawn_group_spawn(Id, Guid) VALUES
('8001', @CGUID+0),
('8001', @CGUID+1),
('8001', @CGUID+2);



-- Lady Sathrah 7319
-- missing npc added
DELETE FROM creature_addon WHERE guid = 73001; -- c.7319
DELETE FROM creature_movement WHERE id = 73001;
DELETE FROM game_event_creature WHERE guid = 73001;
DELETE FROM game_event_creature_data WHERE guid = 73001;
DELETE FROM creature_battleground WHERE guid = 73001;
DELETE FROM creature_linking WHERE guid = 73001
OR master_guid = 73001;
DELETE FROM creature WHERE guid = 73001;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(73001,7319,1,1,0,0,10980,1731.3,1303.1,5.14113,300,300,10,0,0,0,0,1); -- TDB guid used (spawn exists there)
UPDATE creature SET MovementType = 1, spawndist = 10 WHERE id = 7319;
-- moved to spawn_groups
DELETE FROM `spawn_group` WHERE id = 19993;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19993, 'Teldrassil - Lady Sathrah 7319', 0, 1, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 19993;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19993, 12596, -1), -- exists
(19993, 73001, -1);

-- 7319	1175	0	Lady Sathrah (7319)
-- LoadSpawnGroups: spawn_group_spawn guid 12596 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 73001 is part of pool or game event (incompatible). Skipping.
DELETE FROM `pool_template` WHERE `entry` = 1175;
DELETE FROM `pool_creature_template` WHERE `id` = 7319;


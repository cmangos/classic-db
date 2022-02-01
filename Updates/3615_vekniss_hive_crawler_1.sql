
SET @PATH_ID := 5310012;
SET @PATH_TYPE := 4;

SET @CREATURE_ID := 5310052;
SET @GROUP_ID := 5310012;

DELETE FROM `creature` WHERE (`guid` IN ('87941', '87942'));
DELETE FROM `creature_movement` WHERE (`Id` = '87941');

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-8355.7099609375', '1359.7341308593750', '-65.0198822021484375', '100', '0', '0'),
(@PATH_ID, '02', '-8320.4902343750', '1334.7386474609375', '-72.5058593750000000', '100', '0', '0'),
(@PATH_ID, '03', '-8293.0419921875', '1364.9449462890625', '-77.5400848388671875', '100', '0', '0'),
(@PATH_ID, '04', '-8255.9628906250', '1349.6508789062500', '-84.2550048828125000', '100', '0', '0'),
(@PATH_ID, '05', '-8233.6757812500', '1320.4954833984375', '-86.5922012329101562', '100', '0', '0'),
(@PATH_ID, '06', '-8230.8027343750', '1281.0787353515625', '-89.8586273193359375', '100', '0', '0'),
(@PATH_ID, '07', '-8203.9804687500', '1271.1844482421875', '-91.8216476440429687', '100', '0', '0'),
(@PATH_ID, '08', '-8197.0166015625', '1230.3312988281250', '-92.2309722900390625', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_ID + 0, '0', '531', '1', '0', '0', '-8355.7099609375', '1359.7341308593750', '-65.0198822021484375', '0.0', '3600', '3600', '0', '0', '1', '0', '0', '0'),
(@CREATURE_ID + 1, '0', '531', '1', '0', '0', '-8365.7099609375', '1349.7341308593750', '-65.0198822021484375', '0.0', '3600', '3600', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_ID + 0, '15240'),
(@CREATURE_ID + 1, '15240');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Temple of Ahn\'Qiraj - Vekniss Hive Crawler (2) Patrol 001', '0', '0', '0', '1');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_ID + 0, '0'),
(@GROUP_ID, @CREATURE_ID + 1, '1');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '2', '10', '0', @PATH_ID, @PATH_TYPE, 'Temple of Ahn\'Qiraj - Vekniss Hive Crawler (2) Patrol 001');

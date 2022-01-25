
SET @PATH_ID := 409 * 10000 + 0;
SET @PATH_TYPE := 4;

SET @CREATURE_ID := 409 * 10000 + 0;
SET @GROUP_ID := 409 * 10000 + 0;

DELETE FROM `creature_movement` WHERE (`Id` = '56605');
DELETE FROM `creature` WHERE (`guid` IN ('56605', '56606', '56607'));

DELETE FROM `creature_linking_template` WHERE (`entry` = '12119') and (`map` = '409');

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '1000.20257568359375', '-955.40692138671875', '-179.582534790039062', '100', '0', '0'),
(@PATH_ID, '02', '1007.78198242187500', '-958.08843994140625', '-180.174041748046875', '100', '0', '0'),
(@PATH_ID, '03', '1014.45031738281250', '-978.56317138671875', '-181.185424804687500', '100', '0', '0'),
(@PATH_ID, '04', '1037.02221679687500', '-986.34191894531250', '-181.516296386718750', '100', '0', '0'),
(@PATH_ID, '05', '1053.14965820312500', '-990.75457763671875', '-182.661544799804687', '100', '0', '0'),
(@PATH_ID, '06', '1070.41137695312500', '-1006.7645263671875', '-185.544433593750000', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_ID + 0, '0', '409', '1', '0', '0', '1000.20257568359375', '-955.40692138671875', '-179.582534790039062', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'), -- a boss, cant find out its spawn loc, this is the first wp
(@CREATURE_ID + 1, '0', '409', '1', '0', '0', '1002.78607177734375', '-951.76617431640625', '-178.620162963867187', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'),
(@CREATURE_ID + 2, '0', '409', '1', '0', '0', '1002.24871826171875', '-959.68133544921875', '-180.471405029296875', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_ID + 0, '12118'),
(@CREATURE_ID + 1, '12119'),
(@CREATURE_ID + 2, '12119');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'The Molten Core - Lucifron', '0', '0', '0', '3');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_ID + 0, '0'),
(@GROUP_ID, @CREATURE_ID + 1, '1'),
(@GROUP_ID, @CREATURE_ID + 2, '2');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '4', '5', '0', @PATH_ID, @PATH_TYPE, 'The Molten Core - Lucifron');

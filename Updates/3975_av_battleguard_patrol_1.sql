
SET @PATH_ID := 300000;
SET @PATH_TYPE := 4;

SET @GROUP_ID := 300000;

SET @CREATURE_0 := 51946;
SET @CREATURE_1 := 51947;
SET @CREATURE_2 := 51948;

UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8.0 / 7.0) WHERE (`Entry` IN  ('14285', '14282'));

DELETE FROM `creature` WHERE (`guid` IN (@CREATURE_0, @CREATURE_1, @CREATURE_2));
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '30', '1', '0', '0', '-861.46771240234375', '-573.09490966796875', '57.65755462646484375', '0.0', '300', '300', '0', '0', '1', '0', '0', '0'), -- not the actual spawnpoint
(@CREATURE_1, '0', '30', '1', '0', '0', '-859.70690917968750', '-570.81109619140625', '57.66264724731445312', '0.0', '300', '300', '0', '0', '1', '0', '0', '0'), -- not the actual spawnpoint
(@CREATURE_2, '0', '30', '1', '0', '0', '-863.92205810546875', '-573.41595458984375', '57.66637420654296875', '0.0', '300', '300', '0', '0', '1', '0', '0', '0'); -- not the actual spawnpoint

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-859.83636474609375', '-575.12957763671875', '57.58419418334960937', '100', '0', '0'),
(@PATH_ID, '02', '-849.80255126953125', '-589.84973144531250', '57.21389389038085937', '100', '0', '0'),
(@PATH_ID, '03', '-839.37609863281250', '-608.24005126953125', '53.83673858642578125', '100', '0', '0'),
(@PATH_ID, '04', '-830.05078125000000', '-614.47546386718750', '53.83581924438476562', '100', '0', '0'),
(@PATH_ID, '05', '-823.81817626953125', '-617.37176513671875', '54.09971237182617187', '100', '0', '0'),
(@PATH_ID, '06', '-820.07312011718750', '-621.84820556640625', '54.11884307861328125', '100', '0', '0'),
(@PATH_ID, '07', '-824.82403564453125', '-633.68585205078125', '54.09850692749023437', '100', '0', '0'),
(@PATH_ID, '08', '-822.82403564453125', '-645.18566894531250', '53.74694061279296875', '100', '0', '0'),
(@PATH_ID, '09', '-816.32403564453125', '-657.93292236328125', '52.41793441772460937', '100', '0', '0'),
(@PATH_ID, '10', '-806.44140625000000', '-671.97222900390625', '50.93287658691406250', '100', '0', '0'),
(@PATH_ID, '11', '-793.29125976562500', '-679.94122314453125', '51.36388015747070312', '100', '0', '0'),
(@PATH_ID, '12', '-775.04754638671875', '-680.99890136718750', '52.69805526733398437', '100', '0', '0'),
(@PATH_ID, '13', '-752.35235595703125', '-678.17687988281250', '51.29360961914062500', '100', '0', '0'),
(@PATH_ID, '14', '-737.62835693359375', '-684.11492919921875', '50.47008514404296875', '100', '0', '0'),
(@PATH_ID, '15', '-733.89630126953125', '-690.75738525390625', '50.74344635009765625', '100', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '14285'),
(@CREATURE_1, '14282'),
(@CREATURE_2, '14282');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Alterac Valley - Frostwolf Battleguard | Frostwolf Bloodhound (3) Patrol 000', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1'),
(@GROUP_ID, @CREATURE_2, '2');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '2', '2', '0', @PATH_ID, @PATH_TYPE, 'Alterac Valley - Frostwolf Battleguard | Frostwolf Bloodhound (3) Patrol 000');

INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(@PATH_ID, 'Alterac Valley - Frostwolf Battleguard | Frostwolf Bloodhound (3) Patrol 000');

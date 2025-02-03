UPDATE `creature` SET `guid` = 156048 WHERE `guid` = 156039; -- Eyeless Watcher (missing commit?)
SET @MOVID = 156039;
DELETE FROM creature WHERE guid = @MOVID;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@MOVID, 5352, 1, 1, '-4605.3027', '835.5799', '48.544235', 5.8294, 115200,172800, 0, 2);

DELETE FROM creature_movement WHERE Id = @MOVID;
INSERT INTO creature_movement (Id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId, Comment) VALUES
(@MOVID + 0, '1', '-4605.3027', '835.5799', '48.544235', '100', '0', '0', NULL),
(@MOVID + 0, '2', '-4590.3706', '815.77985', '47.34755', '100', '0', '0', NULL),
(@MOVID + 0, '3', '-4584.7266', '781.70197', '46.92108', '100', '0', '0', NULL),
(@MOVID + 0, '4', '-4583.102', '744.00305', '48.353146', '100', '0', '0', NULL),
(@MOVID + 0, '5', '-4588.9907', '716.42096', '47.355934', '100', '0', '0', NULL),
(@MOVID + 0, '6', '-4604.914', '689.81055', '49.369003', '100', '0', '0', NULL),
(@MOVID + 0, '7', '-4607.4595', '660.7903', '50.849434', '100', '0', '0', NULL),
(@MOVID + 0, '8', '-4590.743', '642.7796', '48.480007', '100', '0', '0', NULL),
(@MOVID + 0, '9', '-4575.6436', '618.01086', '48.570393', '100', '0', '0', NULL),
(@MOVID + 0, '10', '-4536.929', '617.47156', '48.603333', '100', '0', '0', NULL),
(@MOVID + 0, '11', '-4521.9233', '625.3254', '56.21533', '100', '0', '0', NULL),
(@MOVID + 0, '12', '-4512.896', '616.85175', '56.740864', '100', '0', '0', NULL),
(@MOVID + 0, '13', '-4488.385', '621.7344', '53.67344', '100', '0', '0', NULL),
(@MOVID + 0, '14', '-4447.5312', '612.49664', '57.91126', '100', '0', '0', NULL),
(@MOVID + 0, '15', '-4415.699', '614.6194', '58.639984', '100', '0', '0', NULL),
(@MOVID + 0, '16', '-4383.5884', '618.1897', '58.5411', '100', '0', '0', NULL),
(@MOVID + 0, '17', '-4351.009', '616.6503', '58.06495', '100', '0', '0', NULL),
(@MOVID + 0, '18', '-4321.2476', '616.3062', '61.908962', '100', '0', '0', NULL);

SET @SGGUID := 8000;
DELETE FROM spawn_group WHERE Id =@SGGUID+0;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGGUID+0, 'Feralas - Old Grizzlegut', 0, 1, 0, 0);
DELETE FROM spawn_group_spawn WHERE Id =@SGGUID+0;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
-- Feralas - Old Grizzlegut
(@SGGUID+0, 156039, -1),
(@SGGUID+0, 51839, -1);

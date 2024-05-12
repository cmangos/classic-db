/*
01 02 03
03 04 05
02 06 07
03 06 08
01 04 07
03 04 06
01 04 07
02 03 05
03 05 09
03 06 08
02 03 05
06 07 08
02 06 10
07 08 11
05 07 09
08 11 12
-- --------
01 05 06 11
02 04 08 09
03 07 10 12
*/

DELETE FROM `gameobject` WHERE (`guid` IN (170691, 170692, 170693, 170694, 170695, 170696, 170697, 170698, 170699, 170700));
DELETE FROM `spawn_group` WHERE (`Id` = 19998);
DELETE FROM `spawn_group_spawn` WHERE `guid` IN (170691, 170692, 170693, 170694, 170695, 170696, 170697, 170698, 170699, 170700);

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OGUID := 142470;
SET @SGUID := 448;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OGUID + 00, 0, 0, 1, -14928.201171875, 74.125, 7.521843910217285156, 2.251473426818847656, 0, 0, 0.902585029602050781, 0.430511653423309326, 180, 300),
(@OGUID + 01, 0, 0, 1, -14912.8525390625, 83.48480987548828125, 2.139600992202758789, 2.600535154342651367, 0, 0, 0.963629722595214843, 0.26724100112915039, 180, 300),
(@OGUID + 02, 0, 0, 1, -14923.158203125, 126.02203369140625, 8.219193458557128906, 6.14356088638305664, 0, 0, -0.06975555419921875, 0.997564136981964111, 180, 300),
(@OGUID + 03, 0, 0, 1, -14919.732421875, 90.0838775634765625, 0.199882000684738159, 4.468043327331542968, 0, 0, -0.7880105972290039, 0.615661680698394775, 180, 300);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGUID + 00, @OGUID + 00, -1),
(@SGUID + 00, @OGUID + 01, -1),
(@SGUID + 00, @OGUID + 02, -1),
(@SGUID + 00, @OGUID + 03, -1);

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `WorldStateExpression`, `Flags`, `StringId`) VALUES
(@SGUID + 00, 'Stranglethorn Vale - Cortello''s Riddle (1) Quest 000', 1, 1, 0, 0, 0, 0);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 00, 2554, 0, 0, 0);
-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OGUID := 142480;
SET @SGUID := 449;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OGUID + 00, 0, 0, 1, -14923.7744140625, 356.59271240234375, 8.239757537841796875, 3.333590030670166015, 0, 0, -0.99539566040039062, 0.095851235091686248, 180, 300),
(@OGUID + 01, 0, 0, 1, -14966.6162109375, 337.695220947265625, 2.160166025161743164, 1.692969322204589843, 0, 0, 0.748955726623535156, 0.662620067596435546, 180, 300),
(@OGUID + 02, 0, 0, 1, -14938.033203125, 351.788360595703125, 7.532404899597167968, 5.393068790435791015, 0, 0, -0.43051052093505859, 0.902585566043853759, 180, 300),
(@OGUID + 03, 0, 0, 1, -14937.8564453125, 358.377349853515625, 0.220440000295639038, 1.815141916275024414, 0, 0, 0.788010597229003906, 0.615661680698394775, 180, 300);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGUID + 00, @OGUID + 00, -1),
(@SGUID + 00, @OGUID + 01, -1),
(@SGUID + 00, @OGUID + 02, -1),
(@SGUID + 00, @OGUID + 03, -1);

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `WorldStateExpression`, `Flags`, `StringId`) VALUES
(@SGUID + 00, 'Stranglethorn Vale - Cortello''s Riddle (1) Quest 001', 1, 1, 0, 0, 0, 0);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 00, 2554, 0, 0, 0);
-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OGUID := 142490;
SET @SGUID := 450;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OGUID + 00, 0, 0, 1, -14976.98828125, 275.259979248046875, 7.520304203033447265, 4.747295856475830078, 0, 0, -0.69465827941894531, 0.719339847564697265, 180, 300),
(@OGUID + 01, 0, 0, 1, -15027.8486328125, 267.461151123046875, 8.2172393798828125, 4.642575740814208984, 0, 0, -0.731353759765625, 0.681998312473297119, 180, 300),
(@OGUID + 02, 0, 0, 1, -14983.0634765625, 259.9658203125, 0.252705007791519165, 1.623155713081359863, 0, 0, 0.725374221801757812, 0.688354730606079101, 180, 300),
(@OGUID + 03, 0, 0, 1, -15004.86328125, 265.921600341796875, 0.095489002764225006, 4.1538848876953125, 0, 0, -0.8746194839477539, 0.484810054302215576, 180, 300);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGUID + 00, @OGUID + 00, -1),
(@SGUID + 00, @OGUID + 01, -1),
(@SGUID + 00, @OGUID + 02, -1),
(@SGUID + 00, @OGUID + 03, -1);

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `WorldStateExpression`, `Flags`, `StringId`) VALUES
(@SGUID + 00, 'Stranglethorn Vale - Cortello''s Riddle (1) Quest 002', 1, 1, 0, 0, 0, 0);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 00, 2554, 0, 0, 0);

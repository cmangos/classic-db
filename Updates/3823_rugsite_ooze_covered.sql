
DELETE FROM `gameobject` WHERE `guid` IN ('15429', '15437', '15443', '15444', '15445', '15447', '15449', '15450', '14684', '17085', '17086');

SET @OBJECT_1 = 15429;
SET @OBJECT_2 = 15437;
SET @OBJECT_3 = 15443;
SET @OBJECT_4 = 15444;
SET @OBJECT_5 = 15445;

SET @GROUP_ID = 10010;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, '0', '1', '1', '-6502.47705078125', '-3233.939453125000', '-113.6767578125000000', '1.43116807937622070312', '0', '0', '0.656058311462402343750', '0.75471019744873046875000000', '1800', '1800', '100', '1'),
(@OBJECT_2, '0', '1', '1', '-6443.21093750000', '-3289.050537109375', '-105.0414276123046875', '1.06464958190917968750', '0', '0', '0.507537841796875000000', '0.86162942647933959960937500', '1800', '1800', '100', '1'),
(@OBJECT_3, '0', '1', '1', '-6512.61962890625', '-3470.855712890625', '-69.16316223144531250', '2.14675283432006835938', '0', '0', '0.878816604614257812500', '0.47715970873832702636718750', '1800', '1800', '100', '1'),
(@OBJECT_4, '0', '1', '1', '-6395.60400390625', '-3482.743164062500', '-70.12546539306640625', '5.61996221542358398438', '0', '0', '-0.32556724548339843750', '0.94551885128021240234375000', '1800', '1800', '100', '1'),
(@OBJECT_5, '0', '1', '1', '-6458.27734375000', '-3487.438720703125', '-69.08847045898437500', '2.28637886047363281250', '0', '0', '0.909960746765136718750', '0.41469439864158630371093750', '1800', '1800', '100', '1');


INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '73940'), (@OBJECT_1, '73941'), (@OBJECT_1, '123310'),
(@OBJECT_2, '73940'), (@OBJECT_2, '73941'), (@OBJECT_2, '123310'),
(@OBJECT_3, '73940'), (@OBJECT_3, '73941'), (@OBJECT_3, '123310'),
(@OBJECT_4, '73940'), (@OBJECT_4, '73941'), (@OBJECT_4, '123310'),
(@OBJECT_5, '73940'), (@OBJECT_5, '73941'), (@OBJECT_5, '123310');


INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Thousand Needles - The Rustmaul Dig Site - Ooze Covered Silver Vein | Ooze Covered Gold Vein | Ooze Covered Mithril Deposit (1) Ore 000', '1', '1', '0', '0');

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 15447;
SET @OBJECT_2 = 15449;
SET @OBJECT_3 = 15450;

SET @GROUP_ID = 10011;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, '0', '1', '1', '-6500.98632812500', '-3348.639892578125', '-89.90979766845703125', '3.57793021202087402344', '0', '0', '-0.97629547119140625000', '0.21644206345081329345703125', '1800', '1800', '100', '1'),
(@OBJECT_2, '0', '1', '1', '-6482.59033203125', '-3318.970458984375', '-96.62798309326171875', '4.95673751831054687500', '0', '0', '-0.61566066741943359375', '0.78801137208938598632812500', '1800', '1800', '100', '1'),
(@OBJECT_3, '0', '1', '1', '-6518.18115234375', '-3307.589843750000', '-93.47142028808593750', '2.19911456108093261719', '0', '0', '0.891006469726562500000', '0.45399063825607299804687500', '1800', '1800', '100', '1');

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '73940'), (@OBJECT_1, '73941'), (@OBJECT_1, '123310'),
(@OBJECT_2, '73940'), (@OBJECT_2, '73941'), (@OBJECT_2, '123310'),
(@OBJECT_3, '73940'), (@OBJECT_3, '73941'), (@OBJECT_3, '123310');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Thousand Needles - The Rustmaul Dig Site - Ooze Covered Silver Vein | Ooze Covered Gold Vein | Ooze Covered Mithril Deposit (1) Ore 001', '1', '1', '0', '0');

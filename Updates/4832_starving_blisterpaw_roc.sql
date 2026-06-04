DELETE FROM `creature` WHERE (`guid` IN ('22382', '22386', '22663', '22664', '22671', '22674', '22675', '22676', '22677', '22678', '22679'));

SET @CGUID := 23077;
SET @SGUID := 11115;

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID + 000, '0', '1', '1', '-7539.86279296875', '-3618.805175781250', '10.60434913635253906', '4.037419319152832031', '300', '300', '5', '1'),
(@CGUID + 001, '0', '1', '1', '-7511.94628906250', '-3616.762207031250', '11.67174720764160156', '0.195046916604042053', '300', '300', '5', '1'),
(@CGUID + 002, '0', '1', '1', '-7524.02246093750', '-3651.031250000000', '9.165461540222167968', '0.946387410163879394', '300', '300', '5', '1'),
(@CGUID + 003, '0', '1', '1', '-7581.89501953125', '-3612.707031250000', '13.36350727081298828', '3.699348688125610351', '300', '300', '5', '1'),
(@CGUID + 004, '0', '1', '1', '-7557.45166015625', '-3628.996582031250', '12.84375000000000000', '3.399337530136108398', '300', '300', '5', '1'),
(@CGUID + 005, '0', '1', '1', '-7550.18408203125', '-3593.723144531250', '14.01746654510498046', '1.356296300888061523', '300', '300', '5', '1'),
(@CGUID + 006, '0', '1', '1', '-7499.34228515625', '-3660.509033203125', '10.03567409515380859', '4.447729110717773437', '300', '300', '5', '1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(@SGUID + 000, 'Tanaris - Starving Blisterpaw | Roc (1) Wandering 000', '0', '0', '0', '0', '0'),
(@SGUID + 001, 'Tanaris - Starving Blisterpaw | Roc (1) Wandering 001', '0', '0', '0', '0', '0'),
(@SGUID + 002, 'Tanaris - Starving Blisterpaw | Roc (1) Wandering 002', '0', '0', '0', '0', '0'),
(@SGUID + 003, 'Tanaris - Starving Blisterpaw | Roc (1) Wandering 003', '0', '0', '0', '0', '0'),
(@SGUID + 004, 'Tanaris - Starving Blisterpaw | Roc (1) Wandering 004', '0', '0', '0', '0', '0'),
(@SGUID + 005, 'Tanaris - Starving Blisterpaw | Roc (1) Wandering 005', '0', '0', '0', '0', '0'),
(@SGUID + 006, 'Tanaris - Starving Blisterpaw | Roc (1) Wandering 006', '0', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@SGUID + 000, @CGUID + 000, '0', '0'),
(@SGUID + 001, @CGUID + 001, '0', '0'),
(@SGUID + 002, @CGUID + 002, '0', '0'),
(@SGUID + 003, @CGUID + 003, '0', '0'),
(@SGUID + 004, @CGUID + 004, '0', '0'),
(@SGUID + 005, @CGUID + 005, '0', '0'),
(@SGUID + 006, @CGUID + 006, '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 000, '5425', '0', '0', '0'), (@SGUID + 000, '5428', '0', '0', '0'),
(@SGUID + 001, '5425', '0', '0', '0'), (@SGUID + 001, '5428', '0', '0', '0'),
(@SGUID + 002, '5425', '0', '0', '0'), (@SGUID + 002, '5428', '0', '0', '0'),
(@SGUID + 003, '5425', '0', '0', '0'), (@SGUID + 003, '5428', '0', '0', '0'),
(@SGUID + 004, '5425', '0', '0', '0'), (@SGUID + 004, '5428', '0', '0', '0'),
(@SGUID + 005, '5425', '0', '0', '0'), (@SGUID + 005, '5428', '0', '0', '0'),
(@SGUID + 006, '5425', '0', '0', '0'), (@SGUID + 006, '5428', '0', '0', '0');

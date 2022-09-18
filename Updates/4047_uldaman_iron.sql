
-- Iron Deposit
DELETE FROM `gameobject` WHERE (`guid` IN (70620, 71235, 71310, 71405, 71385, 71390, 71400, 105232));
DELETE FROM `pool_gameobject` WHERE (`guid` IN (70620, 71235, 71310, 71405, 71385, 71390, 71400, 105232));

-- Silver Vein
DELETE FROM `gameobject` WHERE (`guid` IN (70623, 71238, 71313, 71388, 71398, 71408, 71393, 71403, 105235));
DELETE FROM `pool_gameobject` WHERE (`guid` IN (70623, 71238, 71313, 71388, 71398, 71408, 71393, 71403, 105235));

-- Gold Vein
DELETE FROM `gameobject` WHERE (`guid` IN (70622, 71237, 71312, 71387, 71407, 71392, 71402, 105234));
DELETE FROM `pool_gameobject` WHERE (`guid` IN (70622, 71237, 71312, 71387, 71407, 71392, 71402, 105234));

DELETE FROM `pool_template` WHERE (`entry` IN (4435, 5664, 5665, 5666, 5668, 5669, 5670, 5671));

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140870;
SET @OBJECT_2 = 140871;
SET @OBJECT_3 = 140872;
SET @OBJECT_4 = 140873;

SET @GROUP_ID = 89;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, '0', '0', '1', '-6084.94775390625', '-3034.083007812500', '250.3614959716796875', '3.996806621551513671', '0', '0', '-0.90996074676513671', '0.414694398641586303', '300', '600', '100', '1'),
(@OBJECT_2, '0', '0', '1', '-6094.10205078125', '-3095.984130859375', '244.5668945312500000', '1.378809213638305664', '0', '0', '0.636077880859375000', '0.771624863147735595', '300', '600', '100', '1'),
(@OBJECT_3, '0', '0', '1', '-6083.84228515625', '-3166.852783203125', '255.2645111083984375', '3.839725255966186523', '0', '0', '-0.93969249725341796', '0.342020452022552490', '300', '600', '100', '1'),
(@OBJECT_4, '0', '0', '1', '-6121.21728515625', '-3080.164794921875', '251.2484283447265625', '3.194002151489257812', '0', '0', '-0.99965667724609375', '0.026201646775007247', '300', '600', '100', '1');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Uldaman - Iron Deposit | Silver Vein | Gold Vein (1) Ore 000', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1735', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5'),
(@GROUP_ID, '1734', '0', '0', '5');


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140880;
SET @OBJECT_2 = 140881;
SET @OBJECT_3 = 140882;

SET @GROUP_ID = 90;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, '0', '0', '1', '-6128.58300781250', '-2913.016601562500', '212.1946258544921875', '3.700104713439941406', '0', '0', '-0.96126079559326171', '0.275640487670898437', '300', '600', '100', '1'),
(@OBJECT_2, '0', '0', '1', '-6172.92187500000', '-3007.902099609375', '226.6365203857421875', '0.610863447189331054', '0', '0', '0.300704956054687500', '0.953717231750488281', '300', '600', '100', '1'),
(@OBJECT_3, '0', '0', '1', '-6186.06005859375', '-3038.776611328125', '221.0790252685546875', '5.84685373306274414', '0', '0', '-0.216439247131347650', '0.976296067237854003', '300', '600', '100', '1');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Uldaman - Iron Deposit | Silver Vein | Gold Vein (1) Ore 001', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1735', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5'),
(@GROUP_ID, '1734', '0', '0', '5');

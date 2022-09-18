
-- Mithril Deposit
DELETE FROM `gameobject` WHERE (`guid` IN (70621, 71236, 71311, 71386, 71406, 71391, 71401, 105233, 105238));
DELETE FROM `pool_gameobject` WHERE (`guid` IN (70621, 71236, 71311, 71386, 71406, 71391, 71401, 105233, 105238));

-- Silver Vein
DELETE FROM `gameobject` WHERE (`guid` IN (105240));
DELETE FROM `pool_gameobject` WHERE (`guid` IN (105240));

-- Iron Deposit
DELETE FROM `gameobject` WHERE (`guid` IN (105237));
DELETE FROM `pool_gameobject` WHERE (`guid` IN (105237));

-- Gold Vein
DELETE FROM `gameobject` WHERE (`guid` IN (105239));
DELETE FROM `pool_gameobject` WHERE (`guid` IN (105239));

-- Truesilver Deposit
DELETE FROM `gameobject` WHERE (`guid` IN (70624, 71239, 71314, 71389, 71409, 71394, 71404, 105236, 105241));
DELETE FROM `pool_gameobject` WHERE (`guid` IN (70624, 71239, 71314, 71389, 71409, 71394, 71404, 105236, 105241));

DELETE FROM `pool_template` WHERE (`entry` IN (5672));

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140860;
SET @OBJECT_2 = 140861;
SET @OBJECT_3 = 140862;
SET @OBJECT_4 = 140863;

SET @GROUP_ID = 88;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, '0', '0', '1', '-6152.34179687500', '-3027.715087890625', '220.9054412841796875', '2.199114561080932617', '0', '0', '0.891006469726562500', '0.453990638256072998', '600', '900', '100', '1'),
(@OBJECT_2, '0', '0', '1', '-6271.73291015625', '-2913.515136718750', '227.8298034667968750', '2.897245407104492187', '0', '0', '0.992546081542968750', '0.121869951486587524', '600', '900', '100', '1'),
(@OBJECT_3, '0', '0', '1', '-6150.07226562500', '-2875.812011718750', '213.6828155517578125', '0.366517573595046997', '0', '0', '0.182234764099121093', '0.983255028724670410', '600', '900', '100', '1'),
(@OBJECT_4, '0', '0', '1', '-6280.70556640625', '-2957.267333984375', '224.8830718994140625', '1.378809213638305664', '0', '0', '0.636077880859375000', '0.771624863147735595', '600', '900', '100', '1');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Uldaman - Mithril Deposit | Gold Vein | Truesilver Deposit (1) Ore 000', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '2040', '0', '0', '0'),
(@GROUP_ID, '1734', '0', '0', '5'),
(@GROUP_ID, '2047', '0', '0', '5');


DELETE FROM `gameobject` WHERE (`guid` IN (32134, 42439, 55563, 55567, 300058));
DELETE FROM `pool_gameobject` WHERE (`guid` IN (32134, 42439, 55563, 55567, 300058));
DELETE FROM `pool_template` WHERE (`entry` IN (31020, 31021, 39930));

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 141090;
SET @OBJECT_2 = 141091;
SET @OBJECT_3 = 141092;

SET @GROUP_ID = 281;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OBJECT_1, 0, 0, 1, -10834.8203125000, -2728.318847656250, 7.777578830718994140, 2.094393253326416015, 0, 0, 0.866024971008300781, 0.500000774860382080, 300, 900), -- Blasted Lands - Solid Chest (1) Chest 000
(@OBJECT_2, 0, 0, 1, -10858.3115234375, -2645.973144531250, 8.745295524597167968, 4.153884887695312500, 0, 0, -0.87461948394775390, 0.484810054302215576, 300, 900), -- Blasted Lands - Solid Chest (1) Chest 000
(@OBJECT_3, 0, 0, 1, -10886.6464843750, -2665.342529296875, 7.635721206665039062, 3.368495941162109375, 0, 0, -0.99357128143310546, 0.113208353519439697, 300, 900); -- Blasted Lands - Solid Chest (1) Chest 000

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Blasted Lands - Solid Chest (1) Chest 000', 1, 1, 0, 0);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, -1),
(@GROUP_ID, @OBJECT_2, -1),
(@GROUP_ID, @OBJECT_3, -1);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, 153451, 0, 0, 0);

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 141100;
SET @OBJECT_2 = 141101;
SET @OBJECT_3 = 141102;

SET @GROUP_ID = 282;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OBJECT_1, 0, 0, 1, -11227.9257812500, -3480.418212890625, 8.411176681518554687, 5.393068790435791015, 0, 0, -0.43051052093505859, 0.902585566043853759, 300, 900), -- Blasted Lands - Solid Chest (1) Chest 001
(@OBJECT_2, 0, 0, 1, -11331.9414062500, -3332.497314453125, 8.617773056030273437, 2.548179388046264648, 0, 0, 0.956304550170898437, 0.292372345924377441, 300, 900), -- Blasted Lands - Solid Chest (1) Chest 001
(@OBJECT_3, 0, 0, 1, -11311.9589843750, -3434.668701171875, 7.467741966247558593, 2.251473426818847656, 0, 0, 0.902585029602050781, 0.430511653423309326, 300, 900); -- Blasted Lands - Solid Chest (1) Chest 001

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Blasted Lands - Solid Chest (1) Chest 001', 1, 1, 0, 0);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, -1),
(@GROUP_ID, @OBJECT_2, -1),
(@GROUP_ID, @OBJECT_3, -1);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, 153451, 0, 0, 0);

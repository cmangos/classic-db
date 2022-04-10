
SET @OBJECT_1 = 78771;
SET @OBJECT_2 = 78774;
SET @OBJECT_3 = 78777;
SET @OBJECT_4 = 78780;

SET @GROUP_ID = 31;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, '0', '0', '1', '3025.695556640625', '-1567.1376953125000', '150.4242553710937500', '0.558503925800323486', '0', '0', '0.275636672973632812', '0.961261868476867675', '1800', '2700', '100', '1'),
(@OBJECT_2, '0', '0', '1', '3056.531005859375', '-1543.2446289062500', '149.8952026367187500', '2.164205789566040039', '0', '0', '0.882946968078613281', '0.469472706317901611', '1800', '2700', '100', '1'),
(@OBJECT_3, '0', '0', '1', '3079.409912109375', '-1533.4869384765625', '150.6266021728515625', '3.298687219619750976', '0', '0', '-0.99691677093505859', '0.078466430306434631', '1800', '2700', '100', '1'),
(@OBJECT_4, '0', '0', '1', '3116.420166015625', '-1540.3697509765625', '150.2277526855468750', '2.652894020080566406', '0', '0', '0.970294952392578125', '0.241925001144409179', '1800', '2700', '100', '1');

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '2047'), (@OBJECT_1, '175404'),
(@OBJECT_2, '2047'), (@OBJECT_2, '175404'),
(@OBJECT_3, '2047'), (@OBJECT_3, '175404'),
(@OBJECT_4, '2047'), (@OBJECT_4, '175404');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Western Plaguelands - Truesilver Deposit | Rich Thorium Vein (1) Ore 000', '1', '1', '0', '0');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 78783;
SET @OBJECT_2 = 78786;
SET @OBJECT_3 = 78789;
SET @OBJECT_4 = 78792;

SET @GROUP_ID = 32;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, '0', '0', '1', '3047.893554687500', '-1518.5606689453125', '161.8415985107421875', '1.989672422409057617', '0', '0', '0.838669776916503906', '0.544640243053436279', '1800', '2700', '100', '1'),
(@OBJECT_2, '0', '0', '1', '2979.148193359375', '-1661.4227294921875', '151.5873870849609375', '0.925023794174194335', '0', '0', '0.446197509765625000', '0.894934535026550292', '1800', '2700', '100', '1'),
(@OBJECT_3, '0', '0', '1', '2955.938964843750', '-1341.0092773437500', '151.2672882080078125', '5.044002056121826171', '0', '0', '-0.58070278167724609', '0.814115643501281738', '1800', '2700', '100', '1'),
(@OBJECT_4, '0', '0', '1', '2779.762939453125', '-1391.1530761718750', '153.4921417236328125', '3.822272777557373046', '0', '0', '-0.94264125823974609', '0.333807557821273803', '1800', '2700', '100', '1');

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '2047'), (@OBJECT_1, '175404'),
(@OBJECT_2, '2047'), (@OBJECT_2, '175404'),
(@OBJECT_3, '2047'), (@OBJECT_3, '175404'),
(@OBJECT_4, '2047'), (@OBJECT_4, '175404');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Western Plaguelands - Truesilver Deposit | Rich Thorium Vein (1) Ore 001', '1', '1', '0', '0');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 78795;
SET @OBJECT_2 = 78798;
SET @OBJECT_3 = 78801;
SET @OBJECT_4 = 78804;

SET @GROUP_ID = 33;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, '0', '0', '1', '2374.702392578125', '-2272.6809082031250', '48.89876556396484375', '5.777040958404541015', '0', '0', '-0.25037956237792968', '0.968147754669189453', '1800', '2700', '100', '1'),
(@OBJECT_2, '0', '0', '1', '2284.892333984375', '-2227.4523925781250', '56.80730819702148437', '4.956737518310546875', '0', '0', '-0.61566066741943359', '0.788011372089385986', '1800', '2700', '100', '1'),
(@OBJECT_3, '0', '0', '1', '2406.240722656250', '-2344.4458007812500', '53.68817138671875000', '5.532694816589355468', '0', '0', '-0.36650085449218750', '0.930417716503143310', '1800', '2700', '100', '1'),
(@OBJECT_4, '0', '0', '1', '2285.387695312500', '-2334.2456054687500', '63.67953109741210937', '4.258606910705566406', '0', '0', '-0.84804725646972656', '0.529920578002929687', '1800', '2700', '100', '1');

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '2047'), (@OBJECT_1, '175404'),
(@OBJECT_2, '2047'), (@OBJECT_2, '175404'),
(@OBJECT_3, '2047'), (@OBJECT_3, '175404'),
(@OBJECT_4, '2047'), (@OBJECT_4, '175404');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Western Plaguelands - Truesilver Deposit | Rich Thorium Vein (1) Ore 002', '1', '1', '0', '0');

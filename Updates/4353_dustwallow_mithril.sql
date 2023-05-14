
-- Mithril Deposit
DELETE FROM `gameobject` WHERE (`guid` IN (11762, 13195, 40797, 63989, 63990, 120459));
DELETE FROM `pool_gameobject` WHERE (`guid` IN (11762, 13195, 40797, 63989, 63990, 120459));

-- Truesilver Deposit
DELETE FROM `gameobject` WHERE (`guid` IN (40759));
DELETE FROM `pool_gameobject` WHERE (`guid` IN (40759));

DELETE FROM `pool_template` WHERE (`entry` IN (3781, 3790));

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 141000;
SET @OBJECT_2 = 141001;
SET @OBJECT_3 = 141002;
SET @OBJECT_4 = 141003;
SET @OBJECT_5 = 141004;
SET @OBJECT_6 = 141005;

SET @GROUP_ID = 10227;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OBJECT_1, 0, 1, 1, -4969.15185546875, -3877.734375000000, 57.78450012207031250, 1.815141916275024414, 0, 0, 0.788010597229003906, 0.615661680698394775, 600, 900),
(@OBJECT_2, 0, 1, 1, -5025.08984375000, -3735.538330078125, 52.06415939331054687, 5.044002056121826171, 0, 0, -0.58070278167724609, 0.814115643501281738, 600, 900),
(@OBJECT_3, 0, 1, 1, -4979.04785156250, -3583.969970703125, 49.82926940917968750, 1.431168079376220703, 0, 0, 0.656058311462402343, 0.754710197448730468, 600, 900),
(@OBJECT_4, 0, 1, 1, -4914.44580078125, -3295.939697265625, 56.76278686523437500, 1.117009282112121582, 0, 0, 0.529918670654296875, 0.848048448562622070, 600, 900),
(@OBJECT_5, 0, 1, 1, -4903.81445312500, -3182.384521484375, 69.23558044433593750, 0.418878614902496337, 0, 0, 0.207911491394042968, 0.978147625923156738, 600, 900),
(@OBJECT_6, 0, 1, 1, -4751.76855468750, -3116.785156250000, 67.46291351318359375, 1.343901276588439941, 0, 0, 0.622513771057128906, 0.782608807086944580, 600, 900);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1'),
(@GROUP_ID, @OBJECT_6, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Dustwallow Marsh - Mithril Deposit | Gold Vein | Truesilver Deposit (1) Ore 000', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '2040', '0', '0', '0'),
(@GROUP_ID, '1734', '0', '0', '5'),
(@GROUP_ID, '2047', '0', '0', '5');

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 141010;
SET @OBJECT_2 = 141011;
SET @OBJECT_3 = 141012;
SET @OBJECT_4 = 141013;
SET @OBJECT_5 = 141014;
SET @OBJECT_6 = 141015;

SET @GROUP_ID = 10228;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OBJECT_1, 0, 1, 1, -4441.83984375000, -3842.842041015625, 36.90475463867187500, 1.256635904312133789, 0, 0, 0.587784767150878906, 0.809017360210418701, 600, 900),
(@OBJECT_2, 0, 1, 1, -4544.00976562500, -3974.585937500000, 48.42370223999023437, 2.164205789566040039, 0, 0, 0.882946968078613281, 0.469472706317901611, 600, 900),
(@OBJECT_3, 0, 1, 1, -4678.96044921875, -4025.905517578125, 50.78909301757812500, 2.513273954391479492, 0, 0, 0.951056480407714843, 0.309017121791839599, 600, 900),
(@OBJECT_4, 0, 1, 1, -4834.18994140625, -4001.447509765625, 63.02287673950195312, 4.310965538024902343, 0, 0, -0.83388519287109375, 0.551937937736511230, 600, 900),
(@OBJECT_5, 0, 1, 1, -4652.35742187500, -3061.899658203125, 51.58527755737304687, 1.658061861991882324, 0, 0, 0.737277030944824218, 0.675590515136718750, 600, 900),
(@OBJECT_6, 0, 1, 1, -4639.07080078125, -2942.411376953125, 51.51849365234375000, 2.548179388046264648, 0, 0, 0.956304550170898437, 0.292372345924377441, 600, 900);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1'),
(@GROUP_ID, @OBJECT_6, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Dustwallow Marsh - Mithril Deposit | Gold Vein | Truesilver Deposit (1) Ore 001', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '2040', '0', '0', '0'),
(@GROUP_ID, '1734', '0', '0', '5'),
(@GROUP_ID, '2047', '0', '0', '5');

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 141020;
SET @OBJECT_2 = 141021;
SET @OBJECT_3 = 141022;
SET @OBJECT_4 = 141023;

SET @GROUP_ID = 10229;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OBJECT_1, 0, 1, 1, -4378.35546875000, -2958.627685546875, 27.16479301452636718, 3.385940074920654296, 0, 0, -0.99254608154296875, 0.121869951486587524, 600, 900),
(@OBJECT_2, 0, 1, 1, -4405.98535156250, -2952.440917968750, 23.67043495178222656, 5.009094715118408203, 0, 0, -0.59482288360595703, 0.803856790065765380, 600, 900),
(@OBJECT_3, 0, 1, 1, -4470.82470703125, -2971.229248046875, 30.21814346313476562, 5.393068790435791015, 0, 0, -0.43051052093505859, 0.902585566043853759, 600, 900),
(@OBJECT_4, 0, 1, 1, -4464.96533203125, -2882.581298828125, 22.37674903869628906, 3.717553615570068359, 0, 0, -0.95881938934326171, 0.284016460180282592, 600, 900);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Dustwallow Marsh - Mithril Deposit | Gold Vein | Truesilver Deposit (1) Ore 002', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '2040', '0', '0', '0'),
(@GROUP_ID, '1734', '0', '0', '5'),
(@GROUP_ID, '2047', '0', '0', '5');

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 141030;
SET @OBJECT_2 = 141031;
SET @OBJECT_3 = 141032;
SET @OBJECT_4 = 141033;

SET @GROUP_ID = 10230;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OBJECT_1, 0, 1, 1, -4399.59912109375, -3014.341064453125, 34.05477142333984375, 0.802850961685180664, 0, 0, 0.390730857849121093, 0.920504987239837646, 600, 900),
(@OBJECT_2, 0, 1, 1, -4381.83837890625, -2918.379150390625, 26.52736854553222656, 3.961898565292358398, 0, 0, -0.91705989837646484, 0.398749500513076782, 600, 900),
(@OBJECT_3, 0, 1, 1, -4434.32031250000, -2957.626220703125, 26.79018974304199218, 4.223697185516357421, 0, 0, -0.85716724395751953, 0.515038192272186279, 600, 900),
(@OBJECT_4, 0, 1, 1, -4434.56738281250, -2908.509521484375, 27.21652984619140625, 4.031712055206298828, 0, 0, -0.90258502960205078, 0.430511653423309326, 600, 900);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Dustwallow Marsh - Mithril Deposit | Gold Vein | Truesilver Deposit (1) Ore 003', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '2040', '0', '0', '0'),
(@GROUP_ID, '1734', '0', '0', '5'),
(@GROUP_ID, '2047', '0', '0', '5');

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 141040;
SET @OBJECT_2 = 141041;
SET @OBJECT_3 = 141042;
SET @OBJECT_4 = 141043;

SET @GROUP_ID = 10231;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OBJECT_1, 0, 1, 1, -2742.697021484375, -2574.460937500000, 33.39913177490234375, 0.226892471313476562, 0, 0, 0.113203048706054687, 0.993571877479553222, 600, 900),
(@OBJECT_2, 0, 1, 1, -2766.386718750000, -2606.880615234375, 34.29738616943359375, 5.410521507263183593, 0, 0, -0.42261791229248046, 0.906307935714721679, 600, 900),
(@OBJECT_3, 0, 1, 1, -2784.040771484375, -2644.283203125000, 32.20653152465820312, 2.530723094940185546, 0, 0, 0.953716278076171875, 0.300707906484603881, 600, 900),
(@OBJECT_4, 0, 1, 1, -2814.901611328125, -2589.183837890625, 33.66703414916992187, 2.024578809738159179, 0, 0, 0.848047256469726562, 0.529920578002929687, 600, 900);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Dustwallow Marsh - Mithril Deposit | Gold Vein | Truesilver Deposit (1) Ore 004', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '2040', '0', '0', '0'),
(@GROUP_ID, '1734', '0', '0', '5'),
(@GROUP_ID, '2047', '0', '0', '5');

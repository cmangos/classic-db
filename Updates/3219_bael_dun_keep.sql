
DELETE FROM `creature` WHERE (`guid` = '49109');
DELETE FROM `creature_movement` WHERE `id` IN ('13670', '13638', '13668', '13667', '13674');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
('13642', '3376'), ('13642', '3377'),
('13643', '3376'), ('13643', '3377');

UPDATE `creature` SET `position_x` = '-4073.6220703125', `position_y` = '-2275.51025390625', `position_z` = '123.2482376098632812', `orientation` = '3.826325893402099609', `spawndist` = '3', `MovementType` = '1' WHERE (`guid` = '13648');
UPDATE `creature` SET `position_x` = '-4046.876708984375', `position_y` = '-2287.065185546875', `position_z` = '119.27734375', `orientation` = '5.50900888442993164', `spawndist` = '3' WHERE (`guid` = '13649');
UPDATE `creature` SET `position_x` = '-4116.95556640625', `position_y` = '-2312.180908203125', `position_z` = '127.6861343383789062', `orientation` = '2.477593421936035156', `spawndist` = '3', `MovementType` = '1' WHERE (`guid` = '13641');
UPDATE `creature` SET `id` = '0', `position_x` = '-4099.82080078125', `position_y` = '-2328.198486328125', `position_z` = '126.21124267578125', `orientation` = '1.884955525398254394', `curhealth` = '1' WHERE (`guid` = '13642');
UPDATE `creature` SET `id` = '0', `position_x` = '-4086.07080078125', `position_y` = '-2322.52734375', `position_z` = '126.2125167846679687', `orientation` = '2.042035102844238281', `curhealth` = '1' WHERE (`guid` = '13643');
UPDATE `creature` SET `position_x` = '-4107.5546875', `position_y` = '-2352.7587890625', `position_z` = '127.6026992797851562', `orientation` = '3.70369720458984375', `spawndist` = '3' WHERE (`guid` = '13644');
UPDATE `creature` SET `position_x` = '-4098.99072265625', `position_y` = '-2372.481689453125', `position_z` = '126.2137527465820312', `orientation` = '5.922992229461669921' WHERE (`guid` = '13646');
UPDATE `creature` SET `position_x` = '-4091.74169921875', `position_y` = '-2385.422607421875', `position_z` = '124.8254852294921875', `orientation` = '5.976780891418457031', `spawndist` = '3', `MovementType` = '1' WHERE (`guid` = '13638');
UPDATE `creature` SET `position_x` = '-4058.741455078125', `position_y` = '-2385.67236328125', `position_z` = '126.2137985229492187', `orientation` = '4.184454917907714843', `spawndist` = '1', `MovementType` = '1' WHERE (`guid` = '13633');
UPDATE `creature` SET `position_x` = '-4080.41064453125', `position_y` = '-2365.312255859375', `position_z` = '126.2137374877929687', `orientation` = '5.538718223571777343', `spawndist` = '3' WHERE (`guid` = '13647');
UPDATE `creature` SET `position_x` = '-4068.97607421875', `position_y` = '-2377.65380859375', `position_z` = '110.3807830810546875', `orientation` = '2.129301786422729492' WHERE (`guid` = '13636');
UPDATE `creature` SET `position_x` = '-4071.76171875', `position_y` = '-2360.882568359375', `position_z` = '126.2137374877929687', `orientation` = '5.11779022216796875', `spawndist` = '3' WHERE (`guid` = '13645');
UPDATE `creature` SET `position_x` = '-4035.935791015625', `position_y` = '-2398.487060546875', `position_z` = '135.9376068115234375', `orientation` = '4.787994861602783203', `spawndist` = '3' WHERE (`guid` = '13662');
UPDATE `creature` SET `position_x` = '-4071.420654296875', `position_y` = '-2357.952392578125', `position_z` = '108.9924774169921875', `orientation` = '5.047953605651855468', `spawndist` = '3' WHERE (`guid` = '13634');
UPDATE `creature` SET `position_x` = '-4050.10986328125', `position_y` = '-2410.66259765625', `position_z` = '135.9365386962890625', `orientation` = '4.310963153839111328', `spawndist` = '3' WHERE (`guid` = '13640');
UPDATE `creature` SET `position_x` = '-4058', `position_y` = '-2417.599853515625', `position_z` = '126.219482421875', `orientation` = '1.443122506141662597', `spawndist` = '3' WHERE (`guid` = '13639');
UPDATE `creature` SET `position_x` = '-4059.4619140625', `position_y` = '-2414.691162109375', `position_z` = '135.936737060546875', `orientation` = '4.204134464263916015', `spawndist` = '3', `MovementType` = '1' WHERE (`guid` = '13635');

UPDATE `creature` SET `position_x` = '-4055.1376953125', `position_y` = '-2306.86669921875', `position_z` = '127.787078857421875', `orientation` = '4.270235538482666015', `spawndist` = '3' WHERE (`guid` = '13689');
UPDATE `creature` SET `position_x` = '-4105.28955078125', `position_y` = '-2295.9501953125', `position_z` = '126.5861282348632812', `orientation` = '6.160146713256835937', `spawndist` = '3', `MovementType` = '1' WHERE (`guid` = '13669');
UPDATE `creature` SET `position_x` = '-4083.8212890625', `position_y` = '-2335.78076171875', `position_z` = '126.2137451171875', `orientation` = '3.37507486343383789', `spawndist` = '3', `MovementType` = '1' WHERE (`guid` = '13670');
UPDATE `creature` SET `position_x` = '-4069.796142578125', `position_y` = '-2299.737060546875', `position_z` = '124.76275634765625', `orientation` = '3.944444179534912109', `spawndist` = '3', `MovementType` = '1' WHERE (`guid` = '13690');
UPDATE `creature` SET `position_x` = '-4084.69189453125', `position_y` = '-2345.906982421875', `position_z` = '126.2137527465820312', `orientation` = '5.969049453735351562', `spawndist` = '3', `MovementType` = '1' WHERE (`guid` = '13672');
UPDATE `creature` SET `position_x` = '-4124.1611328125', `position_y` = '-2332.4765625', `position_z` = '128.82806396484375', `orientation` = '1.902408838272094726', `spawndist` = '3', `MovementType` = '1' WHERE (`guid` = '13671');
UPDATE `creature` SET `position_x` = '-4074.55517578125', `position_y` = '-2392.81884765625', `position_z` = '118.1594161987304687', `orientation` = '0.059694856405258178', `spawndist` = '3', `MovementType` = '1' WHERE (`guid` = '13668');
UPDATE `creature` SET `position_x` = '-4084.069091796875', `position_y` = '-2397.787353515625', `position_z` = '135.938751220703125', `orientation` = '3.50811171531677246', `spawndist` = '3' WHERE (`guid` = '13666');
UPDATE `creature` SET `position_x` = '-4064.229248046875', `position_y` = '-2331.41845703125', `position_z` = '127.6026687622070312', `orientation` = '0.496271520853042602' WHERE (`guid` = '13673');
UPDATE `creature` SET `position_x` = '-4084.97314453125', `position_y` = '-2388.474365234375', `position_z` = '118.1597824096679687', `orientation` = '2.247568845748901367', `spawndist` = '3' WHERE (`guid` = '13664');
UPDATE `creature` SET `position_x` = '-4055.341064453125', `position_y` = '-2380.49853515625', `position_z` = '118.1593856811523437', `orientation` = '0.715584993362426757', `spawndist` = '3', `MovementType` = '1' WHERE (`guid` = '13667');
UPDATE `creature` SET `position_x` = '-4053.16455078125', `position_y` = '-2354.985107421875', `position_z` = '126.2137374877929687', `orientation` = '5.252184867858886718', `MovementType` = '1' WHERE (`guid` = '13674');
UPDATE `creature` SET `position_x` = '-4043.064697265625', `position_y` = '-2382.08642578125', `position_z` = '135.9406280517578125', `orientation` = '5.560290336608886718', `spawndist` = '3' WHERE (`guid` = '13691');
UPDATE `creature` SET `position_x` = '-4078.411376953125', `position_y` = '-2369.834716796875', `position_z` = '108.9921188354492187', `orientation` = '1.675516128540039062' WHERE (`guid` = '13665');
UPDATE `creature` SET `position_x` = '-4092.169677734375', `position_y` = '-2377.300048828125', `position_z` = '135.938262939453125', `orientation` = '2.575075626373291015', `spawndist` = '3' WHERE (`guid` = '13663');

UPDATE `creature` SET `position_x` = '-4079.028564453125', `position_y` = '-2305.741455078125', `position_z` = '125.7790985107421875', `orientation` = '1.815142393112182617' WHERE (`guid` = '13700');
UPDATE `creature` SET `position_x` = '-4068.24267578125', `position_y` = '-2364.6298828125', `position_z` = '108.9923095703125', `orientation` = '2.460914134979248046' WHERE (`guid` = '13693');
UPDATE `creature` SET `position_x` = '-4050.232666015625', `position_y` = '-2366.896484375', `position_z` = '118.1592483520507812', `orientation` = '4.23455810546875' WHERE (`guid` = '13692');
UPDATE `creature` SET `position_x` = '-4060.27392578125', `position_y` = '-2392.2861328125', `position_z` = '126.2138595581054687', `orientation` = '4.291341781616210937', `spawndist` = '2', `MovementType` = '1' WHERE (`guid` = '13699');
UPDATE `creature` SET `position_x` = '-4070.25830078125', `position_y` = '-2419.35107421875', `position_z` = '135.937255859375', `orientation` = '4.460751533508300781' WHERE (`guid` = '13694');
UPDATE `creature` SET `position_x` = '-4083.482177734375', `position_y` = '-2363.377685546875', `position_z` = '108.9924850463867187', `orientation` = '2.595665693283081054' WHERE (`guid` = '13695');
UPDATE `creature` SET `position_x` = '-4085.991455078125', `position_y` = '-2394.42529296875', `position_z` = '124.825714111328125', `orientation` = '1.274184226989746093', `spawndist` = '2', `MovementType` = '1' WHERE (`guid` = '13696');
UPDATE `creature` SET `position_x` = '-4034.768310546875', `position_y` = '-2403.956298828125', `position_z` = '126.21417236328125', `orientation` = '5.756762504577636718', `spawndist` = '2', `MovementType` = '1' WHERE (`guid` = '13698');
UPDATE `creature` SET `position_x` = '-4056.475830078125', `position_y` = '-2356.2421875', `position_z` = '135.938140869140625', `orientation` = '2.960889339447021484' WHERE (`guid` = '13697');
UPDATE `creature` SET `position_x` = '-4071.732666015625', `position_y` = '-2381.637939453125', `position_z` = '126.2137374877929687', `orientation` = '2.429510831832885742', `spawndist` = '2', `MovementType` = '1' WHERE (`guid` = '13701');

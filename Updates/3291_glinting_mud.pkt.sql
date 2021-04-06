
DELETE FROM `gameobject` WHERE `id`='154357';
DELETE FROM `pool_template` WHERE (`entry` = '1174');
DELETE FROM `pool_gameobject_template` WHERE (`id` = '154357');

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(55734, 154357, 0, -9386.95703125, -2175.243408203125, 41.999664306640625, 3.52557229995727539, 0, 0, -0.98162651062011718, 0.190812408924102783, 2, 5, 255, 1),
(55735, 154357, 0, -9367.6318359375, -2094.20654296875, 45.34901046752929687, 5.6897735595703125, 0, 0, -0.29237174987792968, 0.956304728984832763, 2, 5, 255, 1),
(55736, 154357, 0, -9357.1748046875, -2129.55615234375, 42.33780670166015625, 5.096362113952636718, 0, 0, -0.55919265747070312, 0.829037725925445556, 2, 5, 255, 1),
(55737, 154357, 0, -9344.796875, -2042.312744140625, 40.94118881225585937, 5.497788906097412109, 0, 0, -0.38268280029296875, 0.923879802227020263, 2, 5, 255, 1),
(55738, 154357, 0, -9363.9921875, -2396.555419921875, 36.88156509399414062, 4.276057243347167968, 0, 0, -0.84339141845703125, 0.537299633026123046, 2, 5, 255, 1),

(55739, 154357, 0, -9375.8662109375, -2303.813720703125, 45.55230331420898437, 3.926995515823364257, 0, 0, -0.92387866973876953, 0.38268551230430603, 2, 5, 255, 1),
(55740, 154357, 0, -9316.15625, -2146.723876953125, 45.98826980590820312, 4.014260292053222656, 0, 0, -0.90630722045898437, 0.422619491815567016, 2, 5, 255, 1),
(55741, 154357, 0, -9360.5361328125, -2372.207763671875, 40.86644363403320312, 2.478367090225219726, 0, 0, 0.94551849365234375, 0.325568377971649169, 2, 5, 255, 1),
(55742, 154357, 0, -9324.1044921875, -1986.685546875, 43.58144378662109375, 5.95157480239868164, 0, 0, -0.16504669189453125, 0.986285746097564697, 2, 5, 255, 1),
(55743, 154357, 0, -9360.1650390625, -2243.552001953125, 45.4953765869140625, 5.637413978576660156, 0, 0, -0.31730461120605468, 0.948323667049407958, 2, 5, 255, 1);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('29931', '1', 'Redridge Mountains - Lake Everstill - Glinting Mud (154357) - Group 1'),
('29932', '1', 'Redridge Mountains - Lake Everstill - Glinting Mud (154357) - Group 2');

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
('55734', '29931', '0', 'Redridge Mountains - Lake Everstill - Glinting Mud (154357) - Group 1'),
('55735', '29931', '0', 'Redridge Mountains - Lake Everstill - Glinting Mud (154357) - Group 1'),
('55736', '29931', '0', 'Redridge Mountains - Lake Everstill - Glinting Mud (154357) - Group 1'),
('55737', '29931', '0', 'Redridge Mountains - Lake Everstill - Glinting Mud (154357) - Group 1'),
('55738', '29931', '0', 'Redridge Mountains - Lake Everstill - Glinting Mud (154357) - Group 1'),

('55739', '29932', '0', 'Redridge Mountains - Lake Everstill - Glinting Mud (154357) - Group 2'),
('55740', '29932', '0', 'Redridge Mountains - Lake Everstill - Glinting Mud (154357) - Group 2'),
('55741', '29932', '0', 'Redridge Mountains - Lake Everstill - Glinting Mud (154357) - Group 2'),
('55742', '29932', '0', 'Redridge Mountains - Lake Everstill - Glinting Mud (154357) - Group 2'),
('55743', '29932', '0', 'Redridge Mountains - Lake Everstill - Glinting Mud (154357) - Group 2');

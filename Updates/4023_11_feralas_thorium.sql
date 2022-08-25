
DELETE FROM `gameobject_spawn_entry` WHERE (`guid` IN (15423, 15426, 15427, 15460, 15461, 15462, 15463, 15464, 15465, 15466));

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(10016, '123309', '0', '0', '0'),
(10016, '123848', '0', '0', '5'),

(10017, '123309', '0', '0', '0'),
(10017, '123848', '0', '0', '5');


DELETE FROM `gameobject_spawn_entry` WHERE (`guid` IN (15424, 15425, 15428));

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(10012, '123309', '0', '0', '0'),
(10012, '123848', '0', '0', '5');

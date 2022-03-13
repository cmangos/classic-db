UPDATE `quest_template` SET `RequiredCondition`=1609 WHERE `entry`=4496;

DELETE FROM `conditions` WHERE `condition_entry` IN (1607, 1608, 1609);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(1607, 8, 4493, 0, 0, 0, 0, 'Quest \'March of the Silithid\' (Alliance) is rewarded'),
(1608, 8, 4494, 0, 0, 0, 0, 'Quest \'March of the Silithid\' (Horde) is rewarded'),
(1609, -2, 1607, 1608, 0, 0, 0, 'Quest \'March of the Silithid\' (Horde or Alliance) is rewarded');


UPDATE `quest_template` SET `RequiredCondition`=1612, `RequiredRaces` = 1101 WHERE `entry`=4493; -- March of the Silithid
UPDATE `quest_template` SET `RequiredCondition`=1615, `RequiredRaces` = 690 WHERE `entry`=4494; -- March of the Silithid

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 1610 AND 1615;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(1610, 8, 162, 0, 0, 0, 0, 'Quest \'Rise of the Silithid\' (Alliance) is rewarded'),
(1611, 8, 4267, 0, 0, 0, 0, 'Quest \'Rise of the Silithid\' is rewarded'),
(1612, -2, 1610, 1611, 0, 0, 0, 'Quest \'Rise of the Silithid\' (4267) or \'Rise of the Silithid\' (162) is rewarded'),
(1613, 8, 32, 0, 0, 0, 0, 'Quest \'Rise of the Silithid\' (Horde) is rewarded'),
(1614, 8, 7732, 0, 0, 0, 0, 'Quest \'Zukk\'ash Report\' is rewarded'),
(1615, -2, 1613, 1614, 0, 0, 0, 'Quest \'Rise of the Silithid\' or \'Zukk\'ash Report\' is rewarded');


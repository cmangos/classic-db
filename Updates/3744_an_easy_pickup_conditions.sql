UPDATE `quest_template` SET `RequiredCondition`=1603 WHERE `entry`=3450;
DELETE FROM `conditions` WHERE `condition_entry` IN (1601, 1602, 1603);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(1601, 9, 3449, 0, 0, 0, 0, "Quest ID 3449 Taken"),
(1602, 8, 3449, 0, 0, 0, 0, "Quest ID 3449 Rewarded"),
(1603, -2, 1601, 1602, 0, 0, 0, "Quest ID 3449 Taken OR Quest ID 3449 Rewarded");


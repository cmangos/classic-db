
UPDATE `creature_linking` SET `master_guid`='88270' WHERE `guid`='88268';
UPDATE `creature_linking` SET `guid`='88724' WHERE `guid`='88274';
UPDATE `creature_linking` SET `guid`='88725' WHERE `guid`='88275';

DELETE FROM `creature_linking` WHERE `guid` IN ('88279', '88484', '88485', '88727');
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
('88279', '88270', '3'),
('88484', '88726', '3'),
('88485', '88726', '3'),
('88727', '88726', '3');

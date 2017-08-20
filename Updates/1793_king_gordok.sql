
DELETE FROM `reference_loot_template` WHERE `entry`='35019';

DELETE FROM `creature_loot_template` WHERE `entry`='11501' and`item`='35019';

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('11501', '18520', '0', '2', '1', '1', '0'),
('11501', '18521', '0', '2', '1', '1', '0'),
('11501', '18522', '0', '2', '1', '1', '0'),
('11501', '18523', '0', '2', '1', '1', '0'),
('11501', '18524', '0', '3', '1', '1', '0'),
('11501', '18525', '0', '3', '1', '1', '0'),
('11501', '18526', '0', '3', '1', '1', '0'),
('11501', '18527', '0', '3', '1', '1', '0');

-- Bug Trio
DELETE FROM `creature_linking_template` WHERE `entry` IN (15544, 15511, 15543);
INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(15543, 531, 15511, 1167, 0),
(15544, 531, 15511, 1167, 0);

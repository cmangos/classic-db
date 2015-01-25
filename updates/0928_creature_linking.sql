-- Linked NPC 12236 (Lord Vyletongue) in Maraudon to its two adds
DELETE FROM `creature_linking` WHERE `guid` IN (54676, 54675);
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(54675, 54579, 3),
(54676, 54579, 3);

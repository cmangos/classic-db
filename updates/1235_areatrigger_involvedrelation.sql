-- Added missing areatrigger relation to quest 6185 (Eastern Plagues)
-- quest can now be completed
DELETE FROM `areatrigger_involvedrelation` WHERE `id` = 2726;
INSERT INTO `areatrigger_involvedrelation` (`id`, `quest`)
VALUES (2726, 6185);

UPDATE `quest_template` SET `SpecialFlags` = 2 WHERE `entry` = 6185;

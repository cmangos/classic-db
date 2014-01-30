-- Added missing creature template for creature 15118 (Master Angler Form) used in reward from Stranglethorn Fishing Extravaganza event.
-- Thanks Neotmiren for pointing and fixing
-- Data taken from TBC-DB
DELETE FROM `creature_template` WHERE `entry` = 15118;
INSERT INTO `creature_template` (`entry`, `modelid_1`, `armor`, `name`, `minhealth`,  `maxhealth`, `faction_A`, `faction_H`, `speed_run`, `mindmg`, `maxdmg`, `type`, `InhabitType`) VALUES
(15118, 15234, 17, 'Master Angler Form', 25, 27, 35, 35, 1.14286, 2, 2, 1, 3);

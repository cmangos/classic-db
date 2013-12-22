-- Fixed quest 9422 (Scouring the Desert - Horde) which was autocompleting
-- Adapted from a fix by Ghurok

-- Added new creature (18199), data copied from Alliance equivalent creature
DELETE FROM `creature_template` WHERE `entry` = 18199;
INSERT INTO `creature_template` VALUES
(18199, 0, 0, 11686, 0, 'Silithus Dust Turnin Quest Doodad Horde', NULL, 0, 1, 1, 0, 0, 0, 0, 20, 35, 35, 0, 1.1, 1.14286, 0, 0, 2, 2, 0, 1, 1, 2000, 0, 1, 33555200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, '');

-- Spawn the creature (18199)
-- Source: UDB
DELETE FROM `creature` WHERE `guid` = 42745;
INSERT INTO `creature` VALUES
(42745, 18199, 1, 0, 0, -7568.77, 763.379, -17.5984, 5.91667, 300, 0, 0, 42, 0, 0, 0);

-- Update the quest (9422)
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 18199, `ReqCreatureOrGOCount1` = 1 WHERE `entry` = 9422;

-- Adds spell script target for spell Trace of Silithyst (29534) for both Alliance and Horde counters
-- Backport from UDB and YTDB
DELETE FROM `spell_script_target` WHERE `entry` = 29534;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(29534, 0, 181618),	-- Alliance
(29534, 0, 181619);	-- Horde

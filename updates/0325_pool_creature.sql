-- Set to rare rank of creature 10509 (Jed Runewatcher) in Blackrock Spire
-- Source: http://old.wowhead.com/npc=10509#comments
UPDATE `creature_template` SET `rank` = 2 WHERE `entry` = 10509;

SET @GUID := 160107;
SET @JED_GUID := @GUID + 150;
SET @ALTERNATE_GUID := @GUID + 22;

-- Put creatures 10509 (Jed Runewatcher) in pool as he is a rare creature and should not spawn all the time
DELETE FROM `pool_creature` WHERE `guid` IN (@JED_GUID, @ALTERNATE_GUID);
INSERT INTO `pool_creature` VALUES
(@JED_GUID, 1178, 30, 'Jed Runewatcher (10509) Blackrock Spire'),
(@ALTERNATE_GUID, 1178, 70, 'Alternate creature to Jed Runewatcher (10509) Blackrock Spire');

DELETE FROM `pool_template` WHERE `entry` = 1178;
INSERT INTO `pool_template` VALUES
(1178, 1, 'Jed Runewatcher (10509) Blackrock Spire');

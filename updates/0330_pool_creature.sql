-- Set to rare rank of creature 6228 (Dark Iron Ambassador) in Gnomeregan
-- Source: http://old.wowhead.com/npc=6228#comments
UPDATE `creature_template` SET `rank` = 2 WHERE `entry` = 6228;


SET @AMBASSADOR_GUID := 590004;
SET @ALTERNATE_GUID := 33458;

-- Put creature 6228 (Dark Iron Ambassador) in pool as he is a rare creature and should not spawn all the time
DELETE FROM `pool_creature` WHERE `guid` IN (@AMBASSADOR_GUID, @ALTERNATE_GUID);
INSERT INTO `pool_creature` VALUES
(@AMBASSADOR_GUID, 1179, 30, 'Dark Iron Ambassador (6228) Gnomeregan'),
(@ALTERNATE_GUID, 1179, 70, 'Alternate creature to Dark Iron Ambassador (6228) Gnomeregan');

DELETE FROM `pool_template` WHERE `entry` = 1179;
INSERT INTO `pool_template` VALUES
(1179, 1, 'Dark Iron Ambassador (6228) Gnomeregan');

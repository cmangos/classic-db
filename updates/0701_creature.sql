-- Fixed creature 8666 (Lil Timmy):
-- removed the bottle he was holding. Time are tough in Stormwind,
-- but not enough to let little boys drink
-- added its creature companion 7386 (White Kitten) and made it follow Lil Timmy
-- Thanks Zingzah for pointing. This closes #541 
SET @GUID := 160487;
DELETE FROM `creature` WHERE `guid` = @GUID; 
INSERT INTO `creature` VALUES (@GUID, 7386, 0, 0, 0, -8650, 903.817, 98.421, 3.768, 10800, 0, 0, 64, 0, 0, 0);

DELETE FROM `creature_linking_template` WHERE `entry` = 7386;
INSERT INTO `creature_linking_template` VALUES
(7386, 0, 8666, 128 + 512 + 8192, 0);

-- Added missing spawn of NPC 15197 (Darkcaller Yanka) and 15199 (Sergeant Hartman)
-- Made them spawn only during Hallow's End event
-- Thanks TheTrueAnimal for reporting. This closes #639
-- Source: YTDB
SET @GUID := 160014;

DELETE FROM `creature` WHERE `guid` IN (@GUID, @GUID + 1);
INSERT INTO `creature` VALUES
(@GUID, 15197, 0, 0, 0, 1734.6, 508.803, 41.2847, 1.6173, 300, 0, 0, 9763, 0, 0, 0),
(@GUID + 1, 15199, 0, 0, 0, -813.614, -547.184, 15.6377, 1.69193, 300, 0, 0, 9763, 0, 0, 0);

DELETE FROM `game_event_creature` WHERE `guid` IN (@GUID, @GUID + 1);
INSERT INTO `game_event_creature` VALUES
(@GUID, 12),
(@GUID + 1, 12);

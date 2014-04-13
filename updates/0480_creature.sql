-- Anubisath Warder
SET @ANUB1 := 88064;
SET @ANUB2 := 88063;
SET @ANUB3 := 88020;
SET @ANUB4 := 88021;

DELETE FROM `creature` WHERE `guid` IN (@ANUB1, @ANUB2, @ANUB3, @ANUB4);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(@ANUB1, 15311, 531, 0, 0, -8910.13, 1861.28, -22.4967, 3.25762, 28800, 0, 0, 286560, 0, 0, 0),
(@ANUB2, 15311, 531, 0, 0, -8998.12, 1920.15, -44.0511, 4.28385, 28800, 0, 0, 286560, 0, 0, 0),
(@ANUB3, 15311, 531, 0, 0, -9084.29, 1768.59, -42.8992, 3.25566, 28800, 0, 0, 286560, 0, 0, 0),
(@ANUB4, 15311, 531, 0, 0, -9133.94, 1814.82, -42.8030, 5.15033, 28800, 0, 0, 286560, 0, 0, 0);

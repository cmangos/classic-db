-- Respawn Anubisath Guardian in Ruins of Ahn'Qiraj
SET @GUID := 88976;

DELETE FROM `creature` WHERE `id` = 15355 AND `map` = 509; -- Anubisath Guardian
DELETE FROM `creature` WHERE `id` = 15537 AND `map` = 509; -- Anubisath Warrior
DELETE FROM `creature` WHERE `id` = 15538 AND `map` = 509; -- Anubisath Swarmguard

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 0, 15355, 509, 15347, 0, -9290.140, 1888.328, 85.68073, 0, 3520, 0, 0, 61541, 0, 0, 2),
(@GUID + 1, 15355, 509, 15347, 0, -9285.015, 1845.869, 85.59740, 0, 3520, 0, 0, 61541, 0, 0, 2),
(@GUID + 2, 15355, 509, 15347, 0, -9378.370, 1742.617, 85.68076, 0, 3520, 0, 0, 61541, 0, 0, 2),
(@GUID + 3, 15355, 509, 15347, 0, -9341.981, 1844.112, 85.15749, 0, 3520, 0, 0, 61541, 0, 0, 2),
(@GUID + 4, 15355, 509, 15347, 0, -9273.630, 1940.642, 85.68074, 0, 3520, 0, 0, 61541, 0, 0, 2),
(@GUID + 5, 15355, 509, 15347, 0, -9282.028, 1949.146, 85.68074, 0, 3520, 0, 0, 61541, 0, 0, 2),
(@GUID + 6, 15355, 509, 15347, 0, -9305.473, 1976.090, 85.68074, 0, 3520, 0, 0, 61541, 0, 0, 2),
(@GUID + 7, 15355, 509, 15347, 0, -9334.301, 1916.916, 85.67978, 0, 3520, 0, 0, 61541, 0, 0, 2);

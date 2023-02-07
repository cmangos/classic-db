-- Scarlet High Clerist 1839 - fix position (may have waypoints or diff spawn points)
DELETE FROM `creature_movement` WHERE `id` = 49764;
UPDATE creature SET position_x = 2686.4521, position_y = -1949.7223, position_z = 72.23332, orientation=0.331612557172775268, `MovementType` = 0 WHERE id = 1839 AND `guid` = 49764;

-- add missing spawn / delete bad spawns in classicmangos
-- https://www.wowhead.com/wotlk/npc=1839
-- pooling already in place - pool template: 1150	1	Scarlet High Clerist (1839)
DELETE FROM `creature` WHERE `id` = 1839 AND `guid` IN (160012,160013);
DELETE FROM `creature_movement` WHERE `Id` = 160012;

DELETE FROM `creature` WHERE `guid` = 49766 AND `id` = 1839;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(49766, 1839, 0, 2702.22, -1942.97, 107.321, 3.83972, 3600, 86400, 0, 0); -- CCSDB


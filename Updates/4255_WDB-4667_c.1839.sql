-- Scarlet High Clerist 1839 - fix position (may have waypoints or diff spawn points)
DELETE FROM `creature_movement` WHERE `id` = 49764;
UPDATE creature SET position_x = 2686.4521, position_y = -1949.7223, position_z = 72.23332, orientation=0.331612557172775268, `MovementType` = 0 WHERE id = 1839 AND `guid` = 49764;


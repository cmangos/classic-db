-- Add your query below.
-- https://github.com/vmangos/core/commit/46fcd70bf3f8955bdfe75070213a315ab9513387

-- Add random movement to Town Crier
DELETE FROM `creature_movement` WHERE `id` = 4185;
UPDATE `creature` SET `MovementType` = 1, `spawndist` = 15, `position_x`= -10561.20, `position_y`= -1188.15, `position_z`= 28.1623, `orientation`= 0  WHERE `id` = 468 AND `guid` = 4185;

-- End of migration.


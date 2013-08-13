-- Removed random movement from creature 2038 (Lord Melenas) as it should not have it
UPDATE `creature` SET `MovementType` = 0 WHERE `id` = 2038;

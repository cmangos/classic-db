-- Made creature Plagued Hatchlings have random movement
UPDATE `creature` SET `MovementType` = 1, `spawndist` = 3 WHERE `id` = 10678;

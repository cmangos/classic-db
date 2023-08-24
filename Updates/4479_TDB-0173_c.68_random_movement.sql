-- Correct more Stormwind City Guard 68
UPDATE `creature` SET `spawndist` = 2, `MovementType` = 1 WHERE `id` = 68 AND `guid` = 79679;
UPDATE `creature` SET `spawndist` = 2, `MovementType` = 1 WHERE `id` = 68 AND `guid` = 79671;
UPDATE `creature` SET `spawndist` = 2, `MovementType` = 1 WHERE `id` = 68 AND `guid` = 19272;

UPDATE `creature` SET `position_x` = -8834.160156 ,  `position_y` = 724.616028,  `position_z` = 97.953201,  `orientation` = 0, `spawndist` = 2, `MovementType` = 1 WHERE `id` = 68 AND `guid` = 79840;
UPDATE `creature` SET `position_x` = -8825.175781 ,  `position_y` = 613.949585,  `position_z` = 94.4957 WHERE `id` = 68 AND `guid` = 120692;

DELETE FROM `creature` WHERE `id` = 68 AND `guid` = 2473; -- not perm spawn
DELETE FROM `creature` WHERE `id` = 68 AND `guid` = 190; -- not perm spawn
DELETE FROM `creature` WHERE `id` = 68 AND `guid` = 189; -- not perm spawn


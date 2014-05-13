UPDATE `creature_template` SET `MovementType` = 1 WHERE `Entry` IN (2473, 2474);

UPDATE `creature` SET `MovementType` = 1, `spawndist` = 15 WHERE `id` IN (2473, 2474);

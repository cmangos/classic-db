-- Removed spawns of creature 8477 (Skeletal Servant) as this is a summoned creature
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 8477);
DELETE FROM `creature` WHERE `id` = 8477;

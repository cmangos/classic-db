-- Removed spawns of creature 4661 (Gelkis Rumbler) in Desolace because they are summoned
-- Source: http://wowhead.com/npc=4661#comments
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 4661);

DELETE FROM `creature_movement` WHERE `id` IN (SELECT `guid` FROM `creature` WHERE `id` = 4661);

DELETE FROM `creature` WHERE `id` = 4661;

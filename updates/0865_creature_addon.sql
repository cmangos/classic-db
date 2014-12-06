-- Removed aura from addon for NPC 1200 (Morbent Fel) in Duskwood
-- because its aura is now handled in ACID script
-- Moved addon to template_addon
-- Thanks X-Savior
DELETE FROM `creature_addon` WHERE `guid` = (SELECT `guid` FROM `creature` WHERE `id` = 1200);
DELETE FROM `creature_template_addon` WHERE `entry` = 1200;
INSERT INTO `creature_template_addon` VALUES
(1200, 0, 0, 1, 16, 0, 0, NULL);

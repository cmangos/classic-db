-- Moved creature_addons of NPC 5431 (Surf Glider) to creature_template_addon since they are all using the same addon
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 5431);
DELETE FROM `creature_template_addon` WHERE `entry` = 5431;
INSERT INTO `creature_template_addon` VALUES
(5431, 0, 0, 1, 16, 0, 0, NULL);

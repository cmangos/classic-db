-- Fixed creature addons for NPC 8982 (Ironhand Guardians) in Blackrock Depths
-- they were wrong for some of them. Also moved them from one addon for each NPC
-- to a template addon since all NPCs behave the same
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 8982);
INSERT INTO `creature_template_addon` VALUES
(8982, 0, 0, 1, 16, 0, 0, '10255');

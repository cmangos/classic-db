-- Linked all NPCs in The Manufactory to NPC 8983 (Golem Lord Argelmach) in Blackrock Depths
-- Moved creature addons for golems to template addons and moved the stone aura to ACID for better handling
-- This closes #154 thanks to jeeron for reporting and to @xfurry and thetrueanimal for researching/suggesting a fix
-- Source: https://www.youtube.com/watch?v=KWEahci7MZ0

DELETE FROM `creature_linking_template` WHERE `map` = 230 AND `entry` IN (8900, 8906, 8907, 8920);
INSERT INTO `creature_linking_template` VALUES
(8900, 230, 8983, 1, 100), -- Doomforge Arcanasmith : not all of them, only those in The Manufactory, those in Halls of Crafting are not linked
(8906, 230, 8920, 1, 12), -- Ragereaver Golem
(8907, 230, 8983, 1, 0), -- Wrath Hammer Construct
(8920, 230, 8983, 1, 0); -- Weapon Technician

DELETE FROM `creature_linking` WHERE `guid` = 45932;
INSERT INTO `creature_linking` VALUES
(45932, 45931, 1);

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (8906, 8907));
DELETE FROM `creature_template_addon` WHERE `entry` IN (8906, 8907);
INSERT INTO `creature_template_addon` VALUES
(8906, 0, 0, 1, 16, 0, 0, NULL),
(8907, 0, 0, 1, 16, 0, 0, NULL);

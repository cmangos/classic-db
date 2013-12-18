-- Added cloud disease ability to creature 16029 (Sludge Belcher) in Naxxramas
-- Source: http://www.wowhead.com/npc=16029#abilities
-- Thanks Metalica for pointing
DELETE FROM `creature_template_addon` WHERE `entry` = 16029;
INSERT INTO `creature_template_addon` VALUES
(16029, 0, 0, 1, 16, 0, 0, '28362');
 
-- Added cloud disease ability to creature 16017 (Patchwork Golem) in Naxxramas
-- Source: http://www.wowhead.com/npc=16017#abilities
DELETE FROM `creature_template_addon` WHERE `entry` = 16017;
INSERT INTO `creature_template_addon` VALUES
(16017, 0, 0, 1, 16, 0, 0, '27793');
 
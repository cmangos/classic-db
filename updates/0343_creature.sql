-- Updated spawns of creature 61 (Thuros Lightfingers) as it was wielding the wrong equipment
-- Source: http://www.wowhead.com/npc=61
UPDATE `creature` SET `modelid` = 0, `equipment_id` = 0 WHERE `id` = 61;
-- Made one of the spawn sit
-- Source: http://www.wowhead.com/npc=61
INSERT INTO `creature_addon` VALUES (134011, 0, 1, 1, 16, 0, 0, NULL);
-- Updated rank of creature 61 (Thuros Lightfingers) as it is rare but not elite
-- Source: http://www.wowhead.com/npc=61
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 61;

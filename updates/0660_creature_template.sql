-- Made weapon unsheath for creature 14363 (Thief Catcher Shadowdelve), 14365 (Thief Catcher Farmountain)
-- and creature 14367 (Thief Catcher Thunderbrew) in Ironforge.
-- Thanks Zingzah for pointing. This closes #509 
-- Source: retail
UPDATE `creature_template_addon` SET `b2_0_sheath` = 1, `auras` = '18950' WHERE `entry` IN (14363, 14365, 14367);
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (14363, 14365, 14367));

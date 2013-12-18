-- Fixed creature 16024 (Embalming Slime) in Naxxramas Construction Wing
-- Added random movement, fixed size
-- Thanks Ela
UPDATE `creature` SET `spawndist` = 8, `MovementType` = 1 WHERE `id` = 16024;
UPDATE `creature_template` SET `scale` = 1.0 WHERE `entry` = 16024;

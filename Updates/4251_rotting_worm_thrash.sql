-- Rotting Worm 10925 s.3391 is cast manually, not by aura passive
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 10925;


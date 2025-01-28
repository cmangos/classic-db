-- Remove wrong aura passive s.9460 from c.2655
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 2655;


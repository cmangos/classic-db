-- Improved end script of quest 2520 (Sathrah's Sacrifice)
-- Thanks Zingzah for pointing. This closes #579 
UPDATE `dbscripts_on_event` SET `x` = 9632.03, `y` = 2515.64, `z` = 1331.74 WHERE `id` = 2313;
UPDATE `creature_template` SET `MovementType` = 1 WHERE `Entry` = 7411;

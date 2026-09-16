-- Improve Gahz'ranka summon script
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 15114; -- Gahz'ranka
UPDATE `spell_target_position` SET `target_position_x` = -11682.5, `target_position_y` = -1720.29, `target_position_z` = 10.6, `target_orientation` = 0 WHERE `id` = 24325; -- Pagle's Point Cast - Create Mudskunk Lure
UPDATE `creature_template` SET `UnitFlags` =  33555200 WHERE `entry` = 15140; -- Pat's Splash Guy


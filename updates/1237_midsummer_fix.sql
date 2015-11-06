-- Added missing spell script target for 29437 for Midsummer Fire Festival Fury buff
DELETE FROM spell_script_target WHERE entry IN (29437);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(29437, 0, 181288, 0);

-- Partly revert change in [1228]
UPDATE `gameobject_template` SET `data2` = 0, `data10` = 28859 WHERE `entry` = 181288;

-- Remove duplicate GOs
DELETE FROM `gameobject` WHERE `id` = 181431 AND `guid` < 50000;

-- Improved scripts when using Capital Flames
-- 3: Horde
-- 4: Alliance
INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(181332, 0, 34, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop if player is Alliance'),    
(181332, 1, 15, 29101, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Create Flame Stormwind'),
(181333, 0, 34, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop if player is Alliance'),
(181333, 1, 15, 29102, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Create Flame Ironforge'),
(181334, 0, 34, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop if player is Alliance'),
(181334, 1, 15, 29099, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Create Flame Darnassus'),
(181336, 0, 34, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop if player is Horde'),
(181336, 1, 15, 29130, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Create Flame Orgrimmar'),
(181337, 0, 34, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop if player is Horde'),
(181337, 1, 15, 29132, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Create Flame Thunder Bluff'),
(181335, 0, 34, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop if player is Horde'),
(181335, 1, 15, 29133, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Create Flame Undercity');

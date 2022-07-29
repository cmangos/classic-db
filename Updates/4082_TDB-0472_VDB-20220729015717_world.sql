-- https://github.com/vmangos/core/commit/2803d427b078f8fc7f5c74a0cbd1a4acf19d1fab
-- Add your query below.

-- Correct PPM based on classic research by guybrush and magey.
UPDATE `item_template` SET `spellppmrate_1`=0.6 WHERE `entry`=17075; -- Vis'kag the Bloodletter 0 spelltrigger_1 = 2
UPDATE `item_template` SET `spellppmrate_1`=0.8 WHERE `entry`=811; -- Axe of the Deep Woods 0 spelltrigger_1 = 2
UPDATE `item_template` SET `spellppmrate_1`=0.8 WHERE `entry`=17068; -- Deathbringer 0 spelltrigger_1 = 2
UPDATE `item_template` SET `spellppmrate_1`=0.8 WHERE `entry`=11684; -- Ironfoe 0 spelltrigger_1 = 2
UPDATE `item_template` SET `spellppmrate_1`=1 WHERE `entry`=12798; -- Annihilator 0 spelltrigger_1 = 2
UPDATE `item_template` SET `spellppmrate_1`=1 WHERE `entry`=12590; -- Felstriker 0 spelltrigger_1 = 2
UPDATE `item_template` SET `spellppmrate_1`=1 WHERE `entry`=13286; -- Rivenspike 0 spelltrigger_1 = 2
UPDATE `item_template` SET `spellppmrate_1`=1 WHERE `entry`=17705; -- Thrash Blade 0 spelltrigger_1 = 2
UPDATE `item_template` SET `spellppmrate_1`=1.375 WHERE `entry`=19169; -- Nightfall 0 spelltrigger_1 = 2
UPDATE `item_template` SET `spellppmrate_1`=1.8 WHERE `entry`=871; -- Flurry Axe 0 spelltrigger_1 = 2
UPDATE `item_template` SET `spellppmrate_1`=2 WHERE `entry`=17076; -- Bonereaver's Edge 0 spelltrigger_1 = 2
UPDATE `item_template` SET `spellppmrate_1`=2.15 WHERE `entry`=17073; -- Earthshaker 0 spelltrigger_1 = 2

-- This shouldn't have PPM assigned.
UPDATE `item_template` SET `spellppmrate_1`=0 WHERE `entry`=18300; -- Hyjal Nectar -1 spelltrigger_1 = 0

-- End of migration.


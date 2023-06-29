-- Add your query below.
-- https://github.com/vmangos/core/commit/ebf0849daafa1eec30a30ae84b3860e4e6ae3b9f

-- https://www.wowhead.com/classic/object=3689/weapon-crate
-- https://www.wowhead.com/classic/object=3661/weapon-crate
-- https://www.wowhead.com/classic/object=3704/weapon-crate

-- https://www.wowhead.com/classic/object=3703/armor-crate
-- https://www.wowhead.com/classic/object=3660/armor-crate
-- https://www.wowhead.com/classic/object=3702/armor-crate
DELETE FROM `gameobject` WHERE `id` = 0 AND `guid` BETWEEN 300334 AND 300349;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(300334, 0, 1, -1516.98, -3815.31, 22.7504, 3.45576, 0, 0, -0.987688, 0.156436, 300, 900), -- The Merchant Coast
(300335, 0, 1, -1726.4, -3830.48, 10.7884, 5.16618, 0, 0, -0.529919, 0.848048, 300, 900), -- The Merchant Coast
(300336, 0, 1, -1385.77, -3590.06, 91.6753, 0.401425, 0, 0, 0.199368, 0.979925, 300, 900), -- The Barrens
(300337, 0, 1, 5404.55, 534.358, 0.043727, 2.28638, 0, 0, 0.909961, 0.414694, 300, 900), -- Twilight Shore
(300338, 0, 1, 7131.98, 345.849, -41.7792, 5.65487, 0, 0, -0.309016, 0.951057, 300, 900), -- Mist's Edge
(300339, 0, 1, 7457.84, -103.508, -0.007202, 6.02139, 0, 0, -0.130526, 0.991445, 300, 900), -- Mist's Edge
(300340, 0, 1, 7439.02, 114.653, -0.157941, 1.79769, 0, 0, 0.782608, 0.622515, 300, 900), -- Mist's Edge
(300341, 0, 1, -4070.11, -2380.71, 110.297, 2.04204, 0, 0, 0.85264, 0.522499, 300, 900), -- Bael'dun Keep
(300342, 0, 1, -4065, -2404.03, 135.853, 5.72468, 0, 0, -0.275637, 0.961262, 300, 900), -- Bael'dun Keep
(300343, 0, 1, -4081.57, -2407.94, 135.856, 1.23918, 0, 0, 0.580703, 0.814116, 300, 900), -- Bael'dun Keep
(300344, 0, 1, -4069.14, -2354.85, 108.909, 4.66003, 0, 0, -0.725374, 0.688355, 300, 900), -- Bael'dun Keep
(300345, 0, 1, -4086.92, -2363.17, 108.909, 5.98648, 0, 0, -0.147809, 0.989016, 300, 900), -- Bael'dun Keep
(300346, 0, 1, 1831.57, -2754.73, 82.8331, 4.92183, 0, 0, -0.62932, 0.777146, 300, 900), -- The Dor'Danil Barrow Den
(300347, 0, 1, 1789.23, -2747.89, 73.577, 0.994837, 0, 0, 0.477159, 0.878817, 300, 900), -- The Dor'Danil Barrow Den
(300348, 0, 1, 1822.49, -2647.19, 53.1286, 1.81514, 0, 0, 0.788011, 0.615662, 300, 900), -- The Dor'Danil Barrow Den
(300349, 0, 1, 1838.71, -2802.68, 52.0411, 5.86431, 0, 0, -0.207911, 0.978148, 300, 900); -- The Dor'Danil Barrow Den


DELETE FROM `gameobject_spawn_entry` WHERE `guid` BETWEEN 300334 AND 300349;
INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) SELECT `guid`, 3660 FROM `gameobject` WHERE `guid` BETWEEN 300334 AND 300340;
INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) SELECT `guid`, 3661 FROM `gameobject` WHERE `guid` BETWEEN 300334 AND 300340;

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) SELECT `guid`, 3689 FROM `gameobject` WHERE `guid` BETWEEN 300341 AND 300349;
INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) SELECT `guid`, 3702 FROM `gameobject` WHERE `guid` BETWEEN 300341 AND 300349;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 300334 AND 300349;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) VALUES 
(300334, 31225, 'The Barrens (The Merchant Coast) - Armor/Weapon Crate (3660,3661)'),
(300335, 31225, 'The Barrens (The Merchant Coast) - Armor/Weapon Crate (3660,3661)'),
(300336, 31221, 'The Barrens - Armor/Weapon Crate (3660,3661)'),
(300337, 31338, 'Darkshore (Twilight Shore) - Armor/Weapon Crate (3660,3661)'),
(300338, 31310, 'Darkshore (Mist\'s Edge) - Armor/Weapon Crate (3660,3661)'),
(300339, 31310, 'Darkshore (Mist\'s Edge) - Armor/Weapon Crate (3660,3661)'),
(300340, 31310, 'Darkshore (Mist\'s Edge) - Armor/Weapon Crate (3660,3661)'),
(300341, 31320, 'The Barrens (Bael\'dun Keep) - Weapon/Armor Crate (3689,3702)'),
(300342, 31320, 'The Barrens (Bael\'dun Keep) - Weapon/Armor Crate (3689,3702)'),
(300343, 31320, 'The Barrens (Bael\'dun Keep) - Weapon/Armor Crate (3689,3702)'),
(300344, 31320, 'The Barrens (Bael\'dun Keep) - Weapon/Armor Crate (3689,3702)'),
(300345, 31320, 'The Barrens (Bael\'dun Keep) - Weapon/Armor Crate (3689,3702)'),
(300346, 31162, 'Ashenvale (The Dor\'Danil Barrow Den) - Weapon/Armor Crate (3689,3702)'),
(300347, 31162, 'Ashenvale (The Dor\'Danil Barrow Den) - Weapon/Armor Crate (3689,3702)'),
(300348, 31162, 'Ashenvale (The Dor\'Danil Barrow Den) - Weapon/Armor Crate (3689,3702)'),
(300349, 31162, 'Ashenvale (The Dor\'Danil Barrow Den) - Weapon/Armor Crate (3689,3702)');

-- End of migration.


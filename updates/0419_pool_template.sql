-- Fixed mineral ores non spawning in Alterac Mountains, Arathi Highlands, Badlands, Blasted Lands and Burning Steppes
-- This closes #169
-- Thanks Scotty0100 for pointing.
DELETE FROM `pool_template` WHERE `entry` BETWEEN 2000 AND 2007;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES 
(2000, 7, 'Master Mineral Pool - Alterac Mountains (Inner Section)'),
(2001, 4, 'Master Mineral Pool - Alterac Mountains (Outer Section)'),
(2002, 10, 'Master Mineral Pool - Arathi Highlands (Main Section)'),
(2003, 4, 'Master Mineral Pool - Arathi Highlands (Drywhisker Gorge)'),
(2004, 9, 'Master Mineral Pool - Badlands'),
(2005, 8, 'Master Mineral Pool - Blasted Lands'),
(2006, 4, 'Master Mineral Pool - Blasted Lands (Garrison Armory) - Special Mineral GOs ONLY'),
(2007, 10, 'Master Mineral Pool - Burning Steppes');

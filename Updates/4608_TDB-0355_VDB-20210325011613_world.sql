-- Add your query below.
-- https://github.com/vmangos/core/commit/f9de008db79e4fa2a09c137d6caad01dc250b8f1
-- sells for 2.5g

-- [Silver Piffeny Band] shouldn't appear in chests.
-- Battered Chest	2849
-- Solid Chest	2850
-- Solid Chest	2852
-- Solid Chest	2855
-- Solid Chest	2857
-- Alliance Strongbox	3714
-- Tattered Chest	3715
-- Alliance Strongbox	4095
-- Tattered Chest	4096
-- Alliance Strongbox	105570
-- Tattered Chest	105578
-- Tattered Chest	105579
-- Tattered Chest	105581
-- Tattered Chest	111095
DELETE FROM `gameobject_loot_template` WHERE `item` = 7342 AND `entry` IN (2284,2283,2282,2281,2280);

-- End of migration.


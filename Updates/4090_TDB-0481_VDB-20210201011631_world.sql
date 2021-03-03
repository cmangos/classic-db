-- https://github.com/vmangos/core/commit/5277f404a6dbdc3e848c6936a2356f59b4a2d647
-- Add your query below.

-- Add nature immunity to some lava elementals.
-- Rumbling Exile
UPDATE `creature_template` SET `SchoolImmuneMask`='8' WHERE  `entry`=2592;
-- Magma Lord Bokk
UPDATE `creature_template` SET `SchoolImmuneMask`='8' WHERE  `entry`=16043; -- new
-- Smoldar
UPDATE `creature_template` SET `SchoolImmuneMask`='8' WHERE  `entry`=8278; -- new
-- Molten elemental
UPDATE `creature_template` SET `SchoolImmuneMask`='8' WHERE  `entry`=11321;
-- Magma elemental
UPDATE `creature_template` SET `SchoolImmuneMask`='8' WHERE  `entry`=5855;
-- Enraged Stone Spirit
UPDATE `creature_template` SET `SchoolImmuneMask`='8' WHERE  `entry`=4034;
-- Furious Stone Spirit
UPDATE `creature_template` SET `SchoolImmuneMask`='8' WHERE  `entry`=4035; -- new

-- End of migration.


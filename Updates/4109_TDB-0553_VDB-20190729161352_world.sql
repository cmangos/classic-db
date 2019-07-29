-- Add your query below.
-- https://github.com/vmangos/core/commit/b97f04c6577fb41e893f3d0b7d278bbabf601c0d

-- Azurous: Immune to Arcane. Immune to Fear.
UPDATE `creature_template` SET `SchoolImmuneMask`=`SchoolImmuneMask`|64, `MechanicImmuneMask`=`MechanicImmuneMask`|16 WHERE `entry`=10202;

-- Spellmaw: Immune to Arcane. Immune to Fear, Silence, Snare, Stun.
UPDATE `creature_template` SET `SchoolImmuneMask`=`SchoolImmuneMask`|64, `MechanicImmuneMask`=`MechanicImmuneMask`|(16+256+1024+2048) WHERE `entry`=10662;

-- Manaclaw: Immune to Arcane. Immune to Root, Snare, Freeze.
UPDATE `creature_template` SET `SchoolImmuneMask`=`SchoolImmuneMask`|64, `MechanicImmuneMask`=`MechanicImmuneMask`|(64+1024+4096) WHERE `entry`=10663;

-- Scryer: Immune to Arcane.
UPDATE `creature_template` SET `SchoolImmuneMask`=`SchoolImmuneMask`|64 WHERE `entry`=10664;

-- End of migration.


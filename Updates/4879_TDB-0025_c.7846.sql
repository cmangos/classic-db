-- Correct Damage for Teremus the Devourer 7846
-- bestiary: 987-1310; ccsdb: 990-1299, matches well for both classic and tbc
-- Old Data: DamageMultiplier: 15.6938, DamageVariance: 0.40 -> Seems Classic was already on the right path. - conversion kept variance at 0.40 so the multi is a bit different.
-- Formula: ((55.1888 – 55.1888 * x / 2) + (252 / 14)) * y = 987 = ((55.1888 + 55.1888 * x / 2) + (252 / 14)) * y = 1310
-- New Data: DamageMultiplier: 15.69, DamageVariance: 0.37, MinDMG: 986.97, MaxDMG: 1309.97
UPDATE `creature_template` SET `DamageMultiplier` = 15.69229, `DamageVariance` = 0.37296, `MechanicImmuneMask` = `MechanicImmuneMask`|(1+32+33554432), `MechanicImmuneMask` = `MechanicImmuneMask`&~16384 WHERE `entry` = 7846;


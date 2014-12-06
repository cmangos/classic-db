-- Fixed stats of NPC 9196 (Highlord Omorokk) in Blackrock Spire
-- Thanks TheTrueAnimal for reporting and Metalica for contributing.
-- This closes #678 
UPDATE `creature_template` SET `MinLevel` = 59, `MaxLevel` = 59, `MinLevelHealth` = 23688, `MaxLevelHealth` = 23688, `HealthMultiplier` = 8, `ArmorMultiplier` = 1 WHERE `Entry` = 9196;
UPDATE `creature` SET `curhealth` = 23688 WHERE `id` = 9196;

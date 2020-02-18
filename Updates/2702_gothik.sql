-- Gothik

-- Remove equipment from Gothik the Harvester: he wielded none in Classic
UPDATE creature_template SET EquipmentTemplateId=0 WHERE Entry=16060;

-- Add missing auras to adds in Gothik the Harvester encounter (spectral aura and periodic shadow bolt)
DELETE FROM creature_template_addon WHERE entry IN (16148, 16150, 16126, 16127);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(16126, 0, 0, 1, 16, 0, 0, '27987'),
(16127, 0, 0, 1, 16, 0, 0, '18950'),
(16148, 0, 0, 1, 16, 0, 0, '22650'),
(16150, 0, 0, 1, 16, 0, 0, '22650 27987');

-- Stats
-- Unrelenting Trainee
UPDATE creature_template SET DamageMultiplier=6, MinMeleeDmg=104, MaxMeleeDmg=138, MinRangedDmg=72, MaxRangedDmg=106, MeleeAttackPower=252, RangedAttackPower=26, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=16124;

-- Spectral Horse
UPDATE creature_template SET SpeedWalk=1, DamageMultiplier=20, MinMeleeDmg=110, MaxMeleeDmg=146, MinRangedDmg=76, MaxRangedDmg=112, MeleeAttackPower=268, RangedAttackPower=32, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=16149;

-- Reset Gothik Event
DELETE FROM spell_script_target WHERE entry=28035;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask)
VALUES
(28035, 1, 16124, 0),
(28035, 1, 16125, 0),
(28035, 1, 16126, 0),
(28035, 1, 16127, 0),
(28035, 1, 16148, 0),
(28035, 1, 16149, 0),
(28035, 1, 16150, 0);

-- Spectral Side Assault
DELETE FROM spell_script_target WHERE entry=28781;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask)
VALUES
(28781, 1, 16127, 0),
(28781, 1, 16148, 0),
(28781, 1, 16149, 0),
(28781, 1, 16150, 0);

-- Fixed level, health, mana and damage stats of the creatures (trash,
-- rares and bosses) in the Wailing Caverns. They are now similar to what they
-- were back in Classic.
-- Several sources were used with cross-checking: Bestiary, WoW Dungeon
-- Companion, various web archives (wowwiki, allakhazam...)
-- This closes #488

-- ---------------------
-- Trash mobs
-- ---------------------
-- Deviate Coiler
UPDATE creature_template SET DamageMultiplier=1.7, MinMeleeDmg=22, MaxMeleeDmg=31, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=56, RangedAttackPower=2, MeleeBaseAttackTime=2000 WHERE Entry=3630;
-- Deviate Stinglash
UPDATE creature_template SET DamageMultiplier=1.7, MinMeleeDmg=23, MaxMeleeDmg=33, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=60, RangedAttackPower=2, MeleeBaseAttackTime=2000 WHERE Entry=3631;
-- Deviate Creeper
UPDATE creature_template SET DamageMultiplier=1.7, MinMeleeDmg=22, MaxMeleeDmg=31, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=56, RangedAttackPower=2, MeleeBaseAttackTime=2000 WHERE Entry=3632;
-- Deviate Slayer
UPDATE creature_template SET DamageMultiplier=1.7, MinMeleeDmg=23, MaxMeleeDmg=33, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=60, RangedAttackPower=2, MeleeBaseAttackTime=2000 WHERE Entry=3633;
-- Deviate Stalker
UPDATE creature_template SET MinLevel=15, MaxLevel=16, DamageMultiplier=1.7, MinMeleeDmg=22, MaxMeleeDmg=31, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=56, RangedAttackPower=2, MeleeBaseAttackTime=2000 WHERE Entry=3634;
-- Deviate Ravager
UPDATE creature_template SET DamageMultiplier=1.7, MinMeleeDmg=26, MaxMeleeDmg=37, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=68, RangedAttackPower=3, MeleeBaseAttackTime=2000 WHERE Entry=3636;
-- Deviate Guardian
UPDATE creature_template SET DamageMultiplier=1.7, MinMeleeDmg=26, MaxMeleeDmg=37, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=68, RangedAttackPower=3, MeleeBaseAttackTime=2000 WHERE Entry=3637;
-- Deviate Lurker
UPDATE creature_template SET DamageMultiplier=1.7, MinMeleeDmg=23, MaxMeleeDmg=33, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=60, RangedAttackPower=2, MeleeBaseAttackTime=2000 WHERE Entry=3641;
-- Deviate Adder
UPDATE creature_template SET DamageMultiplier=1.7, MinMeleeDmg=26, MaxMeleeDmg=37, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=68, RangedAttackPower=3, MeleeBaseAttackTime=2000 WHERE Entry=5048;
-- Deviate Crocolisk
UPDATE creature_template SET DamageMultiplier=1.0, MinMeleeDmg=26, MaxMeleeDmg=37, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=68, RangedAttackPower=3, MeleeBaseAttackTime=2000 WHERE Entry=5053;
-- Deviate Lasher
UPDATE creature_template SET MinLevel=19, MaxLevel=20, HealthMultiplier=0.3, MaxLevelHealth=145, ArmorMultiplier=1, DamageMultiplier=1.15, MinMeleeDmg=28, MaxMeleeDmg=39, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=70, RangedAttackPower=4, MeleeBaseAttackTime=2000 WHERE Entry=5055;
-- Deviate Dreadfang
UPDATE creature_template SET HealthMultiplier=3, MinLevelHealth=1452, MaxLevelHealth=1563, ArmorMultiplier=1, DamageMultiplier=1.7, MinMeleeDmg=29, MaxMeleeDmg=40, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=74, RangedAttackPower=4, MeleeBaseAttackTime=2000 WHERE Entry=5056;
-- Deviate Viper
UPDATE creature_template SET MinLevel=20, HealthMultiplier=2.5, MinLevelHealth=1452, MaxLevelHealth=1452, ArmorMultiplier=1, DamageMultiplier=1.7, MinMeleeDmg=29, MaxMeleeDmg=39, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=70, RangedAttackPower=4, MeleeBaseAttackTime=2000 WHERE Entry=5755;
-- Deviate Venomwing
UPDATE creature_template SET HealthMultiplier=3, MinLevelHealth=1452, MaxLevelHealth=1563, ArmorMultiplier=1, DamageMultiplier=1.7, MinMeleeDmg=29, MaxMeleeDmg=40, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=74, RangedAttackPower=4, MeleeBaseAttackTime=2000 WHERE Entry=5756;
-- Deviate Shambler
UPDATE creature_template SET HealthMultiplier=3, MaxLevelHealth=1299, MaxLevelMana=490, ArmorMultiplier=1, DamageMultiplier=1.7, MinMeleeDmg=26, MaxMeleeDmg=36, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=64, RangedAttackPower=4, MeleeBaseAttackTime=2000 WHERE Entry=5761;
-- Deviate Moccasin
UPDATE creature_template SET HealthMultiplier=3, MinLevelHealth=1452, MaxLevelHealth=1563, ArmorMultiplier=1, DamageMultiplier=1.7, MinMeleeDmg=29, MaxMeleeDmg=40, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=74, RangedAttackPower=4, MeleeBaseAttackTime=2000 WHERE Entry=5762;
-- Deviate Nightmare
UPDATE creature_template SET MinLevel=19, MaxLevel=21, HealthMultiplier=1, MinLevelHealth=449, MaxLevelHealth=521, ArmorMultiplier=1, DamageMultiplier=1.0, MinMeleeDmg=28, MaxMeleeDmg=40, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=74, RangedAttackPower=4, MeleeBaseAttackTime=2000 WHERE Entry=5914;
-- Deviate Python
UPDATE creature_template SET DamageMultiplier=1.0, MinMeleeDmg=26, MaxMeleeDmg=37, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=68, RangedAttackPower=3, MeleeBaseAttackTime=2000 WHERE Entry=8886;

-- Devouring Ectoplasm
UPDATE creature_template SET DamageMultiplier=1.7, MinMeleeDmg=23, MaxMeleeDmg=33, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=60, RangedAttackPower=2, MeleeBaseAttackTime=2000 WHERE Entry=3638;
-- Evolving Ectoplasm 3640
-- Previously done
-- Nightmare Ectoplasm
UPDATE creature_template SET MaxLevelHealth=521, MinLevelHealth=484, ArmorMultiplier=1, DamageMultiplier=1.0, MinMeleeDmg=29, MaxMeleeDmg=40, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=74, RangedAttackPower=4, MeleeBaseAttackTime=2000 WHERE Entry=5763;
-- Cloned Ectoplasm
UPDATE creature_template SET MaxLevelHealth=1158, MinLevelHealth=1068, HealthMultiplier=3, ArmorMultiplier=1, DamageMultiplier=1.7, MinMeleeDmg=23, MaxMeleeDmg=33, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=60, RangedAttackPower=2, MeleeBaseAttackTime=2000 WHERE Entry=5780;

-- Druid of the Fang
UPDATE creature_template SET MaxLevelHealth=1299, MaxLevelMana=980, ArmorMultiplier=1, DamageMultiplier=1.7, MinMeleeDmg=26, MaxMeleeDmg=36, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=64, RangedAttackPower=4, MeleeBaseAttackTime=2000 WHERE Entry=3840;


-- ---------------------
-- Bosses and rares mobs
-- ---------------------
-- Deviate Faerie Dragon
UPDATE creature_template SET DamageMultiplier=1.7, MinMeleeDmg=29, MaxMeleeDmg=39, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=70, RangedAttackPower=4, MeleeBaseAttackTime=2000 WHERE Entry=5912;
-- Boahn
UPDATE creature_template SET DamageMultiplier=1.25, MinMeleeDmg=27, MaxMeleeDmg=36, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=64, RangedAttackPower=4, MeleeBaseAttackTime=2000 WHERE Entry=3672;
-- Kresh
UPDATE creature_template SET MaxLevelHealth=1452, MinLevelHealth=1452, HealthMultiplier=3, ArmorMultiplier=1, DamageMultiplier=1.7, MinMeleeDmg=29, MaxMeleeDmg=39, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=70, RangedAttackPower=4, MeleeBaseAttackTime=2000 WHERE Entry=3653;
-- Lady Anacondra
UPDATE creature_template SET DamageMultiplier=2.5, MinMeleeDmg=27, MaxMeleeDmg=36, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=64, RangedAttackPower=4, MeleeBaseAttackTime=2000 WHERE Entry=3671;
-- Lord Cobrahn
UPDATE creature_template SET DamageMultiplier=2.5, MinMeleeDmg=27, MaxMeleeDmg=36, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=64, RangedAttackPower=4, MeleeBaseAttackTime=2000 WHERE Entry=3669;
-- Lord Pythas
UPDATE creature_template SET MaxLevelHealth=2320, MinLevelHealth=2320, HealthMultiplier=5, MinLevelMana=510, MaxLevelMana=510, ArmorMultiplier=1, DamageMultiplier=2.86, MinMeleeDmg=28, MaxMeleeDmg=38, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=68, RangedAttackPower=4, MeleeBaseAttackTime=2000 WHERE Entry=3670;
-- Lord Serpentis
UPDATE creature_template SET MaxLevelHealth=2784, MinLevelHealth=2784, HealthMultiplier=6, PowerMultiplier=3, MinLevelMana=1530, MaxLevelMana=1530, ArmorMultiplier=1, DamageMultiplier=2.86, MinMeleeDmg=28, MaxMeleeDmg=38, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=68, RangedAttackPower=4, MeleeBaseAttackTime=2000 WHERE Entry=3673;
-- Mad Magglish
UPDATE creature_template SET DamageMultiplier=1.7, MinMeleeDmg=26, MaxMeleeDmg=25, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=64, RangedAttackPower=3, MeleeBaseAttackTime=2000 WHERE Entry=3655;
-- Mutanus the Devourer
UPDATE creature_template SET MaxLevelHealth=4496, MinLevelHealth=4496, HealthMultiplier=8, ArmorMultiplier=1, DamageMultiplier=2.4, MinMeleeDmg=32, MaxMeleeDmg=42, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=78, RangedAttackPower=4, MeleeBaseAttackTime=2000 WHERE Entry=3654;
-- Skum
UPDATE creature_template SET MaxLevelHealth=3906, MinLevelHealth=3906, HealthMultiplier=7.5, ArmorMultiplier=1, DamageMultiplier=2.0, MinMeleeDmg=31, MaxMeleeDmg=40, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=74, RangedAttackPower=4, MeleeBaseAttackTime=2000 WHERE Entry=3674;
-- Trigore the Lasher
UPDATE creature_template SET DamageMultiplier=1.25, MinMeleeDmg=28, MaxMeleeDmg=37, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=68, RangedAttackPower=3, MeleeBaseAttackTime=2000 WHERE Entry=3652;
-- Verdan the Everliving
UPDATE creature_template SET MaxLevelHealth=4168, MinLevelHealth=4168, HealthMultiplier=8, ArmorMultiplier=1, DamageMultiplier=5.4, MinMeleeDmg=53, MaxMeleeDmg=71, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=74, RangedAttackPower=4 WHERE Entry=5775;

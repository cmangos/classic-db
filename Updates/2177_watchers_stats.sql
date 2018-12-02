-- Fixed stats, level and flags of various NPCs in Duskwood

-- These should engage in combat
UPDATE creature_template SET ExtraFlags=0 WHERE Entry IN (576, 888, 2142, 11040);

-- Watchers Gelwin, Blomberg, Hutchins, Selkin, Thayer & Merant stats
UPDATE creature_template SET MinLevel=20, MaxLevel=20, SpeedWalk=1, MinLevelHealth=484, MaxLevelHealth=484, ArmorMultiplier=1, MinMeleeDmg=29, MaxMeleeDmg=39, MinRangedDmg=20, MaxRangedDmg=30, MeleeAttackPower=70, RangedAttackPower=4, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry IN (1000, 1001, 1098, 1099, 1100, 1101);
-- Watchers Dodds
UPDATE creature_template SET HealthMultiplier=1.05, MinLevelHealth=950, MaxLevelHealth=950, ArmorMultiplier=1, MinMeleeDmg=41, MaxMeleeDmg=54, MinRangedDmg=28, MaxRangedDmg=41, MeleeAttackPower=100, RangedAttackPower=8, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=888;
-- Watcher Paige
UPDATE creature_template SET HealthMultiplier=1.05, MinLevelHealth=896, MaxLevelHealth=896, ArmorMultiplier=1, MinMeleeDmg=39, MaxMeleeDmg=52, MinRangedDmg=27, MaxRangedDmg=40, MeleeAttackPower=96, RangedAttackPower=8, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=499;
-- Watcher Sarys
UPDATE creature_template SET HealthMultiplier=3, SpeedWalk=1, MinLevelHealth=3660, MaxLevelHealth=3660, ArmorMultiplier=1, MinMeleeDmg=49, MaxMeleeDmg=64, MinRangedDmg=33, MaxRangedDmg=49, MeleeAttackPower=118, RangedAttackPower=11, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=1203; 
-- Watcher Corwin
UPDATE creature_template SET HealthMultiplier=3, SpeedWalk=1, MinLevelHealth=4185, MaxLevelHealth=4185, ArmorMultiplier=1, MinMeleeDmg=53, MaxMeleeDmg=70, MinRangedDmg=36, MaxRangedDmg=53, MeleeAttackPower=128, RangedAttackPower=13, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=1204;
-- Watcher Cutford
UPDATE creature_template SET HealthMultiplier=1.15, MinLevelHealth=1469, MaxLevelHealth=1469, ArmorMultiplier=1, MinMeleeDmg=50, MaxMeleeDmg=66, MinRangedDmg=34, MaxRangedDmg=51, MeleeAttackPower=120, RangedAttackPower=12, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=1436;
-- Watcher Jordan
UPDATE creature_template SET HealthMultiplier=2, MinLevelHealth=2918, MaxLevelHealth=2918, ArmorMultiplier=1, MinMeleeDmg=54, MaxMeleeDmg=72, MinRangedDmg=37, MaxRangedDmg=55, MeleeAttackPower=132, RangedAttackPower=13, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=887;

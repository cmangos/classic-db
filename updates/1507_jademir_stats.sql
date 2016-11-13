-- Fixed damage of NPCs 5317, 5319 & 5320 (Jademir Oracle/Tree Warder/Boughguard) in Feralas
-- They were only doing 500 damage on a lvl 60 cloth wearer character while they
-- should do 3 to 4 times that amount of damage. Source: Bestiary

-- Jademir Oracle
UPDATE creature_template SET DamageMultiplier=15, MinMeleeDmg=99, MaxMeleeDmg=130, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=244, RangedAttackPower=25, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=5317;
-- Jademir Tree Warder
UPDATE creature_template SET DamageMultiplier=15, MinMeleeDmg=104, MaxMeleeDmg=138, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=252, RangedAttackPower=26, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=5319;
-- Jademir Boughguard
UPDATE creature_template SET DamageMultiplier=15, MinMeleeDmg=108, MaxMeleeDmg=143, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=262, RangedAttackPower=30, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=5320;

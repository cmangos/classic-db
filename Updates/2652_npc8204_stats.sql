-- Fix some damage stats
-- Source: Bestiary

-- Soriid the Devourer
UPDATE creature_template SET DamageMultiplier=1, MinMeleeDmg=85, MaxMeleeDmg=112, MinRangedDmg=58, MaxRangedDmg=86, MeleeAttackPower=206, RangedAttackPower=20, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=8204;
-- Darbel Montrose
UPDATE creature_template SET DamageMultiplier=1.8, MinMeleeDmg=51, MaxMeleeDmg=67, MinRangedDmg=35, MaxRangedDmg=51, MeleeAttackPower=124, RangedAttackPower=12, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=2598;
-- Gish the Unmoving
UPDATE creature_template SET DamageMultiplier=1.25, MinMeleeDmg=96, MaxMeleeDmg=127, MinRangedDmg=66, MaxRangedDmg=97, MeleeAttackPower=234, RangedAttackPower=23, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=10825;

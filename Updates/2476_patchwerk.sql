-- Fix stats for NPC 16028 (Patchwerk) in Naxxramas
UPDATE creature_template SET DamageMultiplier=35, MinMeleeDmg=110, MaxMeleeDmg=146, MinRangedDmg=76, MaxRangedDmg=112, MeleeAttackPower=268, RangedAttackPower=32, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=16028;

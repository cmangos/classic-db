-- Fix stats for NPC 730 (Tethis) in Stranglethorn Vale
-- Thanks @AnonXS for correct multipliers (health and power)
UPDATE creature_template SET MinLevelHealth=5320, MaxLevelHealth=5320, HealthMultiplier=3.1, ArmorMultiplier=1, DamageMultiplier=1, MinMeleeDmg=67, MaxMeleeDmg=88, MinRangedDmg=46, MaxRangedDmg=67, MeleeAttackPower=162, RangedAttackPower=16, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=730;

-- Fix attack speed for Shen'dralar Zealot 14369
UPDATE creature_template SET MinMeleeDmg=95, MaxMeleeDmg=125, MinRangedDmg=65, MaxRangedDmg=95, MeleeAttackPower=234, RangedAttackPower=23, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=14369; -- Shen'dralar Zealot

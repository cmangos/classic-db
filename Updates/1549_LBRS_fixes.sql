-- Bannok Grimaxe
UPDATE creature_template SET DamageMultiplier=1.25, MinMeleeDmg=122, MaxMeleeDmg=162, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=248, RangedAttackPower=25, MeleeBaseAttackTime=2400, RangedBaseAttackTime=2000 WHERE Entry=9596;
-- Halycon
UPDATE creature_template SET DamageMultiplier=6.5, MinMeleeDmg=56, MaxMeleeDmg=74, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=248, RangedAttackPower=25, MeleeBaseAttackTime=1100, RangedBaseAttackTime=2000 WHERE Entry=10220;
-- Highlord Omokk
UPDATE creature_template SET SpeedWalk=1, DamageMultiplier=5.0, MinMeleeDmg=163, MaxMeleeDmg=216, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=248, RangedAttackPower=25, MeleeBaseAttackTime=3200, RangedBaseAttackTime=2000 WHERE Entry=9196;
-- Shadow Hunter Vosh'gajin
UPDATE creature_template SET SpeedWalk=1, DamageMultiplier=8.0, MinMeleeDmg=60, MaxMeleeDmg=80, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=228, RangedAttackPower=23, MeleeBaseAttackTime=1300, RangedBaseAttackTime=2000 WHERE Entry=9236;
-- Urok Doomhowl
UPDATE creature_template SET SpeedWalk=1, DamageMultiplier=6.66, MinMeleeDmg=116, MaxMeleeDmg=154, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=238, RangedAttackPower=24, MeleeBaseAttackTime=2400, RangedBaseAttackTime=2000 WHERE Entry=10584;
-- War Master Voone
UPDATE creature_template SET MinLevel=58, MaxLevel=58, SpeedWalk=1, HealthMultiplier=10, PowerMultiplier=1, ArmorMultiplier=1, DamageMultiplier=7.5, MinMeleeDmg=100, MaxMeleeDmg=132, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=242, RangedAttackPower=25, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=9237;
UPDATE creature_template SET UnitFlags=256+512+33554432 WHERE Entry=9707;
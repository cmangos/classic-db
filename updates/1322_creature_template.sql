-- Fixed stats of NPC 5458 (Centipaad Worker)
-- This closes #828. Thanks @Phatcat for pointing.
UPDATE creature_template SET DamageMultiplier=1, MinMeleeDmg=81, MaxMeleeDmg=110, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=200, RangedAttackPower=19, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=5458;

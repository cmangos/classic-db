-- Fixed stats and flags for creatures summoned by Scarshield Warlocks in Lower Blackrock Spire

-- Scarshield Portal (9707)
UPDATE creature_template SET UnitFlags = 33555200 WHERE Entry = 9707;

-- Burning Imp (9708)
UPDATE creature_template SET SpeedWalk=1, DamageMultiplier=1.4, MinMeleeDmg=92, MaxMeleeDmg=125, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=228, RangedAttackPower=23, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000, AIName='' WHERE Entry=9708;
-- Burning Felhound (10261)
UPDATE creature_template SET SpeedWalk=1, DamageMultiplier=2.0, MinMeleeDmg=111, MaxMeleeDmg=150, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=228, RangedAttackPower=23, MeleeBaseAttackTime=2400, RangedBaseAttackTime=2400 WHERE Entry=10261;
-- Burning Felguard (10263)
UPDATE creature_template SET FactionAlliance=90,FactionHorde=90, Rank=2, SpeedWalk=1, DamageMultiplier=4.5, MinMeleeDmg=110, MaxMeleeDmg=149, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=238, RangedAttackPower=24, MeleeBaseAttackTime=2300, RangedBaseAttackTime=2300 WHERE Entry=10263;

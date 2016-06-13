-- Fixed stats of NPC 14564 (Terrordale Spirit) in Eastern Plaguelands
-- They were doing twice their expected damage output
UPDATE creature_template SET DamageMultiplier=1, MinMeleeDmg=102, MaxMeleeDmg=138, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=252, RangedAttackPower=26, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=14564;

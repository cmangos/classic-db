-- Fixed rank and stats of NPC 16072 (Tidelord Rrurgaz) in Dustwallow Marsh
-- Thanks @Phatcat for pointing. This closes #845
UPDATE creature_template SET Rank=1, DamageMultiplier=2, MinMeleeDmg=108, MaxMeleeDmg=143, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=262, RangedAttackPower=30, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=16072;
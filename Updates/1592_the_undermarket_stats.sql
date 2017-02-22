-- Fixed stats of NPC 8444 (Trade Master Kovic) and NPC 8447 (Clunk) in Searing Gorge
-- They were using TBC values
UPDATE creature_template SET MinLevelHealth=2658, MaxLevelHealth=2658, MaxLevelMana=1807, MinLevelMana=1807, HealthMultiplier=1.5, ArmorMultiplier=1 WHERE Entry=8444;
UPDATE creature_template SET MinMeleeDmg=79, MaxMeleeDmg=104, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=194, RangedAttackPower=18, Armor=2432 WHERE Entry=8444;

UPDATE creature_template SET DamageMultiplier=3.25, MinMeleeDmg=80, MaxMeleeDmg=107, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=196, RangedAttackPower=19 WHERE Entry=8447;

-- Correct damage stats for two Winterfall Furbolgs
-- Thanks @Tobschinski <The Watcher> for his help
-- Winterfall Ursa
UPDATE creature_template SET DamageMultiplier=1.22, MinMeleeDmg=135, MaxMeleeDmg=182, MinRangedDmg=95, MaxRangedDmg=139, MeleeAttackPower=242, RangedAttackPower=25, MeleeBaseAttackTime=2750, RangedBaseAttackTime=2750 WHERE entry=7438;
-- High Chief Winterfall
UPDATE creature_template SET DamageMultiplier=1, MinMeleeDmg=133, MaxMeleeDmg=176, MinRangedDmg=91, MaxRangedDmg=133, MeleeAttackPower=234, RangedAttackPower=23, MeleeBaseAttackTime=2800, RangedBaseAttackTime=2800 WHERE entry=10738;

-- Fix damage stats of NPCs outside Scarlet Monastery: they were elite back in Classic
-- Scarlet Preserver
UPDATE creature_template SET DamageMultiplier=1.15, MinMeleeDmg=38, MaxMeleeDmg=52, MinRangedDmg=27, MaxRangedDmg=40, MeleeAttackPower=94, RangedAttackPower=8, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=4280;
-- Scarlet Scout
UPDATE creature_template SET DamageMultiplier=1.7, MinMeleeDmg=41, MaxMeleeDmg=56, MinRangedDmg=29, MaxRangedDmg=43, MeleeAttackPower=102, RangedAttackPower=9, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=4281;
-- Scarlet Magician
UPDATE creature_template SET DamageMultiplier=1, MinMeleeDmg=29, MaxMeleeDmg=42, MinRangedDmg=26, MaxRangedDmg=38, MeleeAttackPower=44, RangedAttackPower=16, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=4282;
-- Scarlet Augur
UPDATE creature_template SET DamageMultiplier=1.15, MinMeleeDmg=39, MaxMeleeDmg=54, MinRangedDmg=28, MaxRangedDmg=41, MeleeAttackPower=98, RangedAttackPower=9, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=4284;
-- Scarlet Disciple
UPDATE creature_template SET DamageMultiplier=1.15, MinMeleeDmg=39, MaxMeleeDmg=54, MinRangedDmg=28, MaxRangedDmg=41, MeleeAttackPower=98, RangedAttackPower=9, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=4285;

-- Fix damage stats for Winterfall Furbolgs in Winterspring
-- Source: Bestiary
-- Winterfall Ambusher
UPDATE creature_template SET DamageMultiplier=1.68, MinMeleeDmg=96, MaxMeleeDmg=130, MinRangedDmg=67, MaxRangedDmg=99, MeleeAttackPower=238, RangedAttackPower=24, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=14372;
-- Winterfall Ursa
UPDATE creature_template SET DamageMultiplier=1.68, MinMeleeDmg=98, MaxMeleeDmg=132, MinRangedDmg=69, MaxRangedDmg=101, MeleeAttackPower=242, RangedAttackPower=25, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=7438;
-- Winterfall Shaman
UPDATE creature_template SET DamageMultiplier=1, MinMeleeDmg=89, MaxMeleeDmg=121, MinRangedDmg=62, MaxRangedDmg=92, MeleeAttackPower=224, RangedAttackPower=22, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=7439;
-- Winterfall Den Watcher
UPDATE creature_template SET DamageMultiplier=1, MinMeleeDmg=94, MaxMeleeDmg=127, MinRangedDmg=66, MaxRangedDmg=97, MeleeAttackPower=234, RangedAttackPower=23, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=7440;
-- Winterfall Totemic
UPDATE creature_template SET DamageMultiplier=1, MinMeleeDmg=86, MaxMeleeDmg=116, MinRangedDmg=60, MaxRangedDmg=88, MeleeAttackPower=214, RangedAttackPower=21, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=7441;
-- Winterfall Pathfinder
UPDATE creature_template SET DamageMultiplier=1, MinMeleeDmg=90, MaxMeleeDmg=122, MinRangedDmg=63, MaxRangedDmg=93, MeleeAttackPower=224, RangedAttackPower=22, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=7442;
-- Grizzle Snowpaw
UPDATE creature_template SET DamageMultiplier=1.68, MinMeleeDmg=95, MaxMeleeDmg=125, MinRangedDmg=65, MaxRangedDmg=95, MeleeAttackPower=234, RangedAttackPower=23, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=10199;
-- Winterfall Runner
UPDATE creature_template SET DamageMultiplier=1.68, MinMeleeDmg=98, MaxMeleeDmg=130, MinRangedDmg=67, MaxRangedDmg=99, MeleeAttackPower=238, RangedAttackPower=24, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=10916;
-- High Chief Winterfall
UPDATE creature_template SET DamageMultiplier=1.4, MinMeleeDmg=95, MaxMeleeDmg=125, MinRangedDmg=65, MaxRangedDmg=95, MeleeAttackPower=234, RangedAttackPower=23, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=10738;

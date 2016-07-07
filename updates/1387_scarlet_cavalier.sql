-- Fixed damage stats of NPC 1836 (Scarlet Cavalier) and NPC 1842 (Taelan Fordring) in Western Plaguelands
-- Removed wrong civilian flag for NPC 1842 (Taelan Fordring)
-- This closes #867
UPDATE creature_template SET DamageMultiplier=2, MinMeleeDmg=96, MaxMeleeDmg=132, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=242, RangedAttackPower=25, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=1836;

UPDATE creature_template SET DamageMultiplier=5, MinMeleeDmg=102, MaxMeleeDmg=135, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=252, RangedAttackPower=27, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000, Civilian = 0 WHERE Entry=1842;

-- Fix stats for NPC 4277 (Eye of Kilrogg): speed, health and damage
UPDATE creature_template SET SpeedWalk=2, SpeedRun=2, HealthMultiplier=0.1, MinLevelHealth=56, MaxLevelHealth=56, MinMeleeDmg=32, MaxMeleeDmg=42, MinRangedDmg=21, MaxRangedDmg=32, MeleeAttackPower=78, RangedAttackPower=4, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=4277;

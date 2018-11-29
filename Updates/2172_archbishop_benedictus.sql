-- Update stats for NPC 1284 (Archbishop Benedictus)
-- Due to the various changes this NPC went through, his modifiers are taken from TBC where he was still considered as a boss though his level was 70
UPDATE creature_template SET HealthMultiplier=200, PowerMultiplier=20, DamageMultiplier=2, ArmorMultiplier=1, MinLevelHealth=466400, MaxLevelHealth=466400, MinlevelMana=123120, MaxLevelMana=123120, MinMeleeDmg=78, MaxMeleeDmg=108, MinRangedDmg=65, MaxRangedDmg=95, MeleeAttackPower=119, RangedAttackPower=26, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=1284;

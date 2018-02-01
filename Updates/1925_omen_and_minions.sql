-- Fixed stats of NPC 15466 (Minion of Omen) & 15467 (Omen) in Moonglade
-- Fixed stats and faction of NPC 15466 (Minion of Omen)
-- Also prevented it from going into water
UPDATE creature_template SET FactionAlliance=14, FactionHorde=14, InhabitType=1, HealthMultiplier=1.5, MinLevelHealth=4442, MaxLevelHealth=4578,
DamageMultiplier=0.4, MeleeAttackPower=252, RangedAttackPower=26, MinMeleeDmg=102, MaxMeleeDmg=138, MinRangedDmg=72, MaxRangedDmg=106, ArmorMultiplier=1 WHERE Entry=15466;

-- Fixed stats of NPC 15467 (Omen)
-- Also prevented it from regenerating health
UPDATE creature_template SET RegenerateStats=0, PowerMultiplier=25, DamageMultiplier=35, MeleeAttackPower=268, RangedAttackPower=32, MinMeleeDmg=110, MaxMeleeDmg=146, MinRangedDmg=76, MaxRangedDmg=112, ArmorMultiplier=1 WHERE Entry=15467;

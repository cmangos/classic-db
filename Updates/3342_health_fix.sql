-- Update stats for two NPCs after their level range was updated
-- Note: this is only a consistency fix as these values are no-longer used by the core
UPDATE creature_template SET MinLevelHealth=287, MinMeleeDmg=100, MaxMeleeDmg=135, MinRangedDmg=70, MaxRangedDmg=103, MeleeAttackPower=248, RangedAttackPower=25 WHERE Entry=10388; -- Spiteful Phantom
UPDATE creature_template SET MaxLevelHealth=252, MaxLevelMana=2486, MinMeleeDmg=97, MaxMeleeDmg=130, MinRangedDmg=67, MaxRangedDmg=99, MeleeAttackPower=244, RangedAttackPower=25 WHERE Entry=10389; -- Wrath Phantom

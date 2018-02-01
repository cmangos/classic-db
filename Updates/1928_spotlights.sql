-- Fixed stats and flags for NPCs 15631 (Spotlight), 15897 (Large Spotlight) & 15902 (Giant Spotlight)
UPDATE creature_template SET MinLevel=60, MaxLevel=60, Scale=0, ExtraFlags=0, CreatureType=10, FactionAlliance=35, FactionHorde=35, HealthMultiplier=1.35, MinLevelHealth=4120, MaxLevelHealth=4120, UnitFlags=33587968,
DamageMultiplier=1, MeleeAttackPower=252, RangedAttackPower=26, MinMeleeDmg=104, MaxMeleeDmg=138, MinRangedDmg=72, MaxRangedDmg=106, ArmorMultiplier=1, Armor=3791 WHERE Entry IN (15631, 15897, 15902);

-- Spawned creature cleanup
UPDATE creature, creature_template SET creature.curhealth=creature_template.MinLevelHealth, creature.curmana=creature_template.MinLevelMana WHERE creature.id=creature_template.Entry AND RegenerateStats&1;

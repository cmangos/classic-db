-- Fix stats for a few NPCs
-- Note that warlock pets multiplier values are not in line with usual creature multipliers because they are to match pet_levelstats at a given level and that they are not usual creatures
-- Sources: WoW Bestiary and cross checks between pet_levelstats and class_levelstats (Classic and TBC)

-- Imp
UPDATE creature_template SET HealthMultiplier=1.86, PowerMultiplier=0.4, ArmorMultiplier=0.75, MinLevelHealth=177, MaxLevelHealth=177, MinLevelMana=92, MaxLevelMana=92, Armor=49, DamageMultiplier=1.3, MinMeleeDmg=4, MaxMeleeDmg=4, MinRangedDmg=3, MaxRangedDmg=4, MeleeAttackPower=14, RangedAttackPower=11, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=416;
-- Felhunter
UPDATE creature_template SET HealthMultiplier=1.0356, PowerMultiplier=0.77, ArmorMultiplier=0.95, MinLevelHealth=2529, MaxLevelHealth=2529, MinLevelMana=1874, MaxLevelMana=1874, Armor=2938, DamageMultiplier=0.8, MinMeleeDmg=97, MaxMeleeDmg=128, MinRangedDmg=66, MaxRangedDmg=98, MeleeAttackPower=238, RangedAttackPower=24, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=417;
-- Fire Elemental
UPDATE creature_template SET HealthMultiplier=1, MinLevelHealth=1220, MaxLevelHealth=1277, ArmorMultiplier=1, DamageMultiplier=1, MinMeleeDmg=49, MaxMeleeDmg=66, MinRangedDmg=34, MaxRangedDmg=51, MeleeAttackPower=120, RangedAttackPower=12, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=575;
-- Voidwalker
UPDATE creature_template SET HealthMultiplier=1.4, PowerMultiplier=0.77, ArmorMultiplier=1.64, DamageMultiplier=1, MinLevelHealth=490, MaxLevelHealth=490, MinLevelMana=300, MaxLevelMana=300, Armor=1022, MinMeleeDmg=23, MaxMeleeDmg=31, MinRangedDmg=16, MaxRangedDmg=23, MeleeAttackPower=56, RangedAttackPower=2, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=1860;
-- Succubus
UPDATE creature_template SET HealthMultiplier=0.7, PowerMultiplier=0.77, ArmorMultiplier=0.8, DamageMultiplier=1.06, MinLevelHealth=303, MaxLevelHealth=303, MinLevelMana=377, MaxLevelMana=377, Armor=563, MinMeleeDmg=27, MaxMeleeDmg=36, MinRangedDmg=19, MaxRangedDmg=28, MeleeAttackPower=64, RangedAttackPower=4, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=1863;
-- Moonstalker Runt
UPDATE creature_template SET MinLevel=16, MaxLevel=17, HealthMultiplier=1, ArmorMultiplier=1, DamageMultiplier=1, MinMeleeDmg=15, MaxMeleeDmg=22, MinRangedDmg=11, MaxRangedDmg=16, MeleeAttackPower=60, RangedAttackPower=2, MeleeBaseAttackTime=1300, RangedBaseAttackTime=1300 WHERE entry=2070;
-- Defias Companion
UPDATE creature_template SET HealthMultiplier=1, PowerMultiplier=1, ArmorMultiplier=1, MinLevelHealth=300, MaxLevelHealth=328, MinLevelMana=0, MaxLevelMana=0, Armor=677, DamageMultiplier=0.5, MinMeleeDmg=20, MaxMeleeDmg=29, MinRangedDmg=15, MaxRangedDmg=22, MeleeAttackPower=54, RangedAttackPower=2, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=3450;
-- Razormane Wolf
UPDATE creature_template SET HealthMultiplier=1, PowerMultiplier=1, ArmorMultiplier=1, MinLevelHealth=137, MaxLevelHealth=156, MinLevelMana=0, MaxLevelMana=0, Armor=677, DamageMultiplier=1, MinMeleeDmg=9, MaxMeleeDmg=14, MinRangedDmg=6, MaxRangedDmg=10, MeleeAttackPower=28, RangedAttackPower=0, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=3939;
-- Wind Howler
UPDATE creature_template SET HealthMultiplier=0.8, PowerMultiplier=1, ArmorMultiplier=1, MinLevelHealth=559, MaxLevelHealth=600, MinLevelMana=0, MaxLevelMana=0, Armor=677, DamageMultiplier=0.75, MinMeleeDmg=36, MaxMeleeDmg=49, MinRangedDmg=25, MaxRangedDmg=37, MeleeAttackPower=90, RangedAttackPower=7, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=4526;
-- Tamed Hyena
UPDATE creature_template SET HealthMultiplier=1, PowerMultiplier=1, ArmorMultiplier=1, MinLevelHealth=800, MaxLevelHealth=853, MinLevelMana=0, MaxLevelMana=0, Armor=677, DamageMultiplier=1, MinMeleeDmg=38, MaxMeleeDmg=52, MinRangedDmg=27, MaxRangedDmg=40, MeleeAttackPower=96, RangedAttackPower=8, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=4534;
-- World Alchemy Trainer
UPDATE creature_template SET HealthMultiplier=1, PowerMultiplier=1, ArmorMultiplier=1, MinLevelHealth=198, MaxLevelHealth=198, MinLevelMana=0, MaxLevelMana=0, Armor=49, DamageMultiplier=1, MinMeleeDmg=13, MaxMeleeDmg=17, MinRangedDmg=8, MaxRangedDmg=12, MeleeAttackPower=34, RangedAttackPower=0, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=5032;
-- World Engineering Trainer
UPDATE creature_template SET HealthMultiplier=1, PowerMultiplier=1, ArmorMultiplier=1, MinLevelHealth=198, MaxLevelHealth=198, MinLevelMana=0, MaxLevelMana=0, Armor=49, DamageMultiplier=1, MinMeleeDmg=13, MaxMeleeDmg=17, MinRangedDmg=8, MaxRangedDmg=12, MeleeAttackPower=34, RangedAttackPower=0, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=5037;
-- World Enchanting Trainer
UPDATE creature_template SET HealthMultiplier=1, PowerMultiplier=1, ArmorMultiplier=1, MinLevelHealth=198, MaxLevelHealth=198, MinLevelMana=0, MaxLevelMana=0, Armor=49, DamageMultiplier=1, MinMeleeDmg=13, MaxMeleeDmg=17, MinRangedDmg=8, MaxRangedDmg=12, MeleeAttackPower=34, RangedAttackPower=0, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=5038;
-- World Leatherworking Trainer
UPDATE creature_template SET HealthMultiplier=1, PowerMultiplier=1, ArmorMultiplier=1, MinLevelHealth=198, MaxLevelHealth=198, MinLevelMana=0, MaxLevelMana=0, Armor=49, DamageMultiplier=1, MinMeleeDmg=13, MaxMeleeDmg=17, MinRangedDmg=8, MaxRangedDmg=12, MeleeAttackPower=34, RangedAttackPower=0, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=5040;
-- World Tailoring Trainer
UPDATE creature_template SET HealthMultiplier=1, PowerMultiplier=1, ArmorMultiplier=1, MinLevelHealth=198, MaxLevelHealth=198, MinLevelMana=0, MaxLevelMana=0, Armor=49, DamageMultiplier=1, MinMeleeDmg=13, MaxMeleeDmg=17, MinRangedDmg=8, MaxRangedDmg=12, MeleeAttackPower=34, RangedAttackPower=0, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=5041;
-- Savannah Cub
UPDATE creature_template SET HealthMultiplier=1, PowerMultiplier=1, ArmorMultiplier=1, MinLevelHealth=176, MaxLevelHealth=176, MinLevelMana=0, MaxLevelMana=0, Armor=677, DamageMultiplier=0.5, MinMeleeDmg=12, MaxMeleeDmg=16, MinRangedDmg=7, MaxRangedDmg=11, MeleeAttackPower=31, RangedAttackPower=0, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=5766;
-- Aqua Guardian
UPDATE creature_template SET HealthMultiplier=1, PowerMultiplier=1, ArmorMultiplier=1, MinLevelHealth=562, MaxLevelHealth=605, MinLevelMana=0, MaxLevelMana=0, Armor=677, DamageMultiplier=1, MinMeleeDmg=32, MaxMeleeDmg=44, MinRangedDmg=22, MaxRangedDmg=33, MeleeAttackPower=80, RangedAttackPower=5, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=6047;
-- Crawler
UPDATE creature_template SET HealthMultiplier=1, PowerMultiplier=1, ArmorMultiplier=1, MaxLevelHealth=247, DamageMultiplier=1, MinMeleeDmg=15, MaxMeleeDmg=22, MinRangedDmg=11, MaxRangedDmg=16, MeleeAttackPower=42, RangedAttackPower=0, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=6250;
-- Skeleton
UPDATE creature_template SET MinMeleeDmg=34, MaxMeleeDmg=48, MinRangedDmg=24, MaxRangedDmg=36, MeleeAttackPower=86, RangedAttackPower=6, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=6412;
-- Succubus Minion
UPDATE creature_template SET HealthMultiplier=1, PowerMultiplier=1, ArmorMultiplier=1, MinLevelHealth=1226, MaxLevelHealth=1226, MinLevelMana=1283, MaxLevelMana=1283, DamageMultiplier=1, MinMeleeDmg=52, MaxMeleeDmg=69, MinRangedDmg=36, MaxRangedDmg=53, MeleeAttackPower=128, RangedAttackPower=13, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=10928;
-- Scarlet Hound
UPDATE creature_template SET HealthMultiplier=1.25, PowerMultiplier=1, ArmorMultiplier=1, DamageMultiplier=0.75, MinLevelHealth=2964, MaxLevelHealth=3066, MinLevelMana=0, MaxLevelMana=0, Armor=1022, MinMeleeDmg=23, MaxMeleeDmg=31, MinRangedDmg=16, MaxRangedDmg=23, MeleeAttackPower=56, RangedAttackPower=2, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=10979;
-- Reef Shark
UPDATE creature_template SET MaxLevelHealth=1686 WHERE entry=12123;
-- Doctor Weavil
UPDATE creature_template SET ArmorMultiplier=1 WHERE entry=15552;
-- Felguard
UPDATE creature_template SET HealthMultiplier=1.17, PowerMultiplier=1.27, ArmorMultiplier=0.8, DamageMultiplier=1.5, MinLevelHealth=2688, MaxLevelHealth=2688, MinLevelMana=2907, MaxLevelMana=2907, Armor=4006, MinMeleeDmg=93, MaxMeleeDmg=123, MinRangedDmg=64, MaxRangedDmg=94, MeleeAttackPower=228, RangedAttackPower=23, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=17252;
-- Skeletal Gryphon
UPDATE creature_template SET MinLevelHealth=3052, MaxLevelHealth=3052 WHERE entry=17660;

-- Clean-up
UPDATE creature, creature_template SET creature.curhealth=creature_template.MinLevelHealth, creature.curmana=creature_template.MinLevelMana WHERE creature.id=creature_template.Entry AND RegenerateStats&1;
UPDATE creature_template AS ct, creature_template_classlevelstats AS cs SET ct.Armor=cs.BaseArmor*ct.ArmorMultiplier WHERE cs.Class=ct.UnitClass AND cs.Level=ct.MaxLevel and ct.ArmorMultiplier>0;

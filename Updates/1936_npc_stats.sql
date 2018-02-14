-- Fixed stats of a bunch of creatures : health, mana, damage, armor, multipliers...

UPDATE creature_template SET ArmorMultiplier=1, MinMeleeDmg=22, MaxMeleeDmg=31, MinRangedDmg=16, MaxRangedDmg=23, MeleeAttackPower=56, RangedAttackPower=2, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=442; -- Tarantula

UPDATE creature_template SET ArmorMultiplier=1, MinMeleeDmg=5, MaxMeleeDmg=9, MinRangedDmg=4, MaxRangedDmg=6, MeleeAttackPower=20, RangedAttackPower=0, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=3106; -- Pygmy Surf Crawler

UPDATE creature_template SET MinLevelHealth=6186, MaxLevelHealth=6186 WHERE Entry=8156; -- Servant of Antu'sul

UPDATE creature_template SET HealthMultiplier=25, PowerMultiplier=10, DamageMultiplier=15, ArmorMultiplier=1, MinLevelHealth=62875, MaxLevelHealth=62875, MinLevelMana=24860, MaxLevelMana=24860, MinMeleeDmg=99, MaxMeleeDmg=130, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=244, RangedAttackPower=25, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry IN (12476, 12478); -- Emeraldon Oracle, Verdantine Oracle

UPDATE creature_template SET HealthMultiplier=25, PowerMultiplier=10, DamageMultiplier=15, ArmorMultiplier=1, MinLevelHealth=80925, MaxLevelHealth=80925, MinLevelMana=0, MaxLevelMana=0, MinMeleeDmg=108, MaxMeleeDmg=143, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=262, RangedAttackPower=30, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry IN (12474, 12477); -- Emeraldon Boughguard, Verdantine Boughguard

UPDATE creature_template SET HealthMultiplier=25, PowerMultiplier=10, DamageMultiplier=15, ArmorMultiplier=1, MinLevelHealth=76300, MaxLevelHealth=76300, MinLevelMana=0, MaxLevelMana=0, MinMeleeDmg=104, MaxMeleeDmg=138, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=252, RangedAttackPower=26, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry IN (12475, 12479); -- Emeraldon Tree Warder, Verdantine Tree Warder

UPDATE creature_template SET ArmorMultiplier=1, MinMeleeDmg=86, MaxMeleeDmg=114, MinRangedDmg=59, MaxRangedDmg=87, MeleeAttackPower=210, RangedAttackPower=20, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=14484; -- Injured Peasant

UPDATE creature_template SET ArmorMultiplier=1, MinMeleeDmg=88, MaxMeleeDmg=117, MinRangedDmg=61, MaxRangedDmg=90, MeleeAttackPower=214, RangedAttackPower=21, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=14485; -- Plagued Peasant

UPDATE creature_template SET HealthMultiplier=3, PowerMultiplier=3, DamageMultiplier=3, ArmorMultiplier=1, MinLevelHealth=7842, MaxLevelHealth=7842, MinLevelMana=0, MaxLevelMana=0, MinMeleeDmg=94, MaxMeleeDmg=125, MinRangedDmg=65, MaxRangedDmg=95, MeleeAttackPower=228, RangedAttackPower=23, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry IN (352, 523, 931, 1387, 1571, 1572, 1573, 2226, 2299, 2389, 2409, 2432, 2835, 2851, 2858, 2859, 2861, 2941, 2995, 3305, 3310, 3615, 3838, 3841, 4267, 4312, 4314, 4317, 4319, 4321, 4407, 4551, 6026, 6706, 6726, 7823, 7824, 8018, 8019, 8020, 8609, 8610, 10378, 10583, 10897, 11138, 11139, 11899, 11900, 11901, 12577, 12578, 12596, 12616, 12617, 12636, 12740, 13177, 15177, 15178, 16227); -- Gryphon Masters, Hippogryph Master, Wind Rider Masters and Bat Handlers

UPDATE creature_template SET MinLevelHealth=42, MaxLevelHealth=42, MinMeleeDmg=2, MaxMeleeDmg=2, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=9, RangedAttackPower=0, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry IN (15899, 15900); -- Lunar Festival NE Vendor/Harbinger

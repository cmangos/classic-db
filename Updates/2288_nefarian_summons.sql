-- Fix stats of summoned NPCs in Nefarian encounter phase 2

-- Corrupted Fire Nova Totem V
UPDATE creature_template SET AIName='TotemAI', CreatureType=11, HealthMultiplier=1, MinLevelHealth=2371, MaxLevelHealth=2371, MinLevelMana=0, MaxLevelMana=0, ArmorMultiplier=1, DamageMultiplier=1, MinMeleeDmg=88, MaxMeleeDmg=117, MinRangedDmg=61, MaxRangedDmg=90, MeleeAttackPower=214, RangedAttackPower=21, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=14662;
-- Corrupted Stoneskin Totem VI
UPDATE creature_template SET AIName='TotemAI', CreatureType=11, HealthMultiplier=0.05, MinLevelHealth=127, MaxLevelHealth=127, MinLevelMana=0, MaxLevelMana=0, ArmorMultiplier=1, DamageMultiplier=1, MinMeleeDmg=92, MaxMeleeDmg=122, MinRangedDmg=63, MaxRangedDmg=93, MeleeAttackPower=224, RangedAttackPower=22, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=14663;
-- Corrupted Healing Stream Totem V
UPDATE creature_template SET AIName='TotemAI', CreatureType=11, HealthMultiplier=0.05, MinLevelHealth=153, MaxLevelHealth=153, MinLevelMana=0, MaxLevelMana=0, ArmorMultiplier=1, DamageMultiplier=1, MinMeleeDmg=104, MaxMeleeDmg=138, MinRangedDmg=72, MaxRangedDmg=106, MeleeAttackPower=252, RangedAttackPower=26, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=14664;
-- Corrupted Windfury Totem III
UPDATE creature_template SET AIName='TotemAI', CreatureType=11, HealthMultiplier=1, MinLevelHealth=3052, MaxLevelHealth=3052, MinLevelMana=0, MaxLevelMana=0, ArmorMultiplier=1, DamageMultiplier=1, MinMeleeDmg=104, MaxMeleeDmg=138, MinRangedDmg=72, MaxRangedDmg=106, MeleeAttackPower=252, RangedAttackPower=26, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=14666;
-- Corrupted Totem
UPDATE creature_template SET AIName='TotemAI', CreatureType=11, ExtraFlags=128, HealthMultiplier=1, MinLevelHealth=42, MaxLevelHealth=42, MinLevelMana=0, MaxLevelMana=0, ArmorMultiplier=1, DamageMultiplier=1, MinMeleeDmg=2, MaxMeleeDmg=2, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=9, RangedAttackPower=0, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=14667;
-- Corrupted Infernal
UPDATE creature_template SET HealthMultiplier=1.6, MinLevelHealth=4883, MaxLevelHealth=4883, MinLevelMana=0, MaxLevelMana=0, ArmorMultiplier=1, DamageMultiplier=3, MinMeleeDmg=104, MaxMeleeDmg=138, MinRangedDmg=72, MaxRangedDmg=106, MeleeAttackPower=252, RangedAttackPower=26, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=14668;

-- Fix wrong spell for NPC 14662 (Corrupted Fire Nova Totem)
UPDATE creature_template_spells SET spell1=11311 WHERE entry=14662;

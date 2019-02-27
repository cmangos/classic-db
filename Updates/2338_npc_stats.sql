-- Fix stats of a few NPCs involved in the Scepter of the Shifting Sands quest line
-- Twilight Corrupter
UPDATE creature_template SET Faction=14, HealthMultiplier=250, MinLevelHealth=832750, MaxLevelHealth=832750, ArmorMultiplier=1, DamageMultiplier=15, MinMeleeDmg=110, MaxMeleeDmg=146, MinRangedDmg=76, MaxRangedDmg=112, MeleeAttackPower=268, RangedAttackPower=32, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=15625;
-- Number Two
UPDATE creature_template SET DamageMultiplier=20, MinMeleeDmg=79, MaxMeleeDmg=105, MinRangedDmg=55, MaxRangedDmg=81, MeleeAttackPower=258, RangedAttackPower=28, MeleeBaseAttackTime=1500, RangedBaseAttackTime=1500 WHERE entry=15554;
-- Minion of Weavil
UPDATE creature_template SET DamageMultiplier=6, MinMeleeDmg=104, MaxMeleeDmg=140, MinRangedDmg=73, MaxRangedDmg=107, MeleeAttackPower=258, RangedAttackPower=28, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=15591;
-- Doctor Weavil
UPDATE creature_template SET HealthMultiplier=140, MinLevelHealth=326480, MaxLevelHealth=326480, ArmorMultiplier=1, DamageMultiplier=15, MinMeleeDmg=78, MaxMeleeDmg=108, MinRangedDmg=65, MaxRangedDmg=95, MeleeAttackPower=119, RangedAttackPower=26, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=15552;
-- Maws
UPDATE creature_template SET DamageMultiplier=30, MinMeleeDmg=110, MaxMeleeDmg=146, MinRangedDmg=76, MaxRangedDmg=112, MeleeAttackPower=268, RangedAttackPower=32, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=15571;
-- Eranikus, Tyrant of the Dream / Eranikus the Redeemed
UPDATE creature_template SET DamageMultiplier=32, MinMeleeDmg=110, MaxMeleeDmg=146, MinRangedDmg=76, MaxRangedDmg=112, MeleeAttackPower=268, RangedAttackPower=32, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry IN (15491, 15628);
-- Nightmare Phantasm
UPDATE creature_template SET DamageMultiplier=9, MinMeleeDmg=108, MaxMeleeDmg=143, MinRangedDmg=75, MaxRangedDmg=110, MeleeAttackPower=262, RangedAttackPower=30, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=15629;
-- Lord Lakmaeran
UPDATE creature_template SET DamageMultiplier=15, MinMeleeDmg=108, MaxMeleeDmg=143, MinRangedDmg=75, MaxRangedDmg=110, MeleeAttackPower=262, RangedAttackPower=30, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=12803;
-- Chimaerok
UPDATE creature_template SET DamageMultiplier=6, MinMeleeDmg=104, MaxMeleeDmg=140, MinRangedDmg=73, MaxRangedDmg=107, MeleeAttackPower=258, RangedAttackPower=28, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=12800;
-- Arcane Chimaerok
UPDATE creature_template SET DamageMultiplier=6, MinMeleeDmg=104, MaxMeleeDmg=143, MinRangedDmg=75, MaxRangedDmg=110, MeleeAttackPower=262, RangedAttackPower=30, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=12801;
-- Chimaerok Devourer
UPDATE creature_template SET DamageMultiplier=6, MinMeleeDmg=106, MaxMeleeDmg=143, MinRangedDmg=75, MaxRangedDmg=110, MeleeAttackPower=262, RangedAttackPower=30, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=12802;

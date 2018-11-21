-- Emerald Dragon Whelp 8776
UPDATE creature_template SET HealthMultiplier=1.3, MinLevelHealth=2379, MaxLevelHealth=2379, SpeedWalk=(2.77778 / 2.5), SpeedRun=(8 / 7), UnitClass=8, DamageMultiplier=1, MinMeleeDmg=67, MaxMeleeDmg=93, MinRangedDmg=55, MaxRangedDmg=82, MeleeAttackPower=101, RangedAttackPower=23, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=8776;
UPDATE creature_model_info SET bounding_radius=0.278, combat_reach=1.25 WHERE modelid=694;

-- Scald 8281 - http://www.wowhead.com/npc=8281/scald#comments:id=123788:reply=36634
UPDATE creature_template SET DamageSchool=2 WHERE entry=8281;

-- Viscous Fallout 7079 - Frost Immunity http://www.wowhead.com/npc=7079/viscous-fallout#comments:id=215801
-- Stuns http://www.wowhead.com/npc=7079/viscous-fallout#comments:id=171538
-- Scale change is pre wotlk only, wotlk sniff have 1.0 as scale with bounding radius UNIT_FIELD_BOUNDINGRADIUS: 0.397228 and UNIT_FIELD_COMBATREACH: 1.3
UPDATE creature_template SET Scale=1.3, UnitFlags=64, InhabitType=1, SchoolImmuneMask=16 WHERE entry=7079;

UPDATE creature_template SET HealthMultiplier=1.2, DamageMultiplier=1, MinMeleeDmg=59, MaxMeleeDmg=78, MinRangedDmg=41, MaxRangedDmg=60, MeleeAttackPower=142, RangedAttackPower=15, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=1061; -- Gan'zulah 5
UPDATE creature_template SET UnitFlags=32768, DamageMultiplier=1, MinMeleeDmg=76, MaxMeleeDmg=100, MinRangedDmg=52, MaxRangedDmg=76, Armor=2695, MeleeAttackPower=184, RangedAttackPower=17 WHERE entry=5295; -- Enraged Feral Scar 5295
UPDATE creature_template SET DamageMultiplier=2.5, MinMeleeDmg=85, MaxMeleeDmg=112, MinRangedDmg=58, MaxRangedDmg=86, MeleeAttackPower=206, RangedAttackPower=20, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=8201; -- Omgorn the Lost 5
UPDATE creature_template SET DamageMultiplier=1.6, MinMeleeDmg=88, MaxMeleeDmg=119, MinRangedDmg=62, MaxRangedDmg=91, MeleeAttackPower=218, RangedAttackPower=22, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=12418; -- Gordok Hyena 2.6
UPDATE creature_template SET DamageMultiplier=1.5, MinMeleeDmg=94, MaxMeleeDmg=125, MinRangedDmg=65, MaxRangedDmg=95, MeleeAttackPower=228, RangedAttackPower=23, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=15333; -- Silicate Feeder 14

-- Fixed stats for some Boss NPCs in Lower Blackrock Spire

-- Gizrul the Slavener
UPDATE creature_template SET SpeedWalk=1, DamageMultiplier=6.5, MinMeleeDmg=104, MaxMeleeDmg=138, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=252, RangedAttackPower=26, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=10268;

-- Bannok Grimaxe
UPDATE creature_template SET DamageMultiplier=1.5, MinMeleeDmg=102, MaxMeleeDmg=135, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=248, RangedAttackPower=25, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=9596;

-- Crystal Fang
-- Already done

-- Ghok Bashguud
UPDATE creature_template SET DamageMultiplier=3.9, MinMeleeDmg=102, MaxMeleeDmg=135, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=248, RangedAttackPower=25, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=9718;

-- Halycon
UPDATE creature_template SET DamageMultiplier=3.4, MinMeleeDmg=107, MaxMeleeDmg=142, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=248, RangedAttackPower=25, MeleeBaseAttackTime=2100, RangedBaseAttackTime=2100 WHERE Entry=10220;

-- Highlord Omokk
UPDATE creature_template SET SpeedWalk=1, DamageMultiplier=8.0, MinMeleeDmg=102, MaxMeleeDmg=135, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=248, RangedAttackPower=25, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=9196;

-- Mor Grayhoof
UPDATE creature_template SET MinLevel=60, SpeedWalk=1, HealthMultiplier=19, PowerMultiplier=15, ArmorMultiplier=1, DamageMultiplier=8.4, MinMeleeDmg=93, MaxMeleeDmg=128, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=238, RangedAttackPower=24, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=16080;

-- Mother Smolderweb
-- Already done

-- Overlord Wyrmthalak
UPDATE creature_template SET SpeedWalk=1, DamageMultiplier=7.0, MinMeleeDmg=104, MaxMeleeDmg=138, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=252, RangedAttackPower=26, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=9568;

-- Quartermaster Zigris
UPDATE creature_template SET SpeedWalk=1, DamageMultiplier=5.0, MinMeleeDmg=102, MaxMeleeDmg=135, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=248, RangedAttackPower=25, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=9736;

-- Shadow Hunter Vosh'gajin
UPDATE creature_template SET SpeedWalk=1, DamageMultiplier=5.2, MinMeleeDmg=93, MaxMeleeDmg=123, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=228, RangedAttackPower=23, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=9236;

-- Spirestone Battle Lord
-- Already done

-- Spirestone Butcher
-- Already done

-- Spirestone Lord Magus
-- Already done

-- Urok Doomhowl
UPDATE creature_template SET SpeedWalk=1, DamageMultiplier=8.0, MinMeleeDmg=97, MaxMeleeDmg=128, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=238, RangedAttackPower=24, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=10584;

-- Urok Enforcer
UPDATE creature_template SET SpeedWalk=1, DamageMultiplier=5.0, MinMeleeDmg=92, MaxMeleeDmg=125, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=228, RangedAttackPower=23, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=10601;

-- Urok Ogre Magus
UPDATE creature_template SET SpeedWalk=1, DamageMultiplier=5.0, MinMeleeDmg=86, MaxMeleeDmg=116, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=214, RangedAttackPower=21, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=10602;

-- War Master Voone
UPDATE creature_template SET MinLevel=58, MaxLevel=58, SpeedWalk=1, HealthMultiplier=10, PowerMultiplier=1, ArmorMultiplier=1, DamageMultiplier=10.0, MinMeleeDmg=75, MaxMeleeDmg=99, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=242, RangedAttackPower=25, MeleeBaseAttackTime=1500, RangedBaseAttackTime=1500 WHERE Entry=9237;

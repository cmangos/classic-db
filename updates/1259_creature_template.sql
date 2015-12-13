-- Fixed level, health, mana and damage stats of the creatures (trash,
-- and bosses) in Scholomance. They are now similar to what they
-- were back in Classic.
-- Several sources were used with cross-checking: Bestiary, WoW Dungeon
-- Companion, various web archives (wowwiki, allakhazam...)


-- ---------------------
-- Trash mobs
-- ---------------------

-- Dark Shade
UPDATE creature_template SET MinLevelHealth=8613, MaxLevelHealth=8883, HealthMultiplier=3, ArmorMultiplier=1, DamageMultiplier=1.8, MinMeleeDmg=100, MaxMeleeDmg=135, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=248, RangedAttackPower=25, MeleeBaseAttackTime=2000 WHERE Entry=11284;
-- Diseased Ghoul
UPDATE creature_template SET DamageMultiplier=3.9, MinMeleeDmg=70, MaxMeleeDmg=95, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=248, RangedAttackPower=25, MeleeBaseAttackTime=1400 WHERE Entry=10495;
-- Necrofiend
UPDATE creature_template SET DamageMultiplier=1.0, MinMeleeDmg=100, MaxMeleeDmg=138, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=252, RangedAttackPower=26, MeleeBaseAttackTime=2000 WHERE Entry=11551;
-- Plagued Hatchling
UPDATE creature_template SET MinLevelHealth=3758, MaxLevelHealth=3997, HealthMultiplier=1.35, ArmorMultiplier=1, MinLevelMana=0, MaxLevelMana=0, DamageMultiplier=1.0, MinMeleeDmg=98, MaxMeleeDmg=135, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=248, RangedAttackPower=25, MeleeBaseAttackTime=2000 WHERE Entry=10678;
-- Ragged Ghoul
UPDATE creature_template SET MaxLevel=59, ArmorMultiplier=1, DamageMultiplier=3.9, MinMeleeDmg=100, MaxMeleeDmg=135, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=248, RangedAttackPower=25, MeleeBaseAttackTime=2000 WHERE Entry=10497;
-- Reanimated Corpse
UPDATE creature_template SET DamageMultiplier=1.0, MinMeleeDmg=100, MaxMeleeDmg=135, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=248, RangedAttackPower=25, MeleeBaseAttackTime=2000 WHERE Entry=10481;

-- Risen Aberration
UPDATE creature_template SET DamageMultiplier=2.5, MinMeleeDmg=98, MaxMeleeDmg=132, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=242, RangedAttackPower=25, MeleeBaseAttackTime=2000 WHERE Entry=10485;
-- Risen Bonewarder
UPDATE creature_template SET DamageMultiplier=3.9, MinMeleeDmg=93, MaxMeleeDmg=125, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=234, RangedAttackPower=23, MeleeBaseAttackTime=2000 WHERE Entry=10491;
-- Risen Construct
UPDATE creature_template SET DamageMultiplier=7.5, MinMeleeDmg=100, MaxMeleeDmg=140, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=258, RangedAttackPower=28, MeleeBaseAttackTime=2000 WHERE Entry=10488;
-- Risen Guard
UPDATE creature_template SET DamageMultiplier=3.8, MinMeleeDmg=98, MaxMeleeDmg=135, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=248, RangedAttackPower=25, MeleeBaseAttackTime=2000 WHERE Entry=10489;
-- Risen Guardian
UPDATE creature_template SET UnitClass=2, HealthMultiplier=0.3, ArmorMultiplier=1, DamageMultiplier=0.33, MinMeleeDmg=102, MaxMeleeDmg=140, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=258, RangedAttackPower=28, MeleeBaseAttackTime=2000 WHERE Entry=11598;
-- Risen Lackey
UPDATE creature_template SET MinLevelHealth=261, MaxLevelHealth=270, HealthMultiplier=0.1, ArmorMultiplier=1, DamageMultiplier=1.0, MinMeleeDmg=94, MaxMeleeDmg=127, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=234, RangedAttackPower=23, MeleeBaseAttackTime=2000 WHERE Entry=10482;
-- Risen Protector
UPDATE creature_template SET DamageMultiplier=3.9, MinMeleeDmg=93, MaxMeleeDmg=128, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=238, RangedAttackPower=24, MeleeBaseAttackTime=2000 WHERE Entry=10487;
-- Risen Warrior
UPDATE creature_template SET DamageMultiplier=6, MinMeleeDmg=122, MaxMeleeDmg=168, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=258, RangedAttackPower=28, MeleeBaseAttackTime=2400 WHERE Entry=10486;

-- Scholomance Adept
UPDATE creature_template SET DamageMultiplier=3.9, MinMeleeDmg=93, MaxMeleeDmg=125, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=234, RangedAttackPower=23, MeleeBaseAttackTime=2000 WHERE Entry=10469;
-- Scholomance Neophyte
UPDATE creature_template SET DamageMultiplier=3.8, MinMeleeDmg=69, MaxMeleeDmg=98, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=107, RangedAttackPower=24, MeleeBaseAttackTime=2000 WHERE Entry=10470;
-- Scholomance Acolyte
UPDATE creature_template SET DamageMultiplier=3.8, MinMeleeDmg=91, MaxMeleeDmg=123, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=228, RangedAttackPower=23, MeleeBaseAttackTime=2000 WHERE Entry=10471;
-- Scholomance Occultist
UPDATE creature_template SET DamageMultiplier=3.9, MinMeleeDmg=93, MaxMeleeDmg=125, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=234, RangedAttackPower=23, MeleeBaseAttackTime=2000 WHERE Entry=10472;
-- Scholomance Student
UPDATE creature_template SET DamageMultiplier=3.6, MinMeleeDmg=100, MaxMeleeDmg=135, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=248, RangedAttackPower=25, MeleeBaseAttackTime=2000 WHERE Entry=10475;
-- Scholomance Necrolyte
UPDATE creature_template SET DamageMultiplier=3.8, MinMeleeDmg=91, MaxMeleeDmg=123, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=228, RangedAttackPower=23, MeleeBaseAttackTime=2000 WHERE Entry=10476;
-- Scholomance Necromancer
UPDATE creature_template SET DamageMultiplier=3.9, MinMeleeDmg=93, MaxMeleeDmg=125, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=234, RangedAttackPower=23, MeleeBaseAttackTime=2000 WHERE Entry=10477;
-- Scholomance Handler
UPDATE creature_template SET DamageMultiplier=4.0, MinMeleeDmg=95, MaxMeleeDmg=128, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=238, RangedAttackPower=24, MeleeBaseAttackTime=2000 WHERE Entry=11257;
-- Scholomance Dark Summoner
UPDATE creature_template SET DamageMultiplier=3.9, MinMeleeDmg=93, MaxMeleeDmg=125, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=234, RangedAttackPower=23, MeleeBaseAttackTime=2000 WHERE Entry=11582;

-- Skulking Corpse
UPDATE creature_template SET MinLevel=58, HealthMultiplier=0.5, DamageMultiplier=0.75, MinMeleeDmg=102, MaxMeleeDmg=135, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=248, RangedAttackPower=25, MeleeBaseAttackTime=2000 WHERE Entry=10479;
-- Spectral Projection
UPDATE creature_template SET MinLevelHealth=2871, ArmorMultiplier=1, MinMeleeDmg=100, MaxMeleeDmg=138, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=252, RangedAttackPower=26, MeleeBaseAttackTime=2000 WHERE Entry=11263;
-- Spectral Researcher
UPDATE creature_template SET DamageMultiplier=3.9, MinMeleeDmg=93, MaxMeleeDmg=128, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=238, RangedAttackPower=24, MeleeBaseAttackTime=2000 WHERE Entry=10499;
-- Spectral Teacher
UPDATE creature_template SET DamageMultiplier=3.9, MinMeleeDmg=93, MaxMeleeDmg=130, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=244, RangedAttackPower=24, MeleeBaseAttackTime=2000 WHERE Entry=10500;
-- Spectral Tutor
UPDATE creature_template SET DamageMultiplier=4, MinMeleeDmg=93, MaxMeleeDmg=128, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=238, RangedAttackPower=24, MeleeBaseAttackTime=2000 WHERE Entry=10498;

-- Splintered Skeleton
UPDATE creature_template SET DamageMultiplier=4, MinMeleeDmg=102, MaxMeleeDmg=138, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=252, RangedAttackPower=26, MeleeBaseAttackTime=2000 WHERE Entry=10478;

-- Unstable Corpse
UPDATE creature_template SET HealthMultiplier=1.35, ArmorMultiplier=1, DamageMultiplier=1, MinMeleeDmg=100, MaxMeleeDmg=135, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=248, RangedAttackPower=25, MeleeBaseAttackTime=2000 WHERE Entry=10480;


-- ---------------------
-- Bosses
-- ---------------------

-- Blood Steward of Kirtonos
UPDATE creature_template SET DamageMultiplier=4.5, MinMeleeDmg=99, MaxMeleeDmg=130, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=244, RangedAttackPower=25, MeleeBaseAttackTime=2000 WHERE Entry=14861;
-- Darkmaster Gandling
UPDATE creature_template SET UnitClass=2, MinLevel=61, HealthMultiplier=20, PowerMultiplier=3, ArmorMultiplier=1, DamageMultiplier=2.5, MinMeleeDmg=99, MaxMeleeDmg=130, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=244, RangedAttackPower=25, MeleeBaseAttackTime=2000 WHERE Entry=1853;
-- Doctor Theolen Krastinov
UPDATE creature_template SET DamageMultiplier=11, MinMeleeDmg=78, MaxMeleeDmg=103, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=252, RangedAttackPower=26, MeleeBaseAttackTime=1500 WHERE Entry=11261;
-- Instructor Malicia
UPDATE creature_template SET DamageMultiplier=5, MinMeleeDmg=97, MaxMeleeDmg=128, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=238, RangedAttackPower=24, MeleeBaseAttackTime=2000 WHERE Entry=10505;
-- Jandice Barov
UPDATE creature_template SET DamageMultiplier=5, MinMeleeDmg=99, MaxMeleeDmg=130, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=255, RangedAttackPower=25, MeleeBaseAttackTime=2000 WHERE Entry=10503;
-- Kirtonos the Herald
UPDATE creature_template SET DamageMultiplier=12, MinMeleeDmg=97, MaxMeleeDmg=128, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=238, RangedAttackPower=24, MeleeBaseAttackTime=2000 WHERE Entry=10506;
-- Lady Illucia Barov
UPDATE creature_template SET DamageMultiplier=6.5, MinMeleeDmg=97, MaxMeleeDmg=128, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=238, RangedAttackPower=24, MeleeBaseAttackTime=2000 WHERE Entry=10502;
-- Lord Alexei Barov
UPDATE creature_template SET MinLevel=60, HealthMultiplier=9, ArmorMultiplier=1, DamageMultiplier=6.0, MinMeleeDmg=104, MaxMeleeDmg=138, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=252, RangedAttackPower=26, MeleeBaseAttackTime=2000 WHERE Entry=10504;
-- Lorekeeper Polkelt
UPDATE creature_template SET DamageMultiplier=4, MinMeleeDmg=104, MaxMeleeDmg=138, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=252, RangedAttackPower=26, MeleeBaseAttackTime=2000 WHERE Entry=10901;
-- Marduk Blackpool
UPDATE creature_template SET DamageMultiplier=6.25, MinMeleeDmg=93, MaxMeleeDmg=123, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=228, RangedAttackPower=23, MeleeBaseAttackTime=2000 WHERE Entry=10433;
-- Ras Frostwhisper
UPDATE creature_template SET MinLevel=62, HealthMultiplier=13, PowerMultiplier=6, ArmorMultiplier=1, DamageMultiplier=4.0, MinMeleeDmg=100, MaxMeleeDmg=133, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=246, RangedAttackPower=26, MeleeBaseAttackTime=2000 WHERE Entry=10508;
-- Rattlegore
UPDATE creature_template SET DamageMultiplier=7, MinMeleeDmg=99, MaxMeleeDmg=130, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=244, RangedAttackPower=25, MeleeBaseAttackTime=2000 WHERE Entry=11622;
-- The Ravenian
UPDATE creature_template SET DamageMultiplier=7, MinMeleeDmg=104, MaxMeleeDmg=138, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=252, RangedAttackPower=26, MeleeBaseAttackTime=2000 WHERE Entry=10507;
-- Vectus
UPDATE creature_template SET DamageMultiplier=4.5, MinMeleeDmg=97, MaxMeleeDmg=128, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=238, RangedAttackPower=24, MeleeBaseAttackTime=2000 WHERE Entry=10432;

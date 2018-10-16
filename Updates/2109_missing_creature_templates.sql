-- Add missing creature template for NPCs 4098 (Galak Pack Runner), 4476 (Screaming Haunt) & 5348 (Dreamwatcher Forktongue)
-- These were present in patch 1.12 but not spawned in game.
-- Sources: WotLK DB
DELETE FROM creature_template WHERE Entry IN (4098, 4476, 5348);
INSERT INTO creature_template (Entry, Name, ModelId1, MinLevel, MaxLevel, UnitClass, SpeedWalk, SpeedRun, HealthMultiplier, MinLevelHealth, MaxLevelHealth, MinLevelMana, MaxLevelMana, FactionHorde, FactionAlliance, CreatureType, MinLootGold, MaxLootGold, MechanicImmuneMask) VALUES
(4098, 'Galak Pack Runner', 9413, 25, 26, 2, (2.5/2.5), (8/7), 0.8, 488, 521, 655, 693, 131, 131, 6, 10, 49, 0),
(4476, 'Screaming Haunt', 915, 54, 55, 1, (2.5/2.5), (8/7), 1.3, 3292, 3398, 0, 0, 67, 67, 6, 147, 737, 8388624),
(5348, 'Dreamwatcher Forktongue', 625, 62, 62, 1, (2.5/2.5), (8/7), 1.35, 4370, 4370, 0, 0, 35, 35, 2, 0, 0, 0);

-- Proper damage values but possibly wrong multiplier as NPC were removed or never released in Classic
-- Galak Pack Runner
UPDATE creature_template SET DamageMultiplier=1, MinMeleeDmg=33, MaxMeleeDmg=46, MinRangedDmg=23, MaxRangedDmg=34, MeleeAttackPower=84, RangedAttackPower=6, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=4098;
-- Screaming Haunt
UPDATE creature_template SET DamageMultiplier=1, MinMeleeDmg=92, MaxMeleeDmg=125, MinRangedDmg=65, MaxRangedDmg=95, MeleeAttackPower=228, RangedAttackPower=23, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=4476;
-- Dreamwatcher Forktongue
UPDATE creature_template SET DamageMultiplier=1, MinMeleeDmg=108, MaxMeleeDmg=143, MinRangedDmg=75, MaxRangedDmg=110, MeleeAttackPower=262, RangedAttackPower=30, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=5348;

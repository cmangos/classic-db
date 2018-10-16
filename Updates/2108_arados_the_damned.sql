-- Add missing creature template for NPC 7073 (Arados the Damned)
-- This is for exhaustivity purpose as the NPC was removed in patch 1.10
-- Sources: SDB and WotLK DB
DELETE FROM creature_template WHERE Entry=7073;
INSERT INTO creature_template (Entry, Name, ModelId1, MinLevel, MaxLevel, UnitClass, SpeedWalk, SpeedRun, MinLevelHealth, MaxLevelHealth, FactionHorde, FactionAlliance, CreatureType, MinLootGold, MaxLootGold, MechanicImmuneMask) VALUES
(7073, 'Arados the Damned', 11369, 35, 35, 1, (2.5/2.5), (15/7), 1220, 1220, 14, 14, 6, 29, 145, 8388624);
-- Possibly wrong multiplier as NPC was removed
UPDATE creature_template SET DamageMultiplier=1, MinMeleeDmg=49, MaxMeleeDmg=64, MinRangedDmg=33, MaxRangedDmg=49, MeleeAttackPower=118, RangedAttackPower=11, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=7073;

-- Fix DB errors and small improvements
UPDATE pool_template SET entry=1251 AND description='Snagglespear (5786)' WHERE entry=272;
UPDATE pool_creature SET pool_entry=1251 WHERE pool_entry=272;

-- Add missing template for NPC 10820 (it never hit retail prior to 4.0.3)
DELETE FROM creature_template WHERE Entry=10820;
INSERT INTO creature_template (Entry, Name, SubName, MinLevel, MaxLevel, ModelId1, ModelId2, ModelId3, ModelId4, Faction, Scale, Family, CreatureType, InhabitType, RegenerateStats, RacialLeader, NpcFlags, UnitFlags, DynamicFlags, ExtraFlags, CreatureTypeFlags, SpeedWalk, SpeedRun, Detection, CallForHelp, Pursuit, Leash, Timeout, UnitClass, `Rank`, HealthMultiplier, PowerMultiplier, DamageMultiplier, DamageVariance, ArmorMultiplier, ExperienceMultiplier, MinLevelHealth, MaxLevelHealth, MinLevelMana, MaxLevelMana, MinMeleeDmg, MaxMeleeDmg, MinRangedDmg, MaxRangedDmg, Armor, MeleeAttackPower, RangedAttackPower, MeleeBaseAttackTime, RangedBaseAttackTime, DamageSchool, MinLootGold, MaxLootGold, LootId, PickpocketLootId, SkinningLootId, KillCredit1, KillCredit2, MechanicImmuneMask, SchoolImmuneMask, ResistanceHoly, ResistanceFire, ResistanceNature, ResistanceFrost, ResistanceShadow, ResistanceArcane, PetSpellDataId, MovementType) VALUES
(10820, 'Duke Ragereaver', '', 45, 45, 6380, 0, 0, 0, 16, 1, 0, 6, 3, 3, 0, 0, 0, 0, 0, 0, 1.2, 1.14286, 20, 0, 0, 0, 0, 2, 4, 1.5, 1, 1, 1, 1, 1, 2217, 2217, 1534, 1534, 2, 2, 0, 0, 15, 1, 0, 2000, 2000, 0, 0, 0, 10820, 0, 0, 0, 0, 8388624, 0, 0, 0, 0, 0, 0, 0, 0, 0);

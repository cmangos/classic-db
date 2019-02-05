-- Add PvP event for capturing Plaguewood Tower in Eastern Plaguelands
-- This closes https://github.com/cmangos/issues/issues/1851 thanks @Warlockbugs for his help.

-- Spawn William Kielar at the tower entrance
DELETE FROM dbscripts_on_event WHERE id IN (10691, 10692, 10700, 10701);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10700, 0, 10, 17209, 0, 0, 0, 8, 0, 0, 0, 0, 2987.5, -3049.11, 120.126, 5.75959, 'Horde Plaguewood Tower progress event - summon William Kielar'),
(10701, 0, 10, 17209, 0, 0, 0, 8, 0, 0, 0, 0, 2987.5, -3049.11, 120.126, 5.75959, 'Alliance Plaguewood Tower progress event - summon William Kielar');

-- Add missing template for the spectral mount
-- Data taken from TBC-DB
DELETE FROM creature_template WHERE Entry=17660;
INSERT INTO creature_template (Entry, Name, SubName, MinLevel, MaxLevel, ModelId1, ModelId2, ModelId3, ModelId4, Faction, Scale, Family, CreatureType, InhabitType, RegenerateStats, RacialLeader, NpcFlags, UnitFlags, DynamicFlags, ExtraFlags, CreatureTypeFlags, SpeedWalk, SpeedRun, Detection, CallForHelp, Pursuit, Leash, Timeout, UnitClass, `Rank`, HealthMultiplier, PowerMultiplier, DamageMultiplier, DamageVariance, ArmorMultiplier, ExperienceMultiplier, MinLevelHealth, MaxLevelHealth, MinLevelMana, MaxLevelMana, MinMeleeDmg, MaxMeleeDmg, MinRangedDmg, MaxRangedDmg, Armor, MeleeAttackPower, RangedAttackPower, MeleeBaseAttackTime, RangedBaseAttackTime, DamageSchool, MinLootGold, MaxLootGold, LootId, PickpocketLootId, SkinningLootId, KillCredit1, KillCredit2, MechanicImmuneMask, SchoolImmuneMask, ResistanceHoly, ResistanceFire, ResistanceNature, ResistanceFrost, ResistanceShadow, ResistanceArcane, PetSpellDataId, MovementType, TrainerType, TrainerSpell, TrainerClass, TrainerRace, TrainerTemplateId, VendorTemplateId, EquipmentTemplateId, GossipMenuId, AIName, ScriptName) VALUES
(17660, 'Skeletal Gryphon', NULL, 60, 60, 17328, 0, 0, 0, 35, 1, 0, 6, 7, 3, 0, 0, 256, 0, 0, 0, 3.2, 4.28571, 20, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 6986, 6986, 0, 0, 260, 334, 0, 0, 6792, 137, 100, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 8388624, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '');

-- Fix movement and aura for NPC 17209 (William Kielar)
UPDATE creature_template SET MovementType=0 WHERE Entry=17209;
UPDATE creature_template_addon SET auras='' WHERE Entry=17209;

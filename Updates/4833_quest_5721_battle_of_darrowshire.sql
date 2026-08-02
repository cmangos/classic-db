-- ============================================================================
-- Battle of Darrowshire — Quest 5721
-- SQL for CMaNGOS classicmangos database
-- ============================================================================
-- v2: all event dialogue now uses RETAIL broadcast_text IDs (verified present
-- in the base DB). The 28 custom rows (2000001-2000028) are dropped; only the
-- four Pamela reunion lines (7399-7402, empty in the base DB) are added with
-- the authentic client texts.
-- ============================================================================

-- 1. Event Manager NPC (invisible controller)
-- ============================================================================
INSERT INTO `creature_template` (
    `Entry`, `Name`, `SubName`, `MinLevel`, `MaxLevel`,
    `DisplayId1`, `DisplayId2`, `DisplayId3`, `DisplayId4`,
    `DisplayIdProbability1`, `DisplayIdProbability2`, `DisplayIdProbability3`, `DisplayIdProbability4`,
    `Faction`, `Scale`, `Family`, `CreatureType`, `InhabitType`, `RegenerateStats`,
    `RacialLeader`, `NpcFlags`, `UnitFlags`, `DynamicFlags`, `ExtraFlags`,
    `CreatureTypeFlags`, `StaticFlags1`, `StaticFlags2`, `StaticFlags3`, `StaticFlags4`,
    `SpeedWalk`, `SpeedRun`, `Detection`, `CallForHelp`, `Pursuit`, `Leash`, `Timeout`,
    `UnitClass`, `Rank`,
    `HealthMultiplier`, `PowerMultiplier`, `DamageMultiplier`, `DamageVariance`, `ArmorMultiplier`,
    `ExperienceMultiplier`,
    `StrengthMultiplier`, `AgilityMultiplier`, `StaminaMultiplier`, `IntellectMultiplier`, `SpiritMultiplier`,
    `MinLevelHealth`, `MaxLevelHealth`, `MinLevelMana`, `MaxLevelMana`,
    `MinMeleeDmg`, `MaxMeleeDmg`, `MinRangedDmg`, `MaxRangedDmg`,
    `Armor`, `MeleeAttackPower`, `RangedAttackPower`,
    `MeleeBaseAttackTime`, `RangedBaseAttackTime`, `DamageSchool`,
    `MinLootGold`, `MaxLootGold`, `LootId`, `PickpocketLootId`, `SkinningLootId`,
    `KillCredit1`, `KillCredit2`, `MechanicImmuneMask`, `SchoolImmuneMask`,
    `ResistanceHoly`, `ResistanceFire`, `ResistanceNature`, `ResistanceFrost`, `ResistanceShadow`, `ResistanceArcane`,
    `PetSpellDataId`, `MovementType`, `TrainerType`, `TrainerSpell`, `TrainerClass`, `TrainerRace`, `TrainerTemplateId`,
    `VendorTemplateId`, `GossipMenuId`, `InteractionPauseTimer`, `CorpseDecay`,
    `SpellList`, `CharmedSpellList`,
    `StringId1`, `StringId2`, `EquipmentTemplateId`, `Civilian`,
    `AIName`, `ScriptName`
) VALUES (
    18200, 'Darrowshire Event Manager', '', 1, 1,
    11686, 0, 0, 0,
    100, 0, 0, 0,
    35, 1, 0, 10, 3, 0,
    0, 0, 33555200, 0, 0,
    0, 0, 0, 0, 0,
    1, 1.14286, 18, 0, 0, 0, 0,
    1, 0,
    1, 1, 1, 1, 1,
    0.5,
    1, 1, 1, 1, 1,
    1, 1, 0, 0,
    0, 0, 0, 0,
    0, 0, 0,
    2000, 2000, 0,
    0, 0, 0, 0, 0,
    0, 0, 0, 0,
    0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0,
    0, 0, -1, 0,
    0, 0,
    0, 0, 0, 0,
    '', 'npc_darrowshire_event_manager'
);

-- 2. GO trigger ScriptName
-- ============================================================================
UPDATE `gameobject_template` SET `ScriptName` = 'go_darrowshire_trigger' WHERE `entry` = 177526;

-- 3. Joseph Redpath ScriptName (GossipMenuId 3861 is already set in the base DB)
-- ============================================================================
UPDATE `creature_template` SET `ScriptName` = 'npc_joseph_redpath' WHERE `Entry` = 10936;

-- 4. Pamela reunion dialogue — authentic client texts for the rows that are
--    empty in the base DB (DELETE-first for idempotency, repo convention)
-- ============================================================================
DELETE FROM `broadcast_text` WHERE `Id` IN (7399, 7400, 7401, 7402);
INSERT INTO `broadcast_text` (`Id`, `Text`, `Text1`, `ChatTypeID`, `LanguageID`, `VerifiedBuild`) VALUES
(7399, 'Daddy!', NULL, 0, 0, 0),
(7400, 'Daddy! You''re back!', NULL, 0, 0, 0),
(7401, 'Let''s go play! No, tell me a story, Daddy! No... let''s go pick flowers! And play tea time! I found my dollie, did I tell you?', NULL, 0, 0, 0),
(7402, 'I missed you so much, Daddy!', NULL, 0, 0, 0);

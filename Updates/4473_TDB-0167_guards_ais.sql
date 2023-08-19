-- Convert GuardAI to SpellList using Ranged Mode
-- Issue: Ranged Mode is not activated by EAI properly atm.
-- https://github.com/cmangos/mangos-tbc/commit/d6fb06cc63d4bfbc8eb51f61c4a230cd26662240

-- SELECT * FROM creature_template where entry IN (3502,4624,9460,11190,16096,20484,20485,22494,23636,23721,15184);
-- SELECT * FROM creature_equip_template where entry IN (3502,4624,9460,11190,16096,20484,20485,22494,23636,23721,15184);
-- SELECT * FROM creature_template_addon where entry IN (3502,4624,9460,11190,16096,20484,20485,22494,23636,23721,15184);
-- SELECT * FROM creature_template_spells where entry IN (3502,4624,9460,11190,16096,20484,20485,22494,23636,23721,15184);


-- 3502
-- 4624
-- 9460
-- 11190
-- 15184
-- 16096


/*
enum GuardAI
    // Goblin Cities & Events
    RATCHET_BRUISER                 = 3502,
    BOOTY_BAY_BRUISER               = 4624,
    GADGETZAN_BRUISER               = 9460,
    EVERLOOK_BRUISER                = 11190,
    STEAMWHEEDLE_BRUISER            = 16096,
    AREA_52_BIG_BRUISER             = 20484,
    AREA_52_BRUISER                 = 20485,
    COSMOWRENCH_BRUISER             = 22494,
    MUDSPROCKET_BRUISER             = 23636,
    CONCERT_BRUISER                 = 23721,

    SPELL_SHOOT                     = 23337, // not all shoot, currently unused
    SPELL_NET                       = 12024,

    // Cenarion Hold
    CENARION_HOLD_INFANTRY          = 15184,
    SPELL_INCAPACITATING_SHOUT      = 18328,
*/


-- Ratchet Bruiser 3502
-- https://www.wowhead.com/wotlk/npc=3502/ratchet-bruiser#abilities
UPDATE `creature_template` SET `SpellList` = 350201 WHERE `entry` = 3502;
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 3502;

-- 3502	0	38661	0	0	0	0	0	0	0	0	0 - wotlk+?
DELETE FROM `creature_template_spells` WHERE `entry` = 3502;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 350201;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(350201, 'The Barrens - Ratchet Bruiser (3502)', 0, 75);

DELETE FROM `creature_spell_list` WHERE `Id` = 350201;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(350201, 1, 12024, 0, -1, 1, 0, 100, 0, 0, 20000, 10000, 35000, 'Ratchet Bruiser - Net on Current'),
(350201, 2, 23337, 2, -1, 1, 0, 100, 0, 0, 0, 2000, 4000, 'Ratchet Bruiser - Shoot on Current');

-- ====================================================================================================

-- Booty Bay Bruiser 4624
-- https://www.wowhead.com/wotlk/npc=4624/booty-bay-bruiser#abilities
UPDATE `creature_template` SET `SpellList` = 462401 WHERE `entry` = 4624;
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 4624;

-- 4624	0	12024	0	0	0	0	0	0	0	0	0
DELETE FROM `creature_template_spells` WHERE `entry` = 4624;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 462401;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(462401, 'Stranglethorn Vale - Booty Bay Bruiser (4624)', 0, 75);

DELETE FROM `creature_spell_list` WHERE `Id` = 462401;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(462401, 1, 12024, 0, -1, 1, 0, 100, 0, 0, 20000, 10000, 35000, 'Booty Bay Bruiser - Net on Current'),
(462401, 2, 23337, 2, -1, 1, 0, 100, 0, 0, 0, 2000, 4000, 'Booty Bay Bruiser - Shoot on Current');

-- ====================================================================================================

-- Gadgetzan Bruiser 9460
-- https://www.wowhead.com/wotlk/npc=9460/gadgetzan-bruiser#abilities
UPDATE `creature_template` SET `SpellList` = 946001 WHERE `entry` = 9460;
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 9460;

-- 9460	0	38661	0	0	0	0	0	0	0	0	0 - wotlk+?
DELETE FROM `creature_template_spells` WHERE `entry` = 9460;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 946001;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(946001, 'Tanaris - Gadgetzan Bruiser (9460)', 0, 75);

DELETE FROM `creature_spell_list` WHERE `Id` = 946001;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(946001, 1, 12024, 0, -1, 1, 0, 100, 0, 0, 20000, 10000, 35000, 'Gadgetzan Bruiser - Net on Current'),
(946001, 2, 23337, 2, -1, 1, 0, 100, 0, 0, 0, 2000, 4000, 'Gadgetzan Bruiser - Shoot on Current');

-- ====================================================================================================

-- Everlook Bruiser 11190
-- https://www.wowhead.com/wotlk/npc=11190/everlook-bruiser#abilities
UPDATE `creature_template` SET `SpellList` = 1119001 WHERE `entry` = 11190;
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 11190;

-- 11190	0	38661	0	0	0	0	0	0	0	0	0 - wotlk+?
DELETE FROM `creature_template_spells` WHERE `entry` = 11190;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 1119001;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1119001, 'Winterspring - Everlook Bruiser (9460)', 0, 75);

DELETE FROM `creature_spell_list` WHERE `Id` = 1119001;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1119001, 1, 12024, 0, -1, 1, 0, 100, 0, 0, 20000, 10000, 35000, 'Everlook Bruiser - Net on Current'),
(1119001, 2, 23337, 2, -1, 1, 0, 100, 0, 0, 0, 2000, 4000, 'Everlook Bruiser - Shoot on Current');

-- ====================================================================================================

-- Steamwheedle Bruiser 16096
-- https://www.wowhead.com/wotlk/npc=16096/steamwheedle-bruiser#abilities
UPDATE `creature_template` SET `SpellList` = 1609601, `UnitFlags` = 32768 WHERE `entry` = 16096;
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 16096;

-- none
DELETE FROM `creature_template_spells` WHERE `entry` = 16096;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 1609601;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1609601, 'Steamwheedle Bruiser (16096)', 0, 75);

DELETE FROM `creature_spell_list` WHERE `Id` = 1609601;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1609601, 1, 12024, 0, -1, 1, 0, 100, 0, 0, 20000, 10000, 35000, 'Steamwheedle Bruiser - Net on Current'),
(1609601, 2, 23337, 2, -1, 1, 0, 100, 0, 0, 0, 2000, 4000, 'Steamwheedle Bruiser - Shoot on Current');

-- ====================================================================================================

-- Cenarion Hold Infantry 15184
-- https://www.wowhead.com/wotlk/npc=15184/cenarion-hold-infantry#abilities
UPDATE `creature_template` SET `SpellList` = 1518401 WHERE `entry` = 15184;

-- 15184	0	30223	27620	0	0	0	0	0	0	0	0
DELETE FROM `creature_template_spells` WHERE `entry` = 15184;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 1518401;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1518401, 'Silithus - Cenarion Hold Infantry (15184)', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 1518401; -- + s.26229
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1518401, 1, 19643, 0, -1,	1, 0, 100, 3, 0, 20000, 10000, 20000, 'Cenarion Hold Infantry - Mortal Strike on Current'),
(1518401, 2, 15618, 0, 1221,1, 0, 100, 4, 5000, 20000, 15000, 20000, 'Cenarion Hold Infantry - Snap Kick on Player Casting'),
(1518401, 3, 18328, 0, -1,	0, 0, 100, 2, 5000, 20000, 60000, 90000, 'Cenarion Hold Infantry - Incapacitating Shout');


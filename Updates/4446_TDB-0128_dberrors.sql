-- Fix some DB errors coming from new core changes to creature_spell_list
-- mostly missing creature_spell_list_entry

DELETE FROM creature_spell_list_entry WHERE Id IN (153501, 1451702, 1468201, 1468601, 1469701, 1574001, 1574101, 1574201, 1614101, 1629801, 1629901, 1643801);
-- LoadCreatureSpellLists: Invalid creature_spell_list 153501 list does not exist. Skipping.
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(153501, 'Tirisfal Glades - Scarlet Warrior', 0, 0),
-- LoadCreatureSpellLists: Invalid creature_spell_list 1451702 list does not exist. Skipping.
(1451702, 'High Priestess Jeklik - Phase 2', 0, 0),
-- LoadCreatureSpellLists: Invalid creature_spell_list 1468201 list does not exist. Skipping.
(1468201, 'Shadowfang Keep - Sever', 0, 0),
-- LoadCreatureSpellLists: Invalid creature_spell_list 1468601 list does not exist. Skipping.
(1468601, 'Razorfen Downs - Lady Falther\'ess', 0, 0),
-- LoadCreatureSpellLists: Invalid creature_spell_list 1469701 list does not exist. Skipping.
(1469701, 'Scourge Invasion - Lumbering Horror', 0, 0),
-- LoadCreatureSpellLists: Invalid creature_spell_list 1574001 list does not exist. Skipping.
(1574001, 'Silithus - Colossus of Zora', 0, 0),
-- LoadCreatureSpellLists: Invalid creature_spell_list 1574101 list does not exist. Skipping.
(1574101, 'Silithus - Colossus of Regal', 0, 0),
-- LoadCreatureSpellLists: Invalid creature_spell_list 1574201 list does not exist. Skipping.
(1574201, 'Silithus - Colossus of Ashi', 0, 0),
-- LoadCreatureSpellLists: Invalid creature_spell_list 1614101 list does not exist. Skipping.
(1614101, 'Scourge Invasion - Ghoul Berserker', 0, 0),
-- LoadCreatureSpellLists: Invalid creature_spell_list 1629801 list does not exist. Skipping.
(1629801, 'Scourge Invasion - Spectral Soldier', 0, 0),
-- LoadCreatureSpellLists: Invalid creature_spell_list 1629901 list does not exist. Skipping.
(1629901, 'Scourge Invasion - Skeletal Shocktrooper', 0, 0),
-- LoadCreatureSpellLists: Invalid creature_spell_list 1643801 list does not exist. Skipping.
(1643801, 'Scourge Invasion - Skeletal Trooper', 0, 0);


-- LoadCreatureSpellLists: Invalid creature_spell_list 2135001 list does not exist. Skipping.
-- Fixes error coming from https://github.com/cmangos/tbc-db/commit/fd7d9f05f1e589d8406d493144568c7a7a1a4a69
-- Also rename Lair Brute
-- DELETE FROM creature_spell_list_entry WHERE Id IN (1938901, 2135001);
-- REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
-- (1938901, "Gruuls\'Lair - Lair Brute", 0, 0),
-- (2135001, "Gruuls\'Lair - Gronn Priest", 0, 0);

-- LoadCreatureSpellLists: Invalid creature_spell_list 1641001 list does not exist. Skipping.
-- LoadCreatureSpellLists: Invalid creature_spell_list 1641101 list does not exist. Skipping.
-- Fixes errors coming from https://github.com/cmangos/tbc-db/commit/942758213e17b69a4e29f3f8eab6004421d33771
-- DELETE FROM creature_spell_list_entry WHERE Id = 1641001;
-- REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
-- (1641001, "Karazhan - Spectral Retainer", 0, 0);

-- DELETE FROM creature_spell_list_entry WHERE Id = 1641101;
-- REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
-- (1641101, "Karazhan - Spectral Chef", 0, 0);

-- Delete unused `dbscripts_on_creature_movement` coming from karazhan rework
-- DELETE FROM `dbscripts_on_creature_movement` WHERE id IN (1646801, 1647001);


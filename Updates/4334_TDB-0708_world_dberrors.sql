-- Fix some DB errors

-- dbscripts_on_relay
-- Vanilla: 0 – 9999
-- TBC: 10000 – 19999
-- WoTLK 20000 +

-- no data in creature_spawn_data -> with removing equipment_id i researched the npcs that had data left in this column and added all potential equipsets i could find, but are yet unused for the spawns we have.

-- missing !? 3 : GENERIC - SPAWN FLAG RUN + HOVER exists.
REPLACE INTO `creature_spawn_data_template` (`Entry`, `NpcFlags`, `UnitFlags`, `Faction`, `ModelId`, `EquipmentId`, `CurHealth`, `CurMana`, `SpawnFlags`, `RelayId`, `StringId`, `Name`) VALUES
(2, -1, -1, 0, 0, -1, 0, 0, 2, 0, 0, 'GENERIC - SPAWN FLAG HOVER');

UPDATE creature_spawn_data_template SET Name = 'GENERIC - NpcFlags (1) - UNIT_NPC_FLAG_GOSSIP' WHERE Entry = '4'; -- Table creature_spawn_data_template for entry 4 has empty name
UPDATE creature_spawn_data_template SET Name = 'GENERIC - EquipmentId (0) - No Equipment' WHERE Entry = '5'; -- Table creature_spawn_data_template for entry 5 has empty name
-- https://github.com/cmangos/tbc-db/blob/ec39ea2bb1ed9d1ef95016b162f32aa81e888f43/Updates/0140_quest_the_binding.sql
-- UPDATE creature_spawn_data_template SET Name = 'Quest:The Binding: Summoned Voidwalker - RelayScript' WHERE Entry = '5676'; -- done in EAI
DELETE FROM `dbscripts_on_relay` WHERE id = '5676';
DELETE FROM `creature_spawn_data_template` WHERE entry = '5676'; -- Table creature_spawn_data_template for entry 5676 has empty name

-- UPDATE creature_spawn_data_template SET Name = 'Quest:The Binding: Summoned Felhunter - RelayScript' WHERE Entry = '6268'; -- also moved to EAI to free range
DELETE FROM `dbscripts_on_relay` WHERE id = '6268';
DELETE FROM `creature_spawn_data_template` WHERE entry = '6268'; -- Table creature_spawn_data_template for entry 6268 has empty name

UPDATE creature_spawn_data_template SET Name = 'Quest: The Madness Within: Shen\'dralar Ancient - RelayScript (7461)' WHERE Entry = '7461'; -- Table creature_spawn_data_template for entry 7461 has empty name
UPDATE creature_spawn_data_template SET Name = 'Quest: The Madness Within: Shen\'dralar Ancient - RelayScript (7462)' WHERE Entry = '7462'; -- Table creature_spawn_data_template for entry 7462 has empty name
UPDATE creature_spawn_data_template SET Name = 'Quest: The Madness Within: Shen\'dralar Ancient - RelayScript (7463)' WHERE Entry = '7463'; -- Table creature_spawn_data_template for entry 7463 has empty name
UPDATE creature_spawn_data_template SET Name = 'Quest: The Madness Within: Shen\'dralar Ancient - RelayScript (7464)' WHERE Entry = '7464'; -- Table creature_spawn_data_template for entry 7464 has empty name
UPDATE creature_spawn_data_template SET Name = 'Quest: The Madness Within: Shen\'dralar Ancient - RelayScript (7465)' WHERE Entry = '7465'; -- Table creature_spawn_data_template for entry 7465 has empty name
UPDATE creature_spawn_data_template SET Name = 'Quest: The Madness Within: Shen\'dralar Ancient - RelayScript (7466)' WHERE Entry = '7466'; -- Table creature_spawn_data_template for entry 7466 has empty name
UPDATE creature_spawn_data_template SET Name = 'Quest: The Madness Within: Shen\'dralar Ancient - RelayScript (7467)' WHERE Entry = '7467'; -- Table creature_spawn_data_template for entry 7467 has empty name
UPDATE creature_spawn_data_template SET Name = 'Servant of the Hand (15080) - RelayScript (29)' WHERE Entry = '9998'; -- Table creature_spawn_data_template for entry 9998 has empty name
UPDATE creature_spawn_data_template SET Name = 'Defias Rioter - RelayScript (30510)' WHERE Entry = '9999'; -- later overwritten, fix when update comes from wotlkmangos
UPDATE creature_spawn_data_template SET Name = 'Servant of the Hand (15080) - RelayScript (28)' WHERE Entry = '9999'; -- Table creature_spawn_data_template for entry 9999 has empty name
-- UPDATE creature_spawn_data_template SET Name = 'Dark Iron Antagonist - UnitFlags and Faction' WHERE Entry = '10000';
-- UPDATE creature_spawn_data_template SET Name = 'Mutant War Hound - UnitFlags' WHERE Entry = '10001';
-- Bonechewer Blood Prophet, Bonechewer Shield Disciple, Bonechewer Blade Fury - UnitFlags
-- UPDATE creature_spawn_data_template SET Name = 'BT: Bonechewer NPCs - UnitFlags' WHERE Entry = '10002';
-- UPDATE creature_spawn_data_template SET Name = 'World Invisible Trigger - ModelId (dscripts_on_event 14143)' WHERE Entry = '10003'; -- used on dscripts_on_event id 14143
UPDATE creature_spawn_data_template SET Name = 'Cork Gizelton - RelayScript (1162501)' WHERE Entry = '11625'; -- Table creature_spawn_data_template for entry 11625 has empty name
-- UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19970)' WHERE Entry = '19985';
-- UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19971)' WHERE Entry = '19986';
-- UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19972)' WHERE Entry = '19987';
-- UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19973)' WHERE Entry = '19988';
-- UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19974)' WHERE Entry = '19989';
-- UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19975)' WHERE Entry = '19990';
-- UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19976)' WHERE Entry = '19991';
-- UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19977)' WHERE Entry = '19992';
-- UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19978)' WHERE Entry = '19993';
-- UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19979)' WHERE Entry = '19994';
-- UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19980)' WHERE Entry = '19995';
-- UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19981)' WHERE Entry = '19996';
-- UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19982)' WHERE Entry = '19997';
-- UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19983)' WHERE Entry = '19998';
-- UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19984)' WHERE Entry = '19999';
-- Orgrimmar Peon, Peon Overseer
UPDATE creature_spawn_data_template SET Name = 'Orgrimmar Peon | Peon Overseer - RelayScript (30500)' WHERE Entry = '20033'; -- Table creature_spawn_data_template for entry 20033 has empty name -> GENERIC - Send AI Event 5 (A) to Self

-- Add Generic
DELETE FROM `creature_spawn_data_template` WHERE `entry` = 20034;
INSERT INTO `creature_spawn_data_template` (`Entry`, `NpcFlags`, `UnitFlags`, `Faction`, `ModelId`, `EquipmentId`, `CurHealth`, `CurMana`, `SpawnFlags`, `RelayId`, `Name`) VALUES
(20034, -1, -1, 0, 0, -1, 0, 0, 0, 30501, 'Orgrimmar Peon | Peon Overseer - RelayScript (30501)'); -- Rename to GENERIC - Send AI Event 6 (B) to Self
DELETE FROM `dbscripts_on_relay` WHERE `id` = 30501;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(30501, 1, 0, 35, 6, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC - Send AI Event 6 (B) to Self');

UPDATE creature_spawn_data_template SET Name = 'GENERIC - FLY ANIM ON - RUN ON' WHERE Entry = '20056'; -- Table creature_spawn_data_template for entry 20056 has empty name

UPDATE creature_spawn_data_template SET Name = 'Flawless Draenethyst Fragment - RelayScript (25210)' WHERE Entry = '25210'; -- Table creature_spawn_data_template for entry 25210 has empty name
-- UPDATE creature_spawn_data_template SET Name = 'Draenei Refugee - RelayScript' WHERE Entry = '25210'; -- 2x
UPDATE creature_spawn_data_template SET Name = 'Draenei Refugee - RelayScript (25211)' WHERE Entry = '25211'; -- Table creature_spawn_data_template for entry 25211 has empty name
UPDATE creature_spawn_data_template SET Name = 'Draenei Refugee - RelayScript (25212)' WHERE Entry = '25212'; -- Table creature_spawn_data_template for entry 25212 has empty name
UPDATE creature_spawn_data_template SET Name = 'Draenei Refugee - RelayScript (25213)' WHERE Entry = '25213'; -- Table creature_spawn_data_template for entry 25213 has empty name
UPDATE creature_spawn_data_template SET Name = 'Draenei Refugee - RelayScript (25214)' WHERE Entry = '25214'; -- Table creature_spawn_data_template for entry 25214 has empty name
UPDATE creature_spawn_data_template SET Name = 'Draenei Refugee - RelayScript (25215)' WHERE Entry = '25215'; -- Table creature_spawn_data_template for entry 25215 has empty name
UPDATE creature_spawn_data_template SET Name = 'Draenei Refugee - RelayScript (25216)' WHERE Entry = '25216'; -- Table creature_spawn_data_template for entry 25216 has empty name
UPDATE creature_spawn_data_template SET Name = 'Draenei Refugee - RelayScript (25217)' WHERE Entry = '25217'; -- Table creature_spawn_data_template for entry 25217 has empty name
UPDATE creature_spawn_data_template SET Name = 'Draenei Refugee - RelayScript (25218)' WHERE Entry = '25218'; -- Table creature_spawn_data_template for entry 25218 has empty name
UPDATE creature_spawn_data_template SET Name = 'Draenei Refugee - RelayScript (25219)' WHERE Entry = '25219'; -- Table creature_spawn_data_template for entry 25219 has empty name

UPDATE creature_spawn_data_template SET Name = 'Plaque Spreader (604) - Faction' WHERE Entry = '60401'; -- Table creature_spawn_data_template for entry 60401 has empty name
-- UPDATE creature_spawn_data_template SET Name = 'Hammerfall Guardian (2621) - Equipment' WHERE Entry = '262101'; -- TBC+ (worker on the roof different equipment_id)
UPDATE creature_spawn_data_template SET Name = 'Crimson Guardsman (10418) - Faction' WHERE Entry = '1041801'; -- Table creature_spawn_data_template for entry 1041801 has empty name
UPDATE creature_spawn_data_template SET Name = 'Darkmoon Faire Carnie (14849) - Equipment' WHERE Entry = '1484901'; -- no data in creature_spawn_data - Table creature_spawn_data_template for entry 1484901 has empty name
UPDATE creature_spawn_data_template SET Name = 'Darkmoon Faire Carnie (14849) - Equipment' WHERE Entry = '1484902'; -- no data in creature_spawn_data - Table creature_spawn_data_template for entry 1484902 has empty name
UPDATE creature_spawn_data_template SET Name = 'Darkmoon Faire Carnie (14849) - Equipment' WHERE Entry = '1484903'; -- Table creature_spawn_data_template for entry 1484903 has empty name
UPDATE creature_spawn_data_template SET Name = 'Peon (14901) - Equipment' WHERE Entry = '1490101'; -- no data in creature_spawn_data - Table creature_spawn_data_template for entry 1490101 has empty name
UPDATE creature_spawn_data_template SET Name = 'Peon (14901) - Equipment' WHERE Entry = '1490102'; -- Table creature_spawn_data_template for entry 1490102 has empty name
UPDATE creature_spawn_data_template SET Name = 'Peon (14901) - Equipment' WHERE Entry = '1490103'; -- Table creature_spawn_data_template for entry 1490103 has empty name
UPDATE creature_spawn_data_template SET Name = 'Peon (14901) - Equipment' WHERE Entry = '1490104'; -- no data in creature_spawn_data - Table creature_spawn_data_template for entry 1490104 has empty name
UPDATE creature_spawn_data_template SET Name = 'Peon (14901) - Equipment' WHERE Entry = '1490105'; -- no data in creature_spawn_data - Table creature_spawn_data_template for entry 1490105 has empty name
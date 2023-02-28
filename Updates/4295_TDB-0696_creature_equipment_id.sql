-- Remove all data in creature.equipment_id, as column is to be removed.
-- Moved to creature_spawn_data_template, we might get some sweet feature for creature_equip_template soon
-- which will allow multisetting weapons in the base template so it does not have to be scripted
-- based on https://github.com/cmangos/wotlk-db/commit/97b9ff6ec24e36bc4e06db6050e7c31fd2ec4097

-- SELECT entry,name,equipmenttemplateid FROM creature_template where equipmenttemplateid > 30000; -- 70 -> 1 (odd case)
-- SELECT guid,id,equipment_id FROM creature where equipment_id > 0 order by id,guid; -- 422 -> 0
-- SELECT * FROM creature_equip_template_raw; -- 1089 -> 1039, should be reduced to 0 at some point
-- SELECT * FROM creature_equip_template; -- 8378 -> 8388

-- remove unneeded creature_spawn_data_template "100", fix in creature_template
-- https://github.com/cmangos/tbc-db/commit/526fb9c97f2023c65e8b124ccb6e42bab51636e7
DELETE FROM `creature_spawn_data_template` WHERE `entry` = 100; -- set faction 132, default faction for c.5723 should be 132
UPDATE `creature_template` SET `Faction` = 132 WHERE `entry` = 5723; -- 914 - Warug's Target Dummy
UPDATE dbscripts_on_quest_end SET dataint4=0 WHERE id = 1371 AND command=10 AND datalong = 5723;

-- remove unneeded creature_spawn_data_template "5", fix in creature_template
-- https://github.com/cmangos/tbc-db/commit/e523030ae7399dad5e5d6c2f49dc8990b2e31afd
DELETE FROM `creature_spawn_data_template` WHERE `entry` = 5; -- set correct npcflags in creature_template instead of messing around like this
DELETE FROM `creature_spawn_data` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 18898);
UPDATE `creature_template` SET `NpcFlags` = 128 WHERE `entry` = 18898;

REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (5, 0); -- no equipment, legit good generic _template, above cases were hackfixes.

-- =======
-- CLASSIC
-- =======

-- Peon 14901 - confirmed
-- DELETE FROM `creature_equip_template` WHERE `entry` IN (55136); -- 1906	1906	0 not even used by this npc
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 14901;
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1490101, 1490101);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1490102, 1490102);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1490103, 1490103);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1490104, 1490104);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1490105, 1490105);
DELETE FROM `creature_equip_template` WHERE `entry` BETWEEN 1490101 AND 1490105;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(1490101, 12629, 0, 0),
(1490102, 1910, 0, 0),
(1490103, 1910, 2081, 0),
(1490104, 1910, 13604, 0),
(1490105, 1910, 13605, 0);
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 1490102 FROM `creature` WHERE `id` = 14901 AND `guid` IN (13756,13752,13761,13763,13753,13764,13757,13762,13754,13769);
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 1490103 FROM `creature` WHERE `id` = 14901 AND `guid` = 13765;

-- Darkmoon Faire Carnie 14849
DELETE FROM `creature_equip_template` WHERE `entry` = 50000; -- 3362, 13604, 0 & 2361, 0, 0
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 14849;
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1484901, 1484901);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1484902, 1484902);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1484903, 1484903);
DELETE FROM `creature_equip_template` WHERE `entry` BETWEEN 1484901 AND 1484903;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(1484901, 3362, 13604, 0),
(1484902, 3362, 13605, 0),
(1484903, 5292, 0, 0);

REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 1484903 FROM `creature` WHERE `id` = 14849 AND `guid` IN (141501,141500,141001,141005,141000,141002,141507,141504,141503,141204,141203,141202,141201,141200);
REPLACE INTO `creature_addon` (`guid`, `emote`, `sheath_state`) SELECT `guid`, 234, 1 FROM `creature` WHERE `id` = 14849 AND `guid` IN (141501,141500,141001,141005,141000,141002,141507,141504,141503,141204,141203,141202,141201,141200);

UPDATE `creature` SET `equipment_id` = 0 WHERE `guid` = 1007172; -- id 1122 equip 694

-- ===================================================
-- templates with equipment > 30k, in parts using _raw
-- ===================================================
UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 1244; -- Rethiel the Greenwarden	51399/1244
DELETE FROM `creature_equip_template` WHERE `entry` = 1244;

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 1385; -- Brawn	51316/1385
DELETE FROM `creature_equip_template` WHERE `entry` = 1385;

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 9779; -- Flamekin Rager	55093/9779
DELETE FROM `creature_equip_template` WHERE `entry` = 9779;

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 10377; -- Elu	51070/10377
DELETE FROM `creature_equip_template` WHERE `entry` = 10377;

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 10739; -- Mulgris Deepriver	51253/10739
DELETE FROM `creature_equip_template` WHERE `entry` = 10739;

UPDATE `creature_template` SET `EquipmentTemplateId` = 11099 WHERE `entry` = 11099; -- Argent Guard	55498/11099
REPLACE INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (11099, 5305, 12980, 0);

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 14882; -- Atal'ai Mistress	55083/14882
DELETE FROM `creature_equip_template` WHERE `entry` = 14882;


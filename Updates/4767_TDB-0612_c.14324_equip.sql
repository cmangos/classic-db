DELETE FROM `dbscripts_on_relay` WHERE `id` BETWEEN 1432401 AND 1432403;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1432401, 0, 0, 42, 0, 0, 0, 0, 0, 0, 18123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cho''Rush the Observer - EquipSet Shaman'),
(1432402, 0, 0, 42, 0, 0, 0, 0, 0, 0, 14618, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cho''Rush the Observer - EquipSet Mage'),
(1432403, 0, 0, 42, 0, 0, 0, 0, 0, 0, 2176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cho''Rush the Observer - EquipSet Priest');

UPDATE `creature_template` SET `UnitFlags` = 33554496, `Faction` = 370 WHERE `entry` = 15896; -- C'Thun Portal
UPDATE `creature_template` SET `UnitFlags` = 33554496, `Faction` = 370 WHERE `entry` = 15904; -- Tentacle Portal
UPDATE `creature_template` SET `UnitFlags` = 33554496, `Faction` = 370 WHERE `entry` = 15910; -- Giant Tentacle Portal
UPDATE `creature_template` SET `Detection` = 60 WHERE `entry` = 15341; -- General Rajaxx
UPDATE `creature_template` SET `Detection` = 35 WHERE `entry` = 15324; -- Qiraji Gladiator
UPDATE `creature_template` SET `Detection` = 30 WHERE `entry` = 15335; -- Flesh Hunter
UPDATE `creature_template` SET `Detection` = 30 WHERE `entry` = 15323; -- Hive'Zara Sandstalker
UPDATE `creature_template` SET `Detection` = 30 WHERE `entry` = 15320; -- Hive'Zara Soldier
UPDATE `creature_template` SET `Detection` = 30 WHERE `entry` = 15336; -- Hive'Zara Tail Lasher
UPDATE `creature_template` SET `Detection` = 30 WHERE `entry` = 15343; -- Qiraji Swarmguard
UPDATE `creature_template` SET `Detection` = 30, `RegenerateStats` = `RegenerateStats`&~12 WHERE `entry` = 15338; -- Obsidian Destroyer
UPDATE `creature_template` SET `Detection` = 24 WHERE `entry` = 15387;
UPDATE `creature_template` SET `Detection` = 24 WHERE `entry` = 15344;
UPDATE `broadcast_text` SET `ChatTypeId` = 1 WHERE `Id` = 11435;


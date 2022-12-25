-- dbscript that does not what it should do
-- https://github.com/cmangos/tbc-db/commit/9667269f1e0e5e10f4c23b47c08a2e8a1959cf7d#diff-3e86790c612f9f2921c8256576a7703bbdf8b14d2c66b439795a454512dc6feaR9
UPDATE `dbscripts_on_event` SET `datalong` = 0 WHERE `id` = 3241 AND `delay` = 12500;

DELETE FROM `dbscripts_on_relay` WHERE `id`=23 AND `command` = 31;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(23, 0, 0, 31, 8578, 50, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blood Elf Defender - Terminate script if Magus Rimtori is within 50 yards');
UPDATE `dbscripts_on_relay` SET `priority` = 1 WHERE `id` = 23 AND `command` = 10; -- Blood Elf Defender - Summon Magus Rimtori

-- Reinsert as tbcmangos is missing rotation values as ususal
DELETE FROM `gameobject` WHERE `id` = 150140 AND `guid` IN (48374,48375,48376);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(48374, 150140, 1, 1, 4282.6, -6298.72, 95.5622, 2.33874, 0, 0, 0.920505, 0.390732, 60, 70, 255, 1),
(48375, 150140, 1, 1, 4275.73, -6296.56, 95.5616, 0.366518, 0, 0, 0.182235, 0.983255, 60, 70, 255, 1),
(48376, 150140, 1, 1, 4280.73, -6291, 95.5652, 4.53786, 0, 0, -0.766044, 0.642789, 60, 70, 255, 1);

-- Correct Stats - wotlkmangos also misses equipment
UPDATE `creature_template` SET `SpeedWalk` = 1, `MeleeBaseAttackTime` = 2000, `Faction` = 74, `MinLevel`='51', `MaxLevel`='52' WHERE `entry` = 6647;
UPDATE `creature_template` SET `SpeedWalk` = 1, `MeleeBaseAttackTime` = 2000, `Faction` = 74, `MinLootGold`='0', `MaxLootGold`='0', `DamageMultiplier`='1.0' WHERE `entry` = 8578; -- (55 class 8 66-92dmg)
DELETE FROM `creature_loot_template` WHERE `entry` = 8578 AND `item` != 10597; -- Head of Magus Rimtori
UPDATE `creature_template` SET `SpeedWalk` = 1, `MeleeBaseAttackTime` = 2000, `ExtraFlags` = `ExtraFlags`&~2, `LootId` = 0, `MinLootGold`='0', `MaxLootGold`='0', `DamageMultiplier`='1.0' WHERE `entry` = 8581;
DELETE FROM `creature_loot_template` WHERE `entry` = 8581;
UPDATE `creature_template` SET `SpeedWalk` = 1, `LootId` = 0, `MinLootGold`='0', `MaxLootGold`='0', `MinLevel`='52', `DamageMultiplier`='1.0' WHERE `entry` = 8608; -- (52-53 class 1 88-119dmg)
DELETE FROM `creature_loot_template` WHERE `entry` = 8608;

DELETE FROM `pool_template` WHERE `entry` = 1019 AND `description` LIKE '%Hawkhelm%';
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (1019, 1, 'Magister Hawkhelm (6647)');
DELETE FROM `pool_creature_template` WHERE `id` = 6647;
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES (6647, 1019, 0, 'Magister Hawkhelm (6647)');
DELETE FROM `creature` WHERE `id` = 6647 AND `guid` IN (51855,51886);
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(51855, 6647, 1, 4374.57, -6160.3, 126.677, 0, 75600, 115200, 2, 1),
(51886, 6647, 1, 4280.86, -6301.6, 95.387, 0, 75600, 115200, 2, 1);


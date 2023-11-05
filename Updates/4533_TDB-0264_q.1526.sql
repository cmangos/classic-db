-- https://www.wowhead.com/tbc/quest=1526/call-of-fire#comments
-- https://www.youtube.com/watch?v=odiH2eLxd3k
UPDATE `creature_template` SET `Faction` = 7, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry`= 5893; -- CREATURE_EXTRA_FLAG_DYNGUID
UPDATE `creature` SET `position_x` = -243.654, `position_y` = -4018.78, `position_z` = 188.707, `orientation` = 1.72788, `spawntimesecsmin` = 10, `spawntimesecsmax` = 15 WHERE `id` = 5893;
UPDATE `creature_template` SET `Faction` = 7, `UnitFlags` = 33555200 WHERE `entry` = 5896;
DELETE FROM `creature` WHERE `id` = 5896; -- missing
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `movementtype`) VALUES
(59127, 5896, 1, -236.458, -4018.84, 187.304, 3.07171, 120, 120, 3, 1),
(59128, 5896, 1, -250.864, -4010.23, 187.258, 5.12946, 120, 120, 3, 1),
(59129, 5896, 1, -250.884, -4019.95, 187.304, 5.0195, 120, 120, 3, 1),
(59130, 5896, 1, -239.873, -4009.15, 187.303, 3.60657, 120, 120, 3, 1);

UPDATE `creature_template` SET `GossipMenuId` = 3361, `NpcFlags` = `NpcFlags`|1 WHERE `entry` = 11285;
DELETE FROM `gossip_menu` WHERE `entry` = 3361;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (3361, 4117, 0, 0);
UPDATE `creature_template_addon` SET `auras` = '10848 17622' WHERE `entry` = 11285;
DELETE FROM `creature` WHERE `id` = 11285; -- missing
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `movementtype`) VALUES
(99462, 11285, 0, 1221.76, -2317.21, 57.1717, 4.66009, 25, 25, 7, 1);


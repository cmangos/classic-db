
DELETE FROM `pool_template` WHERE `entry`='25506';
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('25506', '1', 'DM - Tsu\'zee / Eldreth Apparition');

DELETE FROM `pool_creature` WHERE `guid` IN ('136205', '136207') OR `pool_entry`='25506';
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
('136205', '25506', '0', 'DM - Tsu\'zee / Eldreth Apparition'),
('136207', '25506', '25', 'DM - Tsu\'zee / Eldreth Apparition');

DELETE FROM `creature` WHERE `guid`='136207';
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('136207', '11467', '429', '0', '0', '128.6425', '561.7593', '-4.312211', '3.124139', '604800', '0', '0', '0', '0', '0', '0');

UPDATE `creature_template` SET `EquipmentTemplateId`='11467' WHERE `Entry`='11467';

DELETE FROM `creature_equip_template` WHERE `entry`='11467';
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
('11467', '12298', '12298', '0');

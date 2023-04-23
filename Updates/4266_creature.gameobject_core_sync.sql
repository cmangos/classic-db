-- 4166_TDB-0586_detection_range_tuning - dbversion part was commented, as it was ported too early
ALTER TABLE db_version CHANGE COLUMN required_z2798_01_mangos_battleground_reflooot required_z2801_01_mangos_aggro_range bit;

ALTER TABLE creature_template MODIFY Detection INT UNSIGNED NOT NULL DEFAULT '18';

-- z2802_01_mangos_reference_loot_template_names

ALTER TABLE db_version CHANGE COLUMN required_z2801_01_mangos_aggro_range required_z2802_01_mangos_reference_loot_template_names bit;

-- DROP TABLE IF EXISTS `reference_loot_template_names`;
-- CREATE TABLE `reference_loot_template_names` (
  -- `entry` int unsigned NOT NULL DEFAULT '0',
  -- `name` varchar(255) NOT NULL DEFAULT '',
  -- PRIMARY KEY (`entry`)
-- )COMMENT='Reference Loot Template Names';

-- z2803_01_mangos_addon_stand_state

ALTER TABLE db_version CHANGE COLUMN required_z2802_01_mangos_reference_loot_template_names required_z2803_01_mangos_addon_stand_state bit;

ALTER TABLE `creature_template_addon` ADD COLUMN `stand_state` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER `bytes1`;
ALTER TABLE `creature_addon` ADD COLUMN `stand_state` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER `bytes1`;
UPDATE creature_template_addon SET stand_state = (bytes1 & 0xFF) WHERE bytes1 != 0;
UPDATE creature_addon SET stand_state = (bytes1 & 0xFF) WHERE bytes1 != 0;
ALTER TABLE creature_template_addon DROP COLUMN bytes1;
ALTER TABLE creature_addon DROP COLUMN bytes1;

-- z2804_01_mangos_gameobject_data_split

ALTER TABLE db_version CHANGE COLUMN required_z2803_01_mangos_addon_stand_state required_z2804_01_mangos_gameobject_data_split bit;

DROP TABLE IF EXISTS `gameobject_addon`;
CREATE TABLE `gameobject_addon` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `animprogress` TINYINT(3) UNSIGNED NOT NULL DEFAULT '100',
  `state` TINYINT(3) NOT NULL DEFAULT -1,
  PRIMARY KEY(`guid`)
);

UPDATE gameobject SET animprogress=100 WHERE animprogress=255;
INSERT INTO gameobject_addon(guid) SELECT guid FROM gameobject a LEFT JOIN gameobject_template b ON a.id=b.entry WHERE animprogress != 100 OR ((a.state != 1 AND b.type NOT IN(0,1,30)) OR (b.type IN(0,1,30) AND data0 = a.state));
UPDATE gameobject_addon a SET animprogress= (SELECT animprogress FROM gameobject b where a.guid=b.guid);
UPDATE gameobject_addon c SET state= (SELECT a.state FROM gameobject a JOIN gameobject_template b ON a.id=b.entry WHERE a.guid=c.guid AND ((a.state != 1 AND b.type NOT IN(0,1,30)) OR (b.type IN(0,1,30) AND data0 = a.state))) WHERE guid IN(SELECT a.guid FROM gameobject a JOIN gameobject_template b ON a.id=b.entry WHERE a.guid=c.guid AND ((a.state != 1 AND b.type NOT IN(0,1,30)) OR (b.type IN(0,1,30) AND data0 = a.state)));
ALTER TABLE gameobject DROP COLUMN `animprogress`;
ALTER TABLE gameobject DROP COLUMN `state`;

-- z2805_01_mangos_addon_drop

ALTER TABLE db_version CHANGE COLUMN required_z2804_01_mangos_gameobject_data_split required_z2805_01_mangos_addon_drop bit;

ALTER TABLE creature_template_addon DROP COLUMN b2_1_flags;
ALTER TABLE creature_addon DROP COLUMN b2_1_flags;

-- z2806_01_mangos_creature_drops

ALTER TABLE db_version CHANGE COLUMN required_z2805_01_mangos_addon_drop required_z2806_01_mangos_creature_drops bit;

ALTER TABLE creature DROP COLUMN modelid;
ALTER TABLE creature DROP COLUMN currentwaypoint;
ALTER TABLE creature DROP COLUMN curhealth;
ALTER TABLE creature DROP COLUMN curmana;
ALTER TABLE creature DROP COLUMN DeathState;

-- z2807_01_mangos_addon_rename

ALTER TABLE db_version CHANGE COLUMN required_z2806_01_mangos_creature_drops required_z2807_01_mangos_addon_rename bit;

ALTER TABLE creature_template_addon CHANGE b2_0_sheath sheath_state tinyint(3) unsigned NOT NULL DEFAULT '0';
ALTER TABLE creature_addon CHANGE b2_0_sheath sheath_state tinyint(3) unsigned NOT NULL DEFAULT '0';

ALTER TABLE `creature_spawn_data_template` CHANGE `EquipmentId` `EquipmentId` MEDIUMINT(8) NOT NULL DEFAULT '-1';

UPDATE `creature_spawn_data_template` SET `EquipmentId` = -1 WHERE `EquipmentId` = 0; -- Set to new default where equipment is not unequipped.


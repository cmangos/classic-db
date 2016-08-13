
UPDATE `creature_equip_template_raw` SET `entry`=`entry` + 50000;

UPDATE `creature_template` SET `equipmenttemplateid`=`equipmenttemplateid` + 50000 WHERE NOT `equipmenttemplateid`=0 AND NOT `equipmenttemplateid`=`entry`;

UPDATE `creature` SET `equipment_id` = `equipment_id` + 50000 WHERE NOT `equipment_id`=0;

UPDATE `game_event_creature_data` SET `equipment_id` = `equipment_id` + 50000 WHERE NOT `equipment_id`=0;

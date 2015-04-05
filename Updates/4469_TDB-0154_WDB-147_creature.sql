-- Kayneth Stillwind 3848 - Script might be tbc+ only, maybe should be removed in classic!
UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 3848;
DELETE FROM `creature_equip_template` WHERE `entry` = 3848;
UPDATE `dbscripts_on_creature_movement` SET `dataint2` = 0 WHERE `id` = 384801 AND `delay` = 43000; -- "Putting the bottles away, %s sighs." - not just one bottle


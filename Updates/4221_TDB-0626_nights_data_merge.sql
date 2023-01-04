-- Align Night Time Game Event with tbcmangos

-- updates
UPDATE `creature_template` SET `EquipmentTemplateId` = 1162 WHERE `entry` = 1162; -- 641, identical!? - i think these wrongly had torches at some point, already removed in wotlkmangos
DELETE FROM `game_event_creature_data` WHERE `equipment_id` = 1162;

-- https://www.wowhead.com/tbc/npc=381/dockmaster-baren
UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 381; -- only night equipment_id (vmangos), no default equipment
DELETE FROM `game_event_creature_data` WHERE `guid` = 6177;
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
(6177, 0, 0, 381, 0, 0, 27);


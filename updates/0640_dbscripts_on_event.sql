-- Improved scripted event 452 for quests 735 & 736 (The Star, the Hand and the Heart, Alliance / Horde)
-- Now the NPC 2937 (Dagun) will spawn in the water and march toward players instead of spawning on top of them 
DELETE FROM `dbscripts_on_event` WHERE `id` = 452;
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(452, 0, 10, 2937, 3000000, 0, 0, 0, 0, 0, 0, 0, -2439.17, -4073.96, -1.367, 6, 'Summon Dagun'),
(452, 0, 3, 0, 0, 2937, 100, 0, 0, 0, 0, 0, -2360.55, -4102.38, 6.93, 2.25, ''),
(452, 0, 20, 0, 0, 2937, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Added missing equipment to creature 2937 (Dagun the Ravenous)
-- Source: http://www.wowhead.com/npc=2937#screenshots:id=91348
UPDATE `creature_template` SET `EquipmentTemplateId` = 500 WHERE `Entry` = 2937;

-- Update Quest scripts for Quests "Seeping Corruption"

DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 3568; -- npc flags removed
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `dataint`, `dataint2`,`x`, `y`, `z`, `o`,`comments`) VALUES 
('3568', '0', '0', '21', '1', '0', '0','0', '0', '0', '0', '0','0','0','Seeping Corruption (Part 1) - Chemist Cuely - Set Active'),
('3568', '0', '1', '29', '2', '0', '0','0', '0', '0', '0', '0','0','0','Seeping Corruption (Part 1) - Chemist Cuely - Remove QuestGiver Flag'),
('3568', '0', '2', '3', '0', '0', '0','0', '0', '0', '0', '0','0','5.96902', 'Seeping Corruption (Part 1) - Chemist Cuely - Set Orientation'),
('3568', '5000', '0', '36', '0', '0', '0','0', '0', '0', '0', '0','0','0','Seeping Corruption (Part 1) - Chemist Cuely - Face Player'),
('3568', '5000', '1', '1', '5', '0', '0','0', '0', '0', '0', '0','0','0','Seeping Corruption (Part 1) - Chemist Cuely - Emote OneShotExclamation'),
('3568', '5000', '2', '0', '0', '0', '0','0', '4522', '0', '0', '0','0','0','Seeping Corruption (Part 1) - Chemist Cuely - Say Text'),
('3568', '5000', '3', '29', '2', '1', '0','0', '0', '0', '0', '0','0','0','Seeping Corruption (Part 1) - Chemist Cuely - Add QuestGiver Flag'),
('3568', '5000', '4', '21', '0', '0', '0','0', '0', '0', '0', '0','0','0','Seeping Corruption (Part 1) - Chemist Cuely - Remove Active');

UPDATE `quest_template` SET `CompleteScript`='3568' WHERE `entry`='3568'; 

DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 3569; -- npc flags removed
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`,`x`, `y`, `z`, `o`,`comments`) VALUES 
('3569', '0', '0', '21', '1', '0', '0','0','0', '0', '0', '0', '0','0','0','Seeping Corruption (Part 2) - Thersa Windsong - Set Active'),
('3569', '0', '1', '1', '7', '0', '0','0','0', '0', '0', '0', '0','0','0','Seeping Corruption (Part 2) - Thersa Windsong - Emote Eat'),
('3569', '4000', '0', '1', '15', '0', '0','0','0', '0', '0', '0', '0','0','0','Seeping Corruption (Part 2) - Thersa Windsong - EMOTE_ONESHOT_ROAR'),
('3569', '4000', '1', '0', '0', '0', '0','0', '0','4533', '0', '0', '0','0','0','Seeping Corruption (Part 2) - Thersa Windsong - Say Text'),
('3569', '7000', '0', '14', '12881', '0', '0','0','0', '0', '0', '0', '0','0','0','Seeping Corruption (Part 2) - Thersa Windsong - Remove Aura'),
('3569', '7000', '1', '15', '5', '0', '0','0','4', '0', '0', '0', '0','0','0','Seeping Corruption (Part 2) - Thersa Windsong - Kill Self with Spell');

UPDATE `quest_template` SET `CompleteScript`='3569' WHERE `entry`='3569'; 

-- Respawn Timer for Thersa Windsong
UPDATE `creature` SET `spawntimesecsmin`='30', `spawntimesecsmax`='30' WHERE (`guid`='31905');

-- Add emote to Chemist Cuely
UPDATE `creature_template_addon` SET `emote`='69' WHERE (`entry`='8390');

-- ServerToClient: SMSG_UPDATE_OBJECT (0x27C6) Length: 622 ConnIdx: 1 Time: 06/01/2022 11:36:10.731 Number: 1897
-- [0] UpdateType: CreateObject2
-- [0] Object Guid: Full: 0x204CB00000083240000027000017330A Creature/0 R4908/S39 Map: 0 Entry: 8393 Low: 1520394
-- ServerToClient: SMSG_AURA_UPDATE (0x2C22) Length: 52 ConnIdx: 1 Time: 06/01/2022 11:36:10.731 Number: 1898
-- [0] HasAura: True
-- [0] SpellID: 12881 (12881)
-- UnitGUID: Full: 0x204CB00000083240000027000017330A Creature/0 R4908/S39 Map: 0 Entry: 8393 Low: 1520394
UPDATE `creature_template_addon` SET `auras`='12881' WHERE (`entry`='8393'); -- Poison State


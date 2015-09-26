-- Fixed a few errors introduced in previous commits

-- Removed emote that was not existing in Classic and replace it by state change
UPDATE `db_script_string` SET `emote` = 0 WHERE `entry` = 2000000522;
DELETE FROM dbscripts_on_quest_end WHERE id = 4129 AND delay IN (9, 11);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(4129,9,1,64,0,0,0,0,0,0,0,0,0,0,0,0,''),
(4129,11,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Readded npc_text mistakenly removed in a previous commit
DELETE FROM npc_text WHERE ID = 6157;
INSERT INTO npc_text (ID, text0_0, text0_1, lang0, prob0, em0_0, em0_1) VALUES
(6157, 'Hey there, friend. My name\'s Remy. I\'m from Redridge to the east, and came here looking for business, looking for business. You got any...got any??', 'Hey there, friend. My name\'s Remy. I\'m from Redridge to the east, and came here looking for business, looking for business. You got any...got any??', 0, 1, 0, 0);

-- Fixed condition with wrong entry
DELETE FROM conditions WHERE condition_entry IN (1145, 1147);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1145, 8, 4289, 0);

-- Removed pickpocket and loot templates id from 3 NPCs: the entries were not existing and they should have none
UPDATE `creature_template` SET `PickpocketLootId` = 0, `LootId` = 0 WHERE `Entry` IN (5776, 5777, 5778);

-- Removed loot templates from NPCs that should have none
UPDATE `creature_template` SET `LootId` = 0 WHERE `Entry` IN (255, 15776, 15796);

-- Fixed wrong modelId of NPC 8927 (Dark Screecher) caused by a typo
UPDATE `creature_template` SET `ModelId1` = 1955 WHERE `Entry` = 8927;

-- Removed a few lingering creature addons left after the creature spawns were removed
DELETE FROM `creature_addon` WHERE `guid` IN (31839, 47259, 51692, 51697, 90587);

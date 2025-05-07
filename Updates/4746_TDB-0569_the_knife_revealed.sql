-- ----------------
-- The Knife Revealed
-- Small tweaks to RP on QuestEnd
-- Previuously he wasnt casting the spell, and didnt remove emote state
-- ---------------

-- https://www.wowhead.com/classic/npc=7879/quintis-jonespyre npcflag 7 in classic

-- The Knife Revealed quest end rp
-- 4129	0	0	29	131	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	npcFlags removed -> npcflag in classic is 7 as 128 = 4 in classic UNIT_NPC_FLAG_VENDOR
-- 4129	2000	0	0	0	0	0	0	0	0	5148	0	0	0	0	0	0	0	0	0	0	
-- 4129	3000	0	15	15050	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	
-- 4129	9000	0	1	64	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	
-- 4129	10000	0	0	0	0	0	0	0	0	5149	0	0	0	0	0	0	0	0	0	0	
-- 4129	11000	0	28	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	
-- 4129	12000	0	29	131	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	npcFlags added
DELETE FROM dbscripts_on_quest_end WHERE id = 4129;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(4129, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Knife Revealed - Quintis Jonespyre - set Active Object'),
(4129, 0, 1, 29, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Knife Revealed - Quintis Jonespyre - remove npcflag'), -- 12:11:09.023 - UNIT_NPC_FLAG_QUESTGIVER
(4129, 0, 2, 0, 0, 0, 0, 0, 0, 0, 5148, 0, 0, 0, 0, 0, 0, 0, 'The Knife Revealed - Quintis Jonespyre - Say Text'),
(4129, 1000, 0, 15, 15050, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'The Knife Revealed - Quintis Jonespyre - Cast Psychometry'), --  12:11:10.281
(4129, 8000, 0, 0, 0, 0, 0, 0, 0, 0, 5149, 0, 0, 0, 0, 0, 0, 0, 'The Knife Revealed - Quintis Jonespyre - Say Text'),
(4129, 12000, 0, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Knife Revealed - Quintis Jonespyre - remove npcflag'), -- 12:11:21.607 add npc flag not remove
(4129, 15000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Knife Revealed - Quintis Jonespyre - remove emote state'),
(4129, 15000, 1, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Knife Revealed - Quintis Jonespyre - remove Active Object');


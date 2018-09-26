-- https://github.com/lh-server/core/commit/acafb3fea458f3b5061f777f05d25e1a1f76e2a7

-- Update - [0067] Backported end script for quest 502
-- https://github.com/cmangos/classic-db/commit/33159804e2e52109cb6950483110724bd5d19880
-- delay updated and visuals added

UPDATE dbscripts_on_quest_end SET delay=6 WHERE delay=11 AND id=502 AND command=22;
UPDATE dbscripts_on_quest_end SET delay=5 WHERE delay=10 AND id=502;
UPDATE dbscripts_on_quest_end SET delay=0 WHERE delay=2 AND id=502;

DELETE FROM dbscripts_on_quest_end WHERE id=502 AND command IN (15,16);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(502, 3, 15, 17673, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Stanley: Visual transformation'),
(502, 4, 16, 1108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stanley: Sound transformation');

-- Update - [0168] Added end script for 25 quests
-- https://github.com/classicdb/database/commit/1f38aa9dcb1cbaea9a14f7061b612d193f9fb140

-- Update end script for quest 640 (The Broken Sigil)
DELETE FROM dbscripts_on_quest_end WHERE id=640 AND command IN (29);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(640, 0, 29, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tor\'gan: npc_flag questgiver removed'),
(640, 6, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tor\'gan: npc_flag questgiver added');

-- Update end script for quest 702 (Guile of the Raptor)
DELETE FROM dbscripts_on_quest_end WHERE id=702 AND command IN (29);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(702, 0, 29, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gor\'mul: npc_flag questgiver removed'),
(702, 14, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gor\'mul: npc_flag questgiver added');

-- Update end script for quest 748 (Poison Water)
DELETE FROM dbscripts_on_quest_end WHERE id=748 AND command IN (29);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(748, 0, 29, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mull Thunderhorn: npc_flag questgiver removed'),
(748, 9, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mull Thunderhorn: npc_flag questgiver added');

-- Update end script for quest 756 (Thunderhorn Totem)
DELETE FROM dbscripts_on_quest_end WHERE id=756 AND command IN (29);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(756, 0, 29, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mull Thunderhorn: npc_flag questgiver removed'),
(756, 9, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mull Thunderhorn: npc_flag questgiver added');

-- Update end script for quest 759 (Wildmane Totem)
DELETE FROM dbscripts_on_quest_end WHERE id=759 AND command IN (29);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(759, 0, 29, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mull Thunderhorn: npc_flag questgiver removed'),
(759, 9, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mull Thunderhorn: npc_flag questgiver added');

-- Update end script for quest 950 (Return to Onu)
DELETE FROM dbscripts_on_quest_end WHERE id=950 AND command IN (29,1,15);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(950, 0, 29, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Onu: npc_flag questgiver removed'),
(950, 4, 1, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Onu: Emote wound'),
(950, 4, 15, 4947, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Onu: Cast spell (guessed spell)'),
(950, 9, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Onu: npc_flag questgiver added');

-- Update end script for quest 1062 (Goblin Invaders)
-- Source: https://www.youtube.com/watch?v=5UWZaZjKS14&t=3736
DELETE FROM dbscripts_on_quest_end WHERE id=1062 AND command IN (29,1);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1062, 0, 29, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Seereth Stonebreak: npc_flag questgiver removed'),
(1062, 3, 1, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Seereth Stonebreak: Roar emote'),
(1062, 4, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Seereth Stonebreak: npc_flag questgiver added');

-- Update end script for quest 1066 (Blood of Innocents)
DELETE FROM dbscripts_on_quest_end WHERE id=1066 AND command IN (29,1);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1066, 0, 29, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Apothecary Lydon: npc_flag questgiver removed'),
(1066, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Apothecary Lydon: Emote use'),
(1066, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Apothecary Lydon: Emote normal'),
(1066, 4, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Apothecary Lydon: npc_flag questgiver added');

-- Update end script for quest 1067 (Return to Thunder Bluff)
DELETE FROM dbscripts_on_quest_end WHERE id=1067 AND command IN (29,1);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1067, 0, 29, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Apothecary Zamah: npc_flag questgiver removed'),
(1067, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Apothecary Zamah: Emote use'),
(1067, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Apothecary Zamah: Emote normal'),
(1067, 4, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Apothecary Zamah: npc_flag questgiver added');

-- Update end script for quest 1112 (Parts for Kravel)
-- Source: https://www.youtube.com/watch?v=VBlnzRNTatI&feature=youtu.be&list=PL49Ga_-r7iKkxrbckm9CkUhWzxqrOnw-n&t=305
UPDATE creature_template_addon SET bytes1=0 WHERE entry=4452; -- Kravel should stand by default
DELETE FROM dbscripts_on_quest_end WHERE id=1112 AND delay IN (0,3,7,9);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1112, 0, 29, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kravel Koalbeard: Remove NPC Questgiver flag'),
(1112, 3, 28, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kravel Koalbeard: Kneel start'),
(1112, 7, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kravel Koalbeard: Kneel end'),
(1112, 9, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kravel Koalbeard: Add NPC Questgiver flag');

-- Update end script for quest 1116 (Dream Dust in the Swamp)
DELETE FROM dbscripts_on_quest_end WHERE id=1116 AND command IN (29);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1116, 0, 29, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Krazek: npc_flag questgiver removed'),
(1116, 9, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Krazek: npc_flag questgiver added');

-- Update end script for quest 1117 (Rumors for Kravel)
DELETE FROM dbscripts_on_quest_end WHERE id=1117 AND command IN (29);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1117, 0, 29, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kravel Koalbeard: npc_flag questgiver removed'),
(1117, 8, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kravel Koalbeard: npc_flag questgiver added');

-- Update end script for quest 1169 (Identifying the Brood)
DELETE FROM dbscripts_on_quest_end WHERE id=1169 AND command IN (29);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1169, 0, 29, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Draz\'Zilb: npc_flag questgiver removed'),
(1169, 12, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Draz\'Zilb: npc_flag questgiver added');

-- Update end script for quest 1445 (The Temple of Atal'Hakkar)
DELETE FROM dbscripts_on_quest_end WHERE id=1445 AND command IN (29);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1445, 0, 29, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fel\'zerul: npc_flag questgiver removed'),
(1445, 5, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fel\'zerul: npc_flag questgiver added');

-- [0265] Fixes from ProjectSilverpine
-- https://github.com/cmangos/classic-db/commit/1a6ab72c29dd9de4a9f16d90b60ce8567eb96602
-- Add quest start script to Vyletongue Corruption (7041)
-- same script as 7029 - missed in backporting?
UPDATE quest_template SET StartScript=7041 WHERE entry=7041;
DELETE FROM dbscripts_on_quest_start WHERE id=7041;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(7041, 2, 0, 0, 0, 0, 0, 0, 0, 2000005465, 0, 0, 0, 0, 0, 0, 0, 'Talendria - Talk');


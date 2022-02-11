UPDATE quest_template SET StartScript=2282 WHERE entry=2282;
DELETE FROM dbscripts_on_quest_start WHERE id=2282;
INSERT INTO dbscripts_on_quest_start (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(2282, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 3562, 0, 0, 0, 0, 0, 0, 0, 0, 'Alther''s Mill - Lucius: Say text 1');

UPDATE quest_template SET StartScript=3449 WHERE entry=3449;
DELETE FROM dbscripts_on_quest_start WHERE id=3449;
INSERT INTO dbscripts_on_quest_start (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(3449, 500, 0, 1, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Arcane Runes - Tymor: Emote'),
(3449, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 4451, 0, 0, 0, 0, 0, 0, 0, 0, 'Arcane Runes - Tymor: Say text 1');

-- 02:43:34.547 CMSG_QUEST_GIVER_CHOOSE_REWARD
-- 02:43:34.922 NPC 2916 cast 4985 on self
-- 02:43:36.000 NPC 2915 spawn - Position: X: -4629.125 Y: -1325.91 Z: 503.4648, Orientation: 2.86234
-- 02:43:36.000 NPC 2915 cast 4985 on self
-- 02:43:39.360 NPC 2916 says text "Hammertoe, you're as smart as you were stubborn in life and even in death. What can you tell me, ole friend?" target Player
-- 02:43:46.250 NPC 2915 says text "Karnik, me friend, I wish I could see you with me own eyes again, but we need'ta talk of Ragnaros. His influence is spreading." target NPC 2916
-- 02:43:51.532 NPC 2916 says text "Ragnaros? Terrible news indeed..." target NPC 2915
-- 02:43:56.797 NPC 2915 says text "I'll tell you more, Karnik, in time. But first, send this traveler'ta Belgrum--there's more business'ta attend to." target NPC 2916
-- 02:44:03.704 NPC 2916 says text "You heard him, traveler. Speak to me again when you're ready to speak to Belgrum." target NPC 2915
-- 02:44:08.047 NPC 2915 despawn

-- 2916 Historian Karnik
-- 2915 Hammertoe's Spirit
-- 724 Prospect of Faith
-- 4985 Summon Hammertoe's Spirit

UPDATE creature_template SET GossipMenuId=5348 WHERE Entry=2916;

UPDATE quest_template SET CompleteScript=724 WHERE entry=724;
DELETE FROM dbscripts_on_quest_end WHERE id=724;
INSERT INTO dbscripts_on_quest_end (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(724, 500, 0, 15, 4985, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Prospect of Faith - Historian Karnik: Cast Summon Hammertoe''s Spirit'),
(724, 1500, 0, 10, 2915, 32000, 0, 0, 0, 0, 0, 0, 0, 0, -4629.125, -1325.91, 503.4648, 2.86234, 0, 'Prospect of Faith - Summon Hammertoe''s Spirit'),
(724, 1500, 1, 15, 4985, 0, 0, 2915, 40, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Prospect of Faith - Hammertoe''s Spirit: Cast Summon Hammertoe''s Spirit'),
(724, 4800, 0, 0, 0, 0, 0, 0, 0, 0, 917, 0, 0, 0, 0, 0, 0, 0, 0, 'Prospect of Faith - Historian Karnik: Say text 1'),
(724, 11800, 0, 0, 0, 0, 0, 2915, 40, 7, 916, 0, 0, 0, 0, 0, 0, 0, 0, 'Prospect of Faith - Hammertoe''s Spirit: Say text 1'),
(724, 16800, 0, 0, 0, 0, 0, 0, 0, 0, 956, 0, 0, 0, 0, 0, 0, 0, 0, 'Prospect of Faith - Historian Karnik: Say text 2'),
(724, 22000, 0, 0, 0, 0, 0, 2915, 40, 7, 918, 0, 0, 0, 0, 0, 0, 0, 0, 'Prospect of Faith - Hammertoe''s Spirit: Say text 2'),
(724, 29000, 0, 0, 0, 0, 0, 0, 0, 0, 958, 0, 0, 0, 0, 0, 0, 0, 0, 'Prospect of Faith - Historian Karnik: Say text 3');

-- ----------------
-- Duskwood
-- The Scythe of Elune (1043)
-- Mound of Dirt object script corrections
-- ---------------

DELETE FROM dbscripts_on_event WHERE id IN (664);
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(664, 0, 0, 10, 3946, 13000, 0, 0, 0, 0, 0, 0, 0, 0, -11141.121, -1152.6804, 43.5816, 4.7822, 'The Scythe of Elune - Mound of Dirt - Spawn Velinde Starsong'), -- 12:05:39.969
(664, 2000, 0, 36, 0, 0, 0, 3946, 20, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'The Scythe of Elune - Velinde Starsong - Face Player'), -- 12:05:41.141
(664, 5000, 0, 1, 1, 0, 0, 3946, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Scythe of Elune - Velinde Starsong - Emote OneShotTalk'), -- 12:05:44.406
(664, 5000, 1, 0, 0, 0, 0, 3946, 20, 0, 1359, 0, 0, 0, 0, 0, 0, 0, 'The Scythe of Elune - Velinde Starsong - Emote OneShotTalk'), -- 12:05:44.406
(664, 9000, 0, 1, 18, 0, 0, 3946, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Scythe of Elune - Velinde Starsong - Emote OneShotCry'), -- 12:05:49.297
(664, 9000, 1, 0, 0, 0, 0, 3946, 20, 0, 1360, 0, 0, 0, 0, 0, 0, 0, 'The Scythe of Elune - Velinde Starsong - Emote OneShotTalk');

-- Added missing debuff for quest 1699 (The Rethban Gauntlet)
-- This closes #49
UPDATE quest_template SET StartScript=1699 WHERE entry=1699;
DELETE FROM dbscripts_on_quest_start WHERE id=1699;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1699, 0, 15, 8554, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Drinking Barleybrew Scalder');

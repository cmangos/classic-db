-- Add CompleteScript for Elixir of Suffering 499
-- Resolves https://github.com/cmangos/issues/issues/1937
UPDATE quest_template SET CompleteScript=499 WHERE entry=499;

UPDATE creature SET modelid=0, spawntimesecsmin=30, spawntimesecsmax=30 WHERE id=2230;
UPDATE creature_template SET skinninglootid=0 WHERE entry=2230; -- 100008

-- 14:08:40.000 - quest turn in, start random movement - 14:14:58.000 - Cast 3240
DELETE FROM dbscripts_on_quest_end WHERE id=499;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(499, 0, 20, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Umpi 2230 - Random Movement'),
(499, 8, 15, 3240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Umpi 2230 - Cast Bloody Explosion');

-- q.1364 'Recover the Cargo!'
DELETE FROM dbscripts_on_quest_start WHERE id IN (1364);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1364,100,0,0,0,0,0,0,0,1828,1829,1830,1831,0,0,0,0,'');
UPDATE quest_template SET StartScript = 1364 WHERE entry = 1364;

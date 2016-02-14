-- q.5321 'The Sleeper Has Awakened'
DELETE FROM dbscripts_on_quest_start WHERE id = 5321;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5321,1,16,6209,2,0,0,0,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 5321 WHERE entry = 5321;
-- Kerlonian Evershade <Druid of the Claw>
DELETE FROM creature_template_addon WHERE entry = 11218;
INSERT INTO creature_template_addon VALUES
(11218, 0, 3, 1, 1, 0, 0, NULL);

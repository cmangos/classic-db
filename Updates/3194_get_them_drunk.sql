-- q.1120 'Get the Gnomes Drunk'
-- q.1121 'Get the Goblins Drunk'
DELETE FROM dbscripts_on_quest_end WHERE id IN (1120,1121);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1120,100,0,0,0,0,0,0,0,2000003228,0,0,0,0,0,0,0,''),
(1120,1000,35,5,50,0,0,0,0,0,0,0,0,0,0,0,0,'Send Even 5'),
(1120,1500,15,20436,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast Drunken Pit Crew'),
(1121,100,0,0,0,0,0,0,0,2000003229,0,0,0,0,0,0,0,''),
(1121,1000,35,5,50,0,0,0,0,0,0,0,0,0,0,0,0,'Send Even 5'),
(1121,1500,15,20436,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast Drunken Pit Crew');
UPDATE quest_template SET CompleteScript = 1120 WHERE entry = 1120;
UPDATE quest_template SET CompleteScript = 1121 WHERE entry = 1121;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003228 AND 2000003229;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003228,'Look at what $n brought us!  Let\'s drink up!',0,0,0,0,NULL),
(2000003229,'$N brought us booze!  Let\'s party!',0,0,0,0,NULL);

-- Goblin Pit Crewman 4429
UPDATE creature SET spawndist=2, MovementType=1 WHERE guid IN (21552,21555);

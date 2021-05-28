-- Alliance
-- q.8905 'An Earnest Proposition'
-- q.8906 'An Earnest Proposition'
-- q.8907 'An Earnest Proposition'
-- q.8908 'An Earnest Proposition'
-- q.8909 'An Earnest Proposition'
-- q.8910 'An Earnest Proposition'
-- q.8911 'An Earnest Proposition'
-- q.8912 'An Earnest Proposition'
DELETE FROM dbscripts_on_quest_end WHERE id = 8905;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8905,0,10,16093,120000,0,0,0,0,0,0,0,0,-4836.73,-1056.3668,502.27313,3,'summon: Spectral Stalker 16093'),
(8905,1,10,16093,120000,0,0,0,0,0,0,0,0,-4833.5845,-1059.5857,502.2716,2.77,'summon: Spectral Stalker 16093'),
(8905,2,10,16093,120000,0,0,0,0,0,0,0,0,-4834.762,-1054.3674,502.27313,3.1,'summon: Spectral Stalker 16093'),
(8905,100,0,0,0,0,16093,50,7,2000003325,0,0,0,0,0,0,0,''),
(8905,2000,0,0,0,0,0,0,0,2000003327,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 8905 WHERE entry BETWEEN 8905 AND 8912;
DELETE FROM dbscript_string WHERE entry = 2000003325;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003325,'Your fate is sealed, Deliana!  You will pay for your trespasses against Lord Valthalak!',0,0,0,0,NULL);
-- Horde
-- q.8913 'An Earnest Proposition'
-- q.8914 'An Earnest Proposition'
-- q.8915 'An Earnest Proposition'
-- q.8916 'An Earnest Proposition'
-- q.8917 'An Earnest Proposition'
-- q.8918 'An Earnest Proposition'
-- q.8919 'An Earnest Proposition'
-- q.8920 'An Earnest Proposition'
DELETE FROM dbscripts_on_quest_end WHERE id = 8913;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8913,0,10,16093,120000,0,0,0,0,0,0,0,0,1925.3727,-4166.3857,40.995567,3.56,'summon: Spectral Stalker 16093'),
(8913,1,10,16093,120000,0,0,0,0,0,0,0,0,1928.0856,-4167.2095,41.00721,3.56,'summon: Spectral Stalker 16093'),
(8913,2,10,16093,120000,0,0,0,0,0,0,0,0,1926.1135,-4163.466,40.6428,3.56,'summon: Spectral Stalker 16093'),
(8913,100,0,0,0,0,16093,50,7,2000003326,0,0,0,0,0,0,0,''),
(8913,2000,0,0,0,0,0,0,0,2000003327,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 8913 WHERE entry BETWEEN 8913 AND 8920;
DELETE FROM dbscript_string WHERE entry IN (2000003326,2000003327);
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003326,'Your fate is sealed, Mokvar!  You will pay for your trespasses against Lord Valthalak!',0,0,0,0,NULL),
(2000003327,'Begone foul creatures!  Go back to the void your master shaped you from!',0,0,0,0,NULL);

-- Spectral Stalker 16093
UPDATE creature_template SET UnitFlags = 768 WHERE entry = 16093;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 16093);
DELETE FROM creature_template_addon WHERE entry = 16093;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(16093,0,0,1,0,0,0,24313);

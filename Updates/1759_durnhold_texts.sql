DELETE FROM db_script_string WHERE entry IN (2000005081, 2000005082, 2000005083, 2000005084, 2000005085, 2000005087, 2000005088, 2000005089, 2000005090, 2000005091, 2000005093, 2000005094, 2000005095, 2000005096, 2000005097);

DELETE FROM db_script_string WHERE entry IN (2000005078, 2000005079);
INSERT INTO db_script_string VALUES
(2000005078, 'Have you freed Drull yet? I don\'t know where he\'s being held.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005079, 'I will only slow you down, but no pink-skinned humans will keep me from freedom!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005081, 'Ah, it is good to be free of my bonds! Have you freed Tog\'thar yet? The humans split us up after our capture.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005082, 'Go on ahead without me! I will make my own way to Tarren Mill.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

DELETE FROM dbscripts_on_event WHERE ID=312;
INSERT INTO dbscripts_on_event VALUES
(312, 1, 0, 0, 0, 0, 2239, 10, 4, 2000005081, 0, 0, 0, 0, 0, 0, 0, 'force 2239 to: say text'),
(312, 3, 0, 0, 0, 0, 2239, 10, 4, 2000005082, 0, 0, 0, 0, 0, 0, 0, 'force 2239 to: say text');

UPDATE gameobject_template SET data1=0 WHERE entry=1721;
UPDATE gameobject_template SET flags=4 WHERE entry=1722;
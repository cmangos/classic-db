DELETE FROM dbscripts_on_quest_end WHERE id='7461';
INSERT INTO dbscripts_on_quest_end (id, delay, priority, command, datalong, datalong2, datalong3, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
('7461', '0', '0', '31', '14364', '10', '0', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'The Madness Within: Abort Script if Shen\'dralar Ancient is spawned'),
('7461', '0', '1', '10', '14364', '600000', '0', '8', '0', '0', '0', '7464', '9.86833', '399.483', '25.1394', '0.645772', 'The Madness Within: Shen\'dralar Ancient - Summon Creature Shen\'dralar Spirit'),
('7461', '0', '1', '10', '14364', '600000', '0', '8', '0', '0', '0', '7461', '16.5058', '396.353', '25.1394', '0.366519', 'The Madness Within: Shen\'dralar Ancient - Summon Creature Shen\'dralar Spirit'),
('7461', '0', '1', '10', '14364', '600000', '0', '8', '0', '0', '0', '7461', '14.0871', '394.116', '25.1394', '5.67232', 'The Madness Within: Shen\'dralar Ancient - Summon Creature Shen\'dralar Spirit'),
('7461', '0', '1', '10', '14364', '600000', '0', '8', '0', '0', '0', '7463', '13.378', '398.393', '25.1394', '3.87463', 'The Madness Within: Shen\'dralar Ancient - Summon Creature Shen\'dralar Spirit'),
('7461', '0', '1', '10', '14364', '600000', '0', '8', '0', '0', '0', '7462', '4.33656', '395.79', '25.1394', '6.26573', 'The Madness Within: Shen\'dralar Ancient - Summon Creature Shen\'dralar Spirit'),
('7461', '0', '1', '10', '14364', '600000', '0', '8', '0', '0', '0', '7467', '6.27106', '393.316', '25.1394', '0.0174533', 'The Madness Within: Shen\'dralar Ancient - Summon Creature Shen\'dralar Spirit'),
('7461', '0', '1', '10', '14364', '600000', '0', '8', '0', '0', '0', '7465', '6.21175', '398.111', '25.1394', '0.541052', 'The Madness Within: Shen\'dralar Ancient - Summon Creature Shen\'dralar Spirit'),
('7461', '0', '1', '10', '14364', '600000', '0', '8', '0', '0', '0', '7466', '9.8532', '392.825', '25.1394', '4.4855', 'The Madness Within: Shen\'dralar Ancient - Summon Creature Shen\'dralar Spirit');

UPDATE quest_template SET CompleteScript=7461 WHERE entry=7461;

DELETE FROM creature_spawn_data_template WHERE entry IN (7461, 7462, 7463, 7464, 7465, 7466, 7467);
INSERT INTO creature_spawn_data_template (Entry, RelayId) VALUES 
('7461', '7461'),
('7462', '7462'),
('7463', '7463'),
('7464', '7464'),
('7465', '7465'),
('7466', '7466'),
('7467', '7467');

DELETE FROM dbscripts_on_relay WHERE id='7461';
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, data_flags, dataint, comments) VALUES 
('7461', '1000', '36', '0', '0', '0', '0', '0', 'The Madness Within: Shen\'dralar Ancient - The Madness Within: Shen\'dralar Spirit - Face Player');

DELETE FROM dbscripts_on_relay WHERE id='7462';
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, data_flags, dataint, comments) VALUES 
('7462', '1000', '36', '0', '0', '0', '0', '0', 'The Madness Within: Shen\'dralar Ancient - The Madness Within: Shen\'dralar Spirit - Face Player'),
('7462', '6000', '1', '4', '0', '0', '0', '0', 'The Madness Within: Shen\'dralar Spirit - Emote OneShotCheer'),
('7462', '12000', '1', '66', '0', '0', '0', '0', 'The Madness Within: Shen\'dralar Spirit - Emote OneShotSalute');

DELETE FROM dbscripts_on_relay WHERE id='7463';
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, data_flags, dataint, comments) VALUES 
('7463', '1000', '36', '0', '0', '0', '0', '0', 'The Madness Within: Shen\'dralar Ancient - The Madness Within: Shen\'dralar Spirit - Face Player'),
('7463', '9000', '1', '2', '0', '0', '0', '0', 'The Madness Within: Shen\'dralar Spirit - Emote OneShotBow');

DELETE FROM dbscripts_on_relay WHERE id='7464';
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, data_flags, dataint, comments) VALUES 
('7464', '1000', '36', '0', '0', '0', '0', '0', 'The Madness Within: Shen\'dralar Ancient - The Madness Within: Shen\'dralar Spirit - Face Player'),
('7464', '11000', '1', '21', '0', '0', '0', '0', 'The Madness Within: Shen\'dralar Spirit - Emote OneShotApplaud'),
('7464', '23000', '1', '2', '0', '0', '0', '0', 'The Madness Within: Shen\'dralar Spirit - Emote OneShotBow');

DELETE FROM dbscripts_on_relay WHERE id='7465';
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, data_flags, dataint, comments) VALUES 
('7465', '1000', '36', '0', '0', '0', '0', '0', 'The Madness Within: Shen\'dralar Ancient - The Madness Within: Shen\'dralar Spirit - Face Player'),
('7465', '11000', '1', '4', '0', '0', '0', '0', 'The Madness Within: Shen\'dralar Spirit - Emote OneShotCheer');


DELETE FROM dbscripts_on_relay WHERE id='7466';
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, data_flags, dataint, comments) VALUES 
('7466', '1000', '36', '0', '0', '0', '0', '0', 'The Madness Within: Shen\'dralar Ancient - The Madness Within: Shen\'dralar Spirit - Face Player'),
('7466', '27000', '1', '21', '0', '0', '0', '0', 'The Madness Within: Shen\'dralar Spirit - Emote OneShotApplaud');

DELETE FROM dbscripts_on_relay WHERE id='7467';
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, data_flags, dataint, comments) VALUES 
('7467', '1000', '36', '0', '0', '0', '0', '0', 'The Madness Within: Shen\'dralar Ancient - The Madness Within: Shen\'dralar Spirit - Face Player'),
('7467', '28000', '1', '66', '0', '0', '0', '0', 'The Madness Within: Shen\'dralar Spirit - Emote OneShotSalute');

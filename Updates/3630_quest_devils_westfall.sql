DELETE FROM dbscripts_on_quest_end WHERE id='1076';
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, data_flags, dataint, x, y, z, o, comments) VALUES 
('1076', '0', '15', '6671', '0', '0', '4', '0', '0', '0', '0', '0', 'Devils in Westfall: Collin Mauren - Cast Spell Create Scroll'),
('1076', '1000', '0', '0', '0', '0', '0', '1437', '0', '0', '0', '0', 'Devils in Westfall: Collin Mauren - Say Text');

UPDATE quest_template SET CompleteScript=1076 WHERE entry=1076;

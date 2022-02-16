DELETE FROM dbscripts_on_quest_end WHERE id='5230';
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, data_flags, dataint, comments) VALUES 
('5230', '0', '15', '23947', '2', '0', '0', '0', 'Return to the Bulwark: Shadow Priestess Vandis - Cast Spell Power Word: Fortitude');

UPDATE quest_template SET CompleteScript=5230 WHERE entry IN (5230, 5232, 5234, 5236);

DELETE FROM dbscripts_on_quest_end WHERE id='737';
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, data_flags, dataint, x, y, z, o, comments) VALUES 
('737', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Forbidden Knowledge: Theldurin the Lost - Set ActiveObject'),
('737', '0', '0', '0', '0', '0', '0', '923', '0', '0', '0', '0', 'Forbidden Knowledge: Theldurin the Lost - Say Text'),
('737', '0', '28', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Forbidden Knowledge: Theldurin the Lost - Set Stand State to Kneel'),
('737', '2000', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Forbidden Knowledge: Theldurin the Lost - Set Stand State to Stand'),
('737', '3000', '1', '34', '0', '0', '0', '0', '0', '0', '0', '0', 'Forbidden Knowledge: Theldurin the Lost - Emote OneShotWoundCritical'),
('737', '3000', '15', '4947', '0', '0', '4', '0', '0', '0', '0', '0', 'Forbidden Knowledge: Theldurin the Lost - Cast Spell Magic Backlash'),
('737', '3000', '0', '0', '0', '0', '0', '924', '0', '0', '0', '0', 'Forbidden Knowledge: Theldurin the Lost - Say Text'),
('737', '5000', '0', '0', '0', '0', '0', '934', '0', '0', '0', '0', 'Forbidden Knowledge: Theldurin the Lost - Say Text'),
('737', '5000', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Forbidden Knowledge: Theldurin the Lost - Remove ActiveObject');

UPDATE quest_template SET CompleteScript=737 WHERE entry=737;
-- Update broadcast text, id 923 is an emote 
UPDATE broadcast_text SET ChatTypeID='2' WHERE (Id='923');

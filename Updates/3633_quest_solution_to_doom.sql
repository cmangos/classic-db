DELETE FROM dbscripts_on_quest_end WHERE id='709';
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, data_flags, dataint, x, y, z, o, comments) VALUES 
('709', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Solution to Doom: Theldurin the Lost - Set ActiveObject'),
('709', '0', '0', '0', '0', '0', '0', '914', '0', '0', '0', '0', 'Solution to Doom: Theldurin the Lost - Say Text'),
('709', '0', '28', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Solution to Doom: Theldurin the Lost - Set Stand State to Kneel'),
('709', '2000', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Solution to Doom: Theldurin the Lost - Set Stand State to Stand'),
('709', '3000', '1', '4', '0', '0', '0', '0', '0', '0', '0', '0', 'Solution to Doom: Theldurin the Lost - Emote OneShotCheer'),
('709', '3000', '0', '0', '0', '0', '0', '915', '0', '0', '0', '0', 'Solution to Doom: Theldurin the Lost - Emote OneShotCheer'),
('709', '3000', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Solution to Doom: Theldurin the Lost - Remove ActiveObject');

UPDATE broadcast_text SET ChatTypeID='2' WHERE (Id='914');
UPDATE quest_template SET CompleteScript=709 WHERE entry=709;

-- Completion script for quest A Gnome's Assistance.
DELETE FROM dbscripts_on_quest_end WHERE id='3941';
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4,x, y, z, o, comments) VALUES 
('3941 ', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '5.84411','A Gnome\'s Assistance: J.D. Collie - Set Orientation'),
('3941 ', '0', '21', '1', '0', '0', '0', '0', '0','0', '0', '0', '0', '0','0', '0', '0','A Gnome\'s Assistance: J.D. Collie - Set ActiveObject State'),
('3941 ', '1000', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','-6025.34', '-1020.62', '-216.039', '0','A Gnome\'s Assistance: J.D. Collie - Move'),
('3941 ', '1000', '29', '3', '0', '0', '0', '0', '0','0', '0', '0', '0','0', '0', '0', '0','A Gnome\'s Assistance: J.D. Collie - Remove NPC Flags QUEST_GIVER and GOSSIP'),
('3941 ', '7000', '0', '0', '0', '0', '0', '0', '0','4839', '4840', '4841', '4842', '0', '0', '0', '0','A Gnome\'s Assistance: J.D. Collie - Say Text'),
('3941 ', '10000', '1', '69', '0', '0', '0', '0', '0','0', '0', '0', '0', '0','0', '0', '0','A Gnome\'s Assistance: J.D. Collie - Set Emote State to STATE_USESTANDING'),
('3941 ', '10000', '0', '0', '0', '0', '0', '0', '0','4846', '0', '0', '0', '0', '0', '0', '0','A Gnome\'s Assistance: J.D. Collie - Say Text'),
('3941 ', '16000', '1', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0','A Gnome\'s Assistance: J.D. Collie - Set Emote State to ONESHOT_NONE'),
('3941 ', '16000', '0', '0', '0', '0', '0', '0', '0','4847', '0', '0', '0', '0', '0', '0', '0','A Gnome\'s Assistance: J.D. Collie - Say Text'),
('3941 ', '20000', '1', '34', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0','A Gnome\'s Assistance: J.D. Collie - Set Emote OneShotWoundCritical'),
('3941 ', '20000', '15', '14208', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0','A Gnome\'s Assistance: J.D. Collie - Cast Spell JD Explosion'),
('3941 ', '20000', '0', '', '0', '0', '0', '0', '0', '4852', '0', '0', '0', '0', '0', '0', '0','A Gnome\'s Assistance: J.D. Collie - Say Text'),
('3941 ', '23000', '1', '18', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0','A Gnome\'s Assistance: J.D. Collie - Set Emote OneShotCry'),
('3941 ', '23000', '0', '', '0', '0', '0', '0', '0', '4853', '0', '0', '0', '0', '0', '0', '0','A Gnome\'s Assistance: J.D. Collie - Say Text'),
('3941 ', '26000', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','-6033.25', '-1017.56', '-217.052', '0.872665','A Gnome\'s Assistance: J.D. Collie - Move'),
('3941 ', '29000', '29', '3', '1', '0', '0', '0', '0','0', '0', '0', '0','0', '0', '0', '0','A Gnome\'s Assistance: J.D. Collie - Remove NPC Flags QUEST_GIVER and GOSSIP'),
('3941 ', '29000', '21', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0','0', '0', '0','A Gnome\'s Assistance: J.D. Collie - Remove ActiveObject State');

UPDATE quest_template SET CompleteScript=3941 WHERE entry=3941;

-- Define coordinates for spell JD Explosion.
DELETE FROM spell_target_position WHERE id='14208';
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES (14208, 1, -6025.75, -1021.17, -216, 0);

-- This Text is an Emote
UPDATE broadcast_text SET ChatTypeID='2' WHERE (Id='4846');

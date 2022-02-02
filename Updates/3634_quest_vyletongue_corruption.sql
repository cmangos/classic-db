DELETE FROM dbscripts_on_quest_start WHERE id='7041';
INSERT INTO dbscripts_on_quest_start (id, delay, priority, command, datalong, datalong2, datalong3, data_flags, dataint, x, y, z, o, comments) VALUES 
('7041', '0', '0','21', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Vyletongue Corruption: Talendria - Set ActiveObject'),
('7041', '0', '0', '29', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Vyletongue Corruption: Talendria - Remove NPC Flags'),
('7041', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0.663225', 'Vyletongue Corruption: Talendria - Set Orientation'),
('7041', '0', '1', '1', '25', '0', '0', '0', '0', '0', '0', '0', '0', 'Vyletongue Corruption: Talendria - Emote OneShotPoint'),
('7041', '1000', '0', '0', '0', '0', '0', '0', '8923', '0', '0', '0', '0', 'Vyletongue Corruption: Talendria - Remove NPC Flags'),
('7041', '3000', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2.58309', 'Vyletongue Corruption: Talendria - Set Orientation'),
('7041', '4000', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Vyletongue Corruption: Talendria - Remove ActiveObject'),
('7041', '4000', '0', '29', '2', '1', '0', '0', '0', '0', '0', '0', '0', 'Vyletongue Corruption: Talendria - Add Npc Flags');

UPDATE quest_template SET StartScript=7041 WHERE entry=7041;

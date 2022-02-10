DELETE FROM dbscripts_on_quest_end WHERE id='2204';
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, data_flags, dataint, x, y, z, o, comments) VALUES 
('2204', '0', '21', '1', '0', '0', '0', '4', '0', '0', '0', '0', 'Restoring the Necklace: Talvash del Kissel - Set ActiveObject'),
('2204', '0', '3', '0', '0', '0', '0', '0', '-4574.79', '-998.688', '503.657', '100', 'Restoring the Necklace: Talvash del Kissel - Move'),
('2204', '0', '0', '0', '0', '0', '0', '3121', '0', '0', '0', '0', 'Restoring the Necklace: Talvash del Kissel - Say Text'),
('2204', '0', '29', '3', '0', '0', '0', '0', '0', '0', '0', '0', 'Restoring the Necklace: Talvash del Kissel - Remove NPC Flags QUEST_GIVER and GOSSIP'),
('2204', '10000', '0', '0', '0', '0', '0', '3122', '0', '0', '0', '0', 'Restoring the Necklace: Talvash del Kissel - Say Text'),
('2204', '13000', '1', '5', '0', '0', '0', '0', '0', '0', '0', '0', 'Restoring the Necklace: Talvash del Kissel - Emote OneShotExclamation'),
('2204', '13000', '3', '0', '0', '0', '0', '0', '-4580.49', '-993.985', '503.657', '100', 'Restoring the Necklace: Talvash del Kissel - Move'),
('2204', '13000', '0', '0', '0', '0', '0', '3123', '0', '0', '0', '0', 'Restoring the Necklace: Talvash del Kissel - Say Text'),
('2204', '18000', '1', '16', '0', '0', '0', '0', '0', '0', '0', '0', 'Restoring the Necklace: Talvash del Kissel - Emote OneShotKneel'),
('2204', '21000', '3', '0', '0', '0', '0', '0', '-4588.3', '-1001.21', '503.657', '3.31613', 'Restoring the Necklace: Talvash del Kissel - Move'),
('2204', '21000', '0', '0', '0', '0', '0', '3124', '0', '0', '0', '0', 'Restoring the Necklace: Talvash del Kissel - Say Text'),
('2204', '26000', '15', '9795', '0', '0', '4', '0', '0', '0', '0', '0', 'Restoring the Necklace: Talvash del Kissel - Cast Spell Talvash\'s Necklace Repair'),
('2204', '34000', '1', '4', '0', '0', '0', '0', '0','0', '0', '0', 'Restoring the Necklace: Talvash del Kissel - Emote OneShotCheer'),
('2204', '34000', '29', '3', '1', '0', '0', '0','0', '0', '0', '0', 'Restoring the Necklace: Talvash del Kissel - Add NPC Flags QUEST_GIVER and GOSSIP'),
('2204', '34000', '0', '0', '0', '0', '0', '3125', '0', '0', '0', '0', 'Restoring the Necklace: Talvash del Kissel - Say Text'),
('2204', '34000', '21', '0', '0', '0', '0', '4', '0', '0', '0', '0', 'Restoring the Necklace: Talvash del Kissel - Remove ActiveObject');

UPDATE quest_template SET CompleteScript=2204 WHERE entry=2204;

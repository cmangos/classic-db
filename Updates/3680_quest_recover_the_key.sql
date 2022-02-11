DELETE FROM dbscripts_on_quest_end WHERE id='7846';
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, data_flags, dataint, comments) VALUES 
('7846', '0', '28', '0', '0', '0', '0', '0', 'Recover the Key!: Elder Torntusk - Stand Up'),
('7846', '0', '29', '1', '0', '0', '0', '0', 'Recover the Key!: Elder Torntusk - Remove Npc Flags'),
('7846', '0', '21', '1', '0', '0', '4', '0', 'Recover the Key!: Elder Torntusk - Set ActiveObject'),
('7846', '1000', '1', '15', '0', '0', '0', '0', 'Recover the Key!: Elder Torntusk - Emote OneShotRoar'),
('7846', '5000', '1', '4', '0', '0', '0', '0', 'Recover the Key!: Elder Torntusk - Emote OneShotCheer'),
('7846', '5000', '0', '0', '0', '0', '0', '10013', 'Recover the Key!: Elder Torntusk - Say Text'),
('7846', '308000', '29', '1', '1', '0', '0', '0', 'Recover the Key!: Elder Torntusk - Add NPC Flags'),
('7846', '308000', '21', '0', '0', '0', '4', '0', 'Recover the Key!: Elder Torntusk - Set InActiveObject'),
('7846', '308000', '28', '7', '0', '0', '0', '0', 'Recover the Key!: Elder Torntusk - State Dead');

UPDATE quest_template SET CompleteScript=7846, SpecialFlags=0 WHERE entry=7846;

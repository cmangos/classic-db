DELETE FROM dbscripts_on_quest_start WHERE id='3625';
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, data_flags, dataint, comments) VALUES 
('3625', '0', '21', '1', '0', '0', '0', '0', 'Enchanted Azsharite Fel Weaponry: Galvan the Ancient - Set ActiveObject'),
('3625', '0', '1', '173', '0', '0', '0', '0', 'Enchanted Azsharite Fel Weaponry: Galvan the Ancient - Set Emote State to Work'),
('3625', '5000', '1', '0', '0', '0', '0', '0', 'Enchanted Azsharite Fel Weaponry: Galvan the Ancient - Set Emote State to None'),
('3625', '5000', '7', '3625', '0', '0', '0', '0', 'Enchanted Azsharite Fel Weaponry: Player - Complete Quest'),
('3625', '5000', '0', '0', '0', '0', '0', '4542', 'Enchanted Azsharite Fel Weaponry: Galvan the Ancient - Say Text');

UPDATE quest_template SET CompleteScript=3625 WHERE entry=3625;

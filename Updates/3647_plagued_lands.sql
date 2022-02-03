-- Completion script for quest Plagued Lands.
DELETE FROM dbscripts_on_quest_end WHERE id='2118';
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, x, y, z, o, comments) VALUES 
('2118 ', '0', '31', '11836', '30', '0', '0', '0', '0','0', '0', '0', '0', '0','Plagued Lands: Terminate Script if Captured Rabid Thistle Bear is not found'),
('2118 ', '1000', '36', '0', '0', '0', '11836', '30', '1', '0','0', '0', '0', '0','Plagued Lands: Tharnariun Treetender - Turn to Captured Rabid Thistle Bear'),
('2118 ', '2000', '1', '5', '0', '0', '0', '0', '0', '0','0', '0', '0', '0','Plagued Lands: Tharnariun Treetender - Emote OneShotExclamation'),
('2118 ', '2000', '13', '0', '0', '0', '177187', '30', '1', '0','0', '0', '0', '0','Plagued Lands: Tharnariun Treetender - Activate GameObject'),
('2118 ', '2000', '0', '0', '0', '0', '0', '0', '0', '5937','0', '0', '0', '0','Plagued Lands: Tharnariun Treetender - Say Text'),
('2118 ', '2000', '1', '33', '0', '0', '11836', '30', '0','0', '0', '0', '0', '0','Plagued Lands: Captured Rabid Thistle Bear - Emote OneShotWound'),
('2118 ', '6000', '28', '7', '0',  '0', '11836', '30', '0','0','0', '0', '0', '0','Plagued Lands: Captured Rabid Thistle Bear - Set Stand State to Dead'),
('2118 ', '7000', '18', '33', '0', '0',  '11836', '30', '1','0','0', '0', '0', '0','Plagued Lands: Captured Rabid Thistle Bear - Despawn Creature');

UPDATE quest_template SET CompleteScript=2118 WHERE entry=2118;

-- Assign correct spawn orientation and respawn time for Tharnariun Treetender.
UPDATE creature SET orientation=1.91986, spawntimesecsmin=480, spawntimesecsmax=480 WHERE id=3701;

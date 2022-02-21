-- Start script for quest The Binding.
DELETE FROM dbscripts_on_quest_start WHERE id='1795';
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, data_flags, dataint, dataint2, dataint3, dataint4,x, y, z, o, comments) VALUES 
('1795 ', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', 'The Binding: Strahad Farsan - Set ActiveObject'),
('1795 ', '1000', '29', '2', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', 'The Binding: Strahad Farsan - Remove QuestGiver Npc Flags'),
('1795 ', '1000', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', 'The Binding: Strahad Farsan - Emote OneShotTalk'),
('1795 ', '1000', '0', '0', '0', '0', '0', '2370', '0', '0', '0', '0','0', '0', '0', 'The Binding: Strahad Farsan - Say Text'),
('1795 ', '4000', '3', '0', '0', '0', '0', '0', '0', '0','0', '-780.438', '-3718.21', '42.1855', '0', 'The Binding: Strahad Farsan - Move'),
('1795 ', '6000', '3', '0', '0', '0', '0', '0', '0', '0','0', '-769.382', '-3721.35', '42.4199', '0', 'The Binding: Strahad Farsan - Move'),
('1795 ', '14000', '15', '8677', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', 'The Binding: Strahad Farsan - Cast Spell Summon Effect');

UPDATE quest_template SET StartScript=1795 WHERE entry=1795;

-- Success script for quest The Binding.
DELETE FROM dbscripts_on_relay WHERE id='17950';
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint4,x, y, z, o, comments) VALUES 
('17950', '0', '29', '3', '1', '0', '6254', '30', '0', '0', '0', '0', '0', '0', '0', 'The Binding: Acolyte Wytula - Add NpcFlags'),
('17950', '0', '29', '3', '1', '0', '6252', '30', '0', '0', '0', '0', '0', '0', '0', 'The Binding: Acolyte Magaz - Add NpcFlags'),
('17950 ', '0', '3', '0', '0', '0', '0', '0', '0', '0','0', '-776.003', '-3718.86', '42.6078', '0', 'The Binding: Strahad Farsan - Move'),
('17950 ', '4000', '3', '0', '0', '0', '0', '0', '0', '0','0', '-782.851', '-3718.55', '41.5492', '0', 'The Binding: Strahad Farsan - Move'),
('17950 ', '7000', '3', '0', '0', '0', '0', '0', '0', '0','0', '-785.161', '-3721.88', '40.8014', '0', 'The Binding: Strahad Farsan - Move'),
('17950 ', '10000', '3', '0', '0', '0', '0', '0', '0', '0','0', '-785.912', '-3723.26', '40.4528', '0', 'The Binding: Strahad Farsan - Move'),
('17950 ', '11000', '3', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '2.0594', 'The Binding: Strahad Farsan - Move'),
('17950 ', '13000', '29', '51', '1', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', 'The Binding: Strahad Farsan - Add Npc Flags'),
('17950 ', '13000', '21', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', 'The Binding: Strahad Farsan - Remove ActiveObject');

-- Quest Failed (Triggered after 3minutes) 
DELETE FROM dbscripts_on_relay WHERE id='17951';
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint4,x, y, z, o, comments) VALUES 
('17951', '185000', '0', '31', '6251', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','The Binding: Only terminate script when in range with Strahad Farsan'),
('17951', '185000', '1', '45', '17953', '0', '0', '6251', '6', '0', '0', '0', '0', '0', '0', '0', 'The Binding: Start Fail Script');

-- Quest Failed (Player died or Summoned Felhunter is longer then 6 second OOC)
DELETE FROM dbscripts_on_relay WHERE id='17952';
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint4,x, y, z, o, comments) VALUES 
('17952', '0', '0',  '45', '17953', '0', '0', '6251', '20', '0', '0', '0', '0', '0', '0', '0', 'The Binding: Start Fail Script'),
('17952', '1000', '1',  '18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'The Binding: Despawn Self');

-- Failure Script
DELETE FROM dbscripts_on_relay WHERE id='17953';
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint4,x, y, z, o, comments) VALUES 
('17953', '0', '0', '29', '2', '1', '0', '6254', '30', '0', '0', '0', '0', '0', '0', '0', 'The Binding: Acolyte Wytula - Add QuestGiver NpcFlags'),
('17953', '0', '0', '29', '2', '1', '0', '6252', '30', '0', '0', '0', '0', '0', '0', '0', 'The Binding: Acolyte Magaz - Add QuestGiver NpcFlags'),
('17953', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0','0', '-776.003', '-3718.86', '42.6078', '0', 'The Binding: Strahad Farsan - Move'),
('17953', '3000', '0', '3', '0', '0', '0', '0', '0', '0', '0','0', '-782.851', '-3718.55', '41.5492', '0', 'The Binding: Strahad Farsan - Move'),
('17953', '6000', '0', '3', '0', '0', '0', '0', '0', '0', '0','0', '-785.161', '-3721.88', '40.8014', '0', 'The Binding: Strahad Farsan - Move'),
('17953', '11000', '0', '3', '0', '0', '0', '0', '0', '0', '0','0', '-785.912', '-3723.26', '40.4528', '0', 'The Binding: Strahad Farsan - Move'),
('17953', '13000', '0', '3', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '2.0594', 'The Binding: Strahad Farsan - Move'),
('17953', '14000', '0','29', '2', '1', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', 'The Binding: Strahad Farsan - Add Npc Flags'),
('17953', '14000', '0', '21', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', 'The Binding: Strahad Farsan - Remove ActiveObject');

-- Script when Strahad Farsan casts spell Summon Effect
DELETE FROM dbscripts_on_event WHERE id='1428';
INSERT INTO dbscripts_on_event (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, x, y, z, o, comments) VALUES 
('1428', '0', '0',  '9', '29205', '190', '0', '0', '0', '0', '0','0', '0', '0', '0', 'The Binding: Summon GameObject Strahad\'s Summoning Circle'),
('1428', '2000', '0', '1', '2', '0', '0', '6253', '30', '0', '0', '0', '0', '0', '0', 'The Binding: Acolyte Fenrick - Emote OneShotBow'),
('1428', '2000', '0', '1', '2', '0', '0', '6254', '30', '0', '0', '0', '0', '0', '0', 'The Binding: Acolyte Wytula - Emote OneShotBow'),
('1428', '2000', '0', '1', '2', '0', '0', '6252', '30', '0', '0', '0', '0', '0', '0', 'The Binding: Acolyte Magaz - Emote OneShotBow'),
('1428', '2000', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'The Binding: Strahad Farsan - Emote OneShotTalk'),
('1428', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '2374', '0', '0', '0', '0', 'The Binding: Strahad Farsan - Say Text'),
('1428', '2000', '0', '29', '2', '0', '0', '6254', '30', '0', '0', '0', '0', '0', '0', 'The Binding: Acolyte Wytula - Remove QuestGiver NpcFlags'),
('1428', '2000', '0', '29', '2', '0', '0', '6252', '30', '0', '0', '0', '0', '0', '0', 'The Binding: Acolyte Magaz - Remove QuestGiver  NpcFlags'),
('1428', '5000', '0', '3', '0', '0', '0', '0', '0', '0', '0', '-763.195', '-3720.34', '42.2333', '0', 'The Binding: Strahad Farsan - Move'),
('1428', '5000', '0', '15', '8675', '0', '0', '6253', '30', '0', '0', '0', '0', '0', '0', 'The Binding: Acolyte Fenrick - Cast Spell Warlock Channeling'),
('1428', '5000', '0', '15', '8675', '0', '0', '6254', '30', '0', '0', '0', '0', '0', '0', 'The Binding: Acolyte Wytula - Cast Spell Warlock Channeling'),
('1428', '5000', '0', '15', '8675', '0', '0', '6252', '30', '0', '0', '0', '0', '0', '0', 'The Binding: Acolyte Magaz - Cast Spell Warlock Channeling'),
('1428', '8000', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.15487', 'The Binding: Strahad Farsan - Set Facing'),
('1428', '14000', '0',  '9', '50355', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'The Binding: Summon GameObject Summoning Circle'),
('1428', '14000', '0',  '45', '17951', '0', '0', '6253', '20', '0', '0', '0', '0', '0', '0', 'The Binding: Start Fail CheckScript');

-- Script when player uses item Tome of the Cabal.
DELETE FROM dbscripts_on_event WHERE id='1449';
INSERT INTO dbscripts_on_event (id, delay, priority,command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint4,x, y, z, o, comments) VALUES 
('1449', '0', '0', '10', '6268', '120000', '0', '0', '0', '0', '0', '6268', '-768.601', '-3721.96', '42.4778', '2.79253', 'The Binding: Summon Creature Summoned Felhunter'),
('1449', '0', '1', '40', '0', '0', '0', '0', '29205', '23', '0', '0', '0', '0', '0', '0','The Binding: Strahad\'s Summoning Circle - Despawn'),
('1449', '0', '2', '40', '0', '0', '0', '0', '50355', '23', '0', '0', '0', '0', '0', '0','The Binding: Summoning Circle - Despawn'),
('1449', '1000', '0', '1', '34', '0', '0', '6253', '30', '0', '0', '0', '0', '0', '0', '0','The Binding: Acolyte Fenrick - Emote OneShotWoundCritical'),
('1449', '1000', '1', '1', '34', '0', '0', '6254', '30', '0', '0', '0', '0', '0', '0', '0','The Binding: Acolyte Wytula - Emote OneShotWoundCritical'),
('1449', '1000', '2', '1', '34', '0', '0', '6252', '30', '0', '0', '0', '0', '0', '0', '0','The Binding: Acolyte Magaz - Emote OneShotWoundCritical');

-- Spawn script for Summoned Felhunter.
DELETE FROM dbscripts_on_relay WHERE id='6268';
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint4,x, y, z, o, comments) VALUES 
('6268 ', '2000', '22', '14', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', 'The Binding: Summoned Felhunter - Set Faction');

-- Summoned Felhunter dies - Quest Success
INSERT INTO dbscripts_on_creature_death (id, command, datalong, buddy_entry, search_radius, comments) VALUES 
('6268', '45', '17950', '6251', '20', 'Start Relay Script');

DELETE FROM creature_spawn_data_template WHERE entry='6268';
INSERT INTO creature_spawn_data_template (Entry, RelayId) VALUES 
('6268', '6268');

-- Correct spawn position and let objects just spawn via event script.
UPDATE gameobject SET position_x='-768.659', position_y='-3721.86', position_z='42.3966', orientation='4.55531', spawntimesecsmin='-1', spawntimesecsmax='-1' WHERE (guid='29205');
UPDATE gameobject SET position_x='-768.692', position_y='-3721.9', position_z='42.3976', orientation='2.68781', spawntimesecsmin='-1', spawntimesecsmax='-1' WHERE (guid='50355');

-- - Update gameobject templates.
UPDATE gameobject_template SET size=2.5, faction=35 WHERE entry=92252;
UPDATE gameobject_template SET size=2.5, faction=35 WHERE entry=92388;

-- Define targets for spell Summon Felhunter.
DELETE FROM spell_script_target WHERE entry=8712;
INSERT INTO spell_script_target (entry, targetEntry) VALUES ('8712', '92388');
INSERT INTO spell_script_target (entry, targetEntry) VALUES ('8712', '92252');

-- Correct data for Summoned Felhunter.
UPDATE creature_template SET faction=35, MeleeBaseAttackTime=2000, SpeedWalk=1, SpeedRun=1.14286, MovementType=0 WHERE entry=6268; 

DELETE FROM dbscripts_on_quest_start WHERE id='3508';
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, data_flags, dataint, comments) VALUES 
('3508', '0', '21', '1', '0', '0', '0', '0',   'Breaking the Ward: Loramus Thalipedes - Set ActiveObject'),
('3508', '0', '36', '0', '0', '0', '0', '0', 'Breaking the Ward: Loramus Thalipedes - Turn to Player'),
('3508', '0', '29', '3', '0', '0', '0', '0', 'Breaking the Ward: Loramus Thalipedes - Remove NpcFlags'),
('3508', '1000', '0', '0', '0', '0', '0', '4489', 'Breaking the Ward: Loramus Thalipedes - Say Text'),
('3508', '1000', '15', '12655', '0', '0', '4', '0', 'Breaking the Ward: Loramus Thalipedes - Cast Spell Enlightenment'),
('3508', '4000', '28', '8', '0', '0', '0', '0', 'Breaking the Ward: Loramus Thalipedes - Kneel Down'),
('3508', '9000', '28', '0', '0', '0', '0', '0', 'Breaking the Ward: Loramus Thalipedes - Stand Up'),
('3508', '9000', '21', '0', '0', '0', '0', '0',   'Breaking the Ward: Loramus Thalipedes - Remove ActiveObject'),
('3508', '9000', '29', '3', '1', '0', '0', '0', 'Breaking the Ward: Loramus Thalipedes - Add NpcFlags');

UPDATE quest_template SET StartScript=3508 WHERE entry=3508;

UPDATE broadcast_text SET ChatTypeID='2' WHERE (Id='4489');

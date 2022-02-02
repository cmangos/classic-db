DELETE FROM dbscripts_on_quest_end WHERE id='3913';
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, data_flags, dataint, x, y, z, o, comments) VALUES 
('3913', '0', '9', '82781', '9', '0', '0', '0', '0', '0', '0', '0', 'A Grave Situation: Respawn GameObject Aura 1 Linken'),
('3913', '0', '9', '82782', '9', '0', '0', '0', '0', '0', '0', '0', 'A Grave Situation: Respawn GameObject Aura 1 Linken');
UPDATE quest_template SET CompleteScript=3913 WHERE entry=3913;

-- Update Aura objects
UPDATE gameobject SET orientation=-4.53786, spawntimesecsmin=-9, spawntimesecsmax=-9, animprogress=100 WHERE id=164826;
UPDATE gameobject SET orientation=-4.90438, spawntimesecsmin=-9, spawntimesecsmax=-9, animprogress=100 WHERE id=164827;

-- Move GUID of existing spawn for GUID 50195
UPDATE pool_gameobject SET guid=5 WHERE guid=50195;
UPDATE gameobject SET guid=5 WHERE guid=50195;

-- https://tbc.wowhead.com/quest=2879/the-stave-of-equinex
DELETE FROM gameobject WHERE guid='50195'; -- free
DELETE FROM gameobject WHERE guid='50224'; -- free
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES 
('50195', '146082', '1', '1', '-2976.61', '2743.18', '52.4701', '0.680677', '0', '0', '0.333806', '0.942642', '-22', '-22', '100', '1'),
('50224', '146083', '1', '1', '-2977.17', '2743.14', '52.4016', '6.21337', '0', '0', '-0.0348988', '0.999391', '-22', '-22', '100', '1');

DELETE FROM dbscripts_on_quest_end WHERE id='2879';
INSERT INTO dbscripts_on_quest_end (id, command, datalong, datalong2, comments) VALUES 
('2879', '9', '50195', '22', 'The Stave of Equinex: Equinex Monolith Lights 1 - Respawn GameObject'),
('2879', '9', '50224', '22', 'The Stave of Equinex: Equinex Monolith Lights 2 - Respawn GameObject');

UPDATE quest_template SET CompleteScript='2879' WHERE (entry='2879');

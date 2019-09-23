UPDATE gameobject_template SET faction=114 WHERE entry IN(179556,179558,179881,179882);
-- sniffed positions
DELETE FROM gameobject WHERE id IN(179556,179558,179881,179882);
INSERT INTO gameobject(guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(40134, 179556, 1, 1536.944, -4409.441, 8.059354, 1.640607, 0, 0, 0.7313528, 0.6819993, -21600, -21600, 0, 2),
(40135, 179558, 0, -8971.194, 554.1409, 105.9719, -2.251474, 0, 0, -0.902585, 0.4305117, -21600, -21600, 0, 2),
(40150, 179881, 1, 1537.892, -4421.62, 7.553038, -1.151916, 0, 0, -0.5446386, 0.8386708, -21600, -21600, 255, 1),
(40151, 179882, 0, -8926.29, 495.8559, 103.4651, 2.373644, 0, 0, 0.9271832, 0.3746083, -21600, -21600, 255, 1);

-- Add missing scales for head of nefarian GOs
UPDATE gameobject_template SET size=1.25 WHERE entry IN(179881);
UPDATE gameobject_template SET size=1.15 WHERE entry IN(179882);


-- Remove casting of rallying cry of the dragonslayer from DB in core now
DELETE FROM dbscripts_on_quest_end WHERE command=15 AND datalong=22888;

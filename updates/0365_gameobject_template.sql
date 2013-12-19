-- Fixed gameobject 181126 (Anub'Rekhan Door): set data0 to 0 and state to 1 as
-- this object should be closed at spawn instead of open: players have to open it
-- in order to engage Anub'Rehkan
-- Thanks Metalica for pointing
-- Thanks Xfurry for fixing 
UPDATE `gameobject_template` SET `data0` = 0, `faction` = 0 WHERE `entry` = 181126;
UPDATE `gameobject` SET `state` = 1 WHERE `id` = 181126;

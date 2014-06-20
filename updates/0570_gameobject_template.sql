-- Fixed visual effect of GO 180647 (Sand Trap) in Ruins of Ahn'Qiraj
-- Thanks Scotty0100 for pointing. This closes #428 
UPDATE `gameobject_template` SET `data6` = 1000 WHERE `entry` = 180647;

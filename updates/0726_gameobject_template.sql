-- Fixed size of GO 179516 (Fengus Chest) in Dire Maul North
-- Thanks Metalica for pointing and fixing. This closes #564
UPDATE `gameobject_template` SET `size` = 2 WHERE `entry` = 179516;

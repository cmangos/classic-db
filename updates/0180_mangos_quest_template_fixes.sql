-- fixing Quest 5151 Hypercapacitor Gizmo
UPDATE `creature_template` SET `unit_flags` = 832 WHERE `entry` = 10992;
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` = 10992;
DELETE FROM `dbscripts_on_go_use` WHERE `id` = 16775;
INSERT INTO `dbscripts_on_go_use` VALUES (16775,1,3,0,0,10992,20,0,0,0,0,0,-4680.1,-1439.24,-50.49,5.77704,'Panther Move');
INSERT INTO `dbscripts_on_go_use` VALUES (16775,2,22,16,49,10992,20,0,0,0,0,0,0,0,0,0,'Panther set faction');

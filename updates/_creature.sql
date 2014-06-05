-- correct spawnposition of lucifron & adds(ID 12118 & 12119)

DELETE FROM `creature` where id = 12118 or id = 12119;

INSERT INTO `creature` (`guid`,`id`,`map`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES 
(56605,12118,409,0,938,1068.86,-1007.76,-185.24,2.3,604800,5,0,351780,39300,0,2),
(56606,12119,409,12030,0,1067.9,-1011.6,-185.08,2.34,7200,5,0,90650,25680,0,0),
(56607,12119,409,12030,0,1072.56,-1006.57,-185.91,2.4,7200,5,0,90650,25680,0,0);
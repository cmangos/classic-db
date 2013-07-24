-- Quest end script for Quest 524 Elixir Of Agony
UPDATE `creature` SET `spawntimesecs` = 180 WHERE `id` = 2284;
UPDATE `gameobject` SET `spawntimesecs` = -10 WHERE `guid` = 30031;
DELETE FROM `gameobject` WHERE `guid` = 55530;
INSERT INTO `gameobject` VALUES (55530,1730,0,0.437117,-942.794,61.9384,-2.54818,0,0,0,0,-10,100,1);
UPDATE `quest_template` SET `CompleteScript` = 524 WHERE `entry` = 524;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 524;
INSERT INTO `dbscripts_on_quest_end` VALUES
(524,1,9,30031,30,0,0,0,0,0,0,0,0,0,0,0,'Spawn Keg');
(524,2,9,55530,30,0,0,0,0,0,0,0,0,0,0,0,'Spawn Keg Smoke'),
(524,4,3,0,0,2284,15891,16,0,0,0,0,0.524,-944.41,61.93,1.66,'Move first'),
(524,4,3,0,0,2284,15893,16,0,0,0,0,0.439,-940.84,61.93,4.94,'Move second'),
(524,4,3,0,0,2284,15892,16,0,0,0,0,-1.632,-942.43,61.93,6.14,'Move third'),
(524,7,15,5,0,2284,15891,17,0,0,0,0,0,0,0,0,'Kill first'),
(524,8,15,5,0,2284,15893,17,0,0,0,0,0,0,0,0,'Kill second'),
(524,9,15,5,0,2284,15892,17,0,0,0,0,0,0,0,0,'Kill third');

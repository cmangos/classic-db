
SET @GUID := 56853;
DELETE FROM `creature_movement` WHERE `id`= @GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES
(@GUID,1,1051.314,-799.6896,-151.9713,100),
(@GUID,2,1039.667,-791.0968,-151.0096,100),
(@GUID,3,1026.315,-767.8003,-156.6493,100),
(@GUID,4,1038.774,-761.6977,-152.6580,100),
(@GUID,5,1064.627,-748.9409,-151.7516,100),
(@GUID,6,1038.774,-761.6977,-152.6580,100),
(@GUID,7,1026.315,-767.8003,-156.6493,100),
(@GUID,8,1039.641,-791.0518,-150.9892,100),
(@GUID,9,1051.314,-799.6896,-151.9713,100),
(@GUID,10,1040.764,-815.1115,-152.1656,100);

SET @GUID := 56856;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES
(@GUID,1,694.3823,-643.1285,-209.7859,100),
(@GUID,2,691.9941,-667.7454,-209.6549,100),
(@GUID,3,712.6238,-699.4688,-209.7263,100),
(@GUID,4,672.7046,-770.8894,-209.0702,100),
(@GUID,5,696.8894,-727.3798,-209.4279,100),
(@GUID,6,672.7046,-770.8894,-209.0702,100),
(@GUID,7,712.6238,-699.4688,-209.7263,100),
(@GUID,8,691.9941,-667.7454,-209.6549,100),
(@GUID,9,694.3823,-643.1285,-209.7859,100),
(@GUID,10,706.5988,-608.7560,-209.7862,100);

SET @ENTRY := 12056;
UPDATE `creature` SET `position_x`=747.5466, `position_y`=-981.6760, `position_z`=-178.4010, `spawndist`=0,`MovementType`=2 WHERE `id`=@ENTRY;
UPDATE `creature_template` SET `SpeedWalk`=1, `SpeedRun`=2.28571 WHERE `entry`=@ENTRY;
DELETE FROM `creature_movement_template` WHERE `entry`=@ENTRY;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@ENTRY,1,739.9860,-953.2151,-185.7548,100,0,5665501),
(@ENTRY,2,716.3201,-910.8809,-193.1546,100,0,0),
(@ENTRY,3,701.4030,-887.8356,-199.5063,100,0,0),
(@ENTRY,4,675.8235,-847.7932,-208.2585,100,0,0),
(@ENTRY,5,639.0753,-830.6404,-208.4202,100,0,0),
(@ENTRY,6,611.1107,-828.0424,-207.4010,100,0,0),
(@ENTRY,7,591.2252,-811.5459,-205.4029,100,0,0),
(@ENTRY,8,608.8426,-787.6771,-207.4771,100,0,0),
(@ENTRY,9,643.6417,-778.0462,-208.7169,100,0,0),
(@ENTRY,10,664.3234,-786.4120,-208.9517,100,0,0),
(@ENTRY,11,661.6707,-816.6882,-208.7050,100,0,0),
(@ENTRY,12,678.5975,-847.0990,-208.2891,100,0,0),
(@ENTRY,13,699.6382,-878.0820,-201.5386,100,0,0),
(@ENTRY,14,718.3248,-907.4992,-193.3159,100,0,0),
(@ENTRY,15,740.3997,-949.3792,-186.3494,100,0,0),
(@ENTRY,16,746.6027,-966.5585,-181.5636,100,0,0),
(@ENTRY,17,747.5466,-981.6760,-178.4010,100,0,0);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(5665501);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
(5665501,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'Baron Geddon - Run');

SET @ENTRY := 12118;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1000.203,`position_y`=-955.4069,`position_z`=-179.5825 WHERE `id`=@ENTRY;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=1000.203,`position_y`=-955.4069,`position_z`=-179.5825 WHERE `guid` IN (56606, 56607);
DELETE FROM `creature_movement_template` WHERE `entry`=@ENTRY;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`) VALUES
(@ENTRY,1,1007.782,-958.0884,-180.1740,100,0),
(@ENTRY,2,1014.450,-978.5632,-181.1854,100,0),
(@ENTRY,3,1037.022,-986.3419,-181.5163,100,0),
(@ENTRY,4,1053.150,-990.7546,-182.6615,100,0),
(@ENTRY,5,1070.411,-1006.765,-185.5444,100,0),
(@ENTRY,6,1053.979,-989.0480,-182.5530,100,0),
(@ENTRY,7,1039.573,-983.6991,-181.3170,100,0),
(@ENTRY,8,1014.957,-977.6532,-181.2234,100,0),
(@ENTRY,9,1007.782,-958.0884,-180.1740,100,0),
(@ENTRY,10,1000.203,-955.4069,-179.5825,100,0);


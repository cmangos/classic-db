-- Fixed quest 5096 (Scarlet Diversions)
-- Thanks Scotty0100 for pointing. This closes #476 
-- Added missing gameobject entry for spell focus 'Scarlet Crusade Forward Camp'
-- Source: UDB
DELETE FROM `gameobject_template` WHERE `entry` = 300029;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `ScriptName`) VALUES
(300029, 8, 0, 'TEMP Scarlet Crusade Forward Camp', 0, 0, 1, 804, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `gameobject` WHERE `guid` = 99885;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(99885, 300029, 0, 1877.9, -1333.13, 59.92, 0, 0, 0, 0, 1, -180, 0, 1);

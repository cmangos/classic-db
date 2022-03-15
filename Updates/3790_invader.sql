
DELETE FROM `pool_template` WHERE (`entry` = '21326');
DELETE FROM `pool_template` WHERE (`entry` = '25599');
DELETE FROM `pool_template` WHERE (`entry` = '25600');
DELETE FROM `pool_template` WHERE (`entry` = '25601');
DELETE FROM `pool_template` WHERE (`entry` = '25602');
DELETE FROM `pool_template` WHERE (`entry` = '25603');
DELETE FROM `pool_template` WHERE (`entry` = '25604');
DELETE FROM `pool_template` WHERE (`entry` = '25605');
DELETE FROM `pool_template` WHERE (`entry` = '25606');
DELETE FROM `pool_template` WHERE (`entry` = '25607');

DELETE FROM `pool_creature` WHERE (`guid` = '191137');
DELETE FROM `pool_creature` WHERE (`guid` = '191138');
DELETE FROM `pool_creature` WHERE (`guid` = '129214');
DELETE FROM `pool_creature` WHERE (`guid` = '129215');
DELETE FROM `pool_creature` WHERE (`guid` = '129218');
DELETE FROM `pool_creature` WHERE (`guid` = '129219');
DELETE FROM `pool_creature` WHERE (`guid` = '129235');
DELETE FROM `pool_creature` WHERE (`guid` = '129236');
DELETE FROM `pool_creature` WHERE (`guid` = '129245');
DELETE FROM `pool_creature` WHERE (`guid` = '129251');
DELETE FROM `pool_creature` WHERE (`guid` = '129255');
DELETE FROM `pool_creature` WHERE (`guid` = '21301');
DELETE FROM `pool_creature` WHERE (`guid` = '21327');
DELETE FROM `pool_creature` WHERE (`guid` = '21330');
DELETE FROM `pool_creature` WHERE (`guid` = '21325');
DELETE FROM `pool_creature` WHERE (`guid` = '21323');
DELETE FROM `pool_creature` WHERE (`guid` = '21324');
DELETE FROM `pool_creature` WHERE (`guid` = '21318');
DELETE FROM `pool_creature` WHERE (`guid` = '21314');
DELETE FROM `pool_creature` WHERE (`guid` = '21317');

DELETE FROM `creature` WHERE (`guid` = '21301');
DELETE FROM `creature` WHERE (`guid` = '21314');
DELETE FROM `creature` WHERE (`guid` = '21317');
DELETE FROM `creature` WHERE (`guid` = '21318');
DELETE FROM `creature` WHERE (`guid` = '21323');
DELETE FROM `creature` WHERE (`guid` = '21324');
DELETE FROM `creature` WHERE (`guid` = '21325');
DELETE FROM `creature` WHERE (`guid` = '21327');
DELETE FROM `creature` WHERE (`guid` = '21329');
DELETE FROM `creature` WHERE (`guid` = '21330');
DELETE FROM `creature` WHERE (`guid` = '129214');
DELETE FROM `creature` WHERE (`guid` = '129215');
DELETE FROM `creature` WHERE (`guid` = '129218');
DELETE FROM `creature` WHERE (`guid` = '129219');
DELETE FROM `creature` WHERE (`guid` = '129235');
DELETE FROM `creature` WHERE (`guid` = '129236');
DELETE FROM `creature` WHERE (`guid` = '129245');
DELETE FROM `creature` WHERE (`guid` = '129251'); -- manually added, does not seem to exist?
DELETE FROM `creature` WHERE (`guid` = '129255'); -- manually added, does not seem to exist?
DELETE FROM `creature` WHERE (`guid` = '191137'); -- manually added, does not seem to exist?
DELETE FROM `creature` WHERE (`guid` = '191138'); -- manually added, does not seem to exist?

DELETE FROM `creature_movement` WHERE (`Id` = '21301');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('21301', '0', '1', '1', '0', '0', '-6494.23681640625', '-3378.718994140625', '-85.3411483764648437', '0.0', '120', '120', '5', '0', '1', '0', '0', '1'),
('21314', '0', '1', '1', '0', '0', '-6483.38818359375', '-3227.885498046875', '-112.393814086914062', '0.0', '120', '120', '5', '0', '1', '0', '0', '1'),
('21317', '0', '1', '1', '0', '0', '-6472.31152343750', '-3243.752197265625', '-113.307891845703125', '0.0', '120', '120', '5', '0', '1', '0', '0', '1'),
('21318', '0', '1', '1', '0', '0', '-6496.54150390625', '-3241.046630859375', '-113.372131347656250', '0.0', '120', '120', '5', '0', '1', '0', '0', '1'),
('21323', '0', '1', '1', '0', '0', '-6463.60888671875', '-3299.380371093750', '-104.937652587890625', '0.0', '120', '120', '5', '0', '1', '0', '0', '1'),
('21324', '0', '1', '1', '0', '0', '-6485.84667968750', '-3254.186523437500', '-113.491607666015625', '0.0', '120', '120', '5', '0', '1', '0', '0', '1'),
('21325', '0', '1', '1', '0', '0', '-6496.03320312500', '-3325.493652343750', '-95.8035354614257812', '0.0', '120', '120', '5', '0', '1', '0', '0', '1'),
('21327', '0', '1', '1', '0', '0', '-6484.36523437500', '-3270.504882812500', '-112.494155883789062', '0.0', '120', '120', '0', '0', '1', '0', '0', '4'),
('21329', '0', '1', '1', '0', '0', '-6503.67041015625', '-3314.777832031250', '-96.8370361328125000', '0.0', '120', '120', '0', '0', '1', '0', '0', '4'),
('21330', '0', '1', '1', '0', '0', '-6510.74072265625', '-3307.183349609375', '-94.5150604248046875', '0.0', '120', '120', '5', '0', '1', '0', '0', '1');

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
('21327', '01', '-6483.77978515625', '-3272.338867187500', '-112.436500549316406', '100', '0', '0'),
('21327', '02', '-6477.99951171875', '-3289.034667968750', '-107.632736206054687', '100', '0', '0'),
('21327', '03', '-6467.70166015625', '-3297.321777343750', '-104.019233703613281', '100', '0', '0'),
('21327', '04', '-6465.71386718750', '-3309.317138671875', '-102.827171325683593', '100', '0', '0'),
('21327', '05', '-6478.56103515625', '-3320.503173828125', '-98.0991210937500000', '100', '0', '0'),
('21327', '06', '-6488.79980468750', '-3323.882080078125', '-94.5476303100585937', '100', '0', '0'),
('21329', '01', '-6504.15771484375', '-3314.493896484375', '-96.7208633422851562', '100', '0', '0'),
('21329', '02', '-6496.85839843750', '-3323.532958984375', '-96.2880477905273437', '100', '0', '0'),
('21329', '03', '-6495.17578125000', '-3334.864501953125', '-94.1529846191406250', '100', '0', '0'),
('21329', '04', '-6493.97314453125', '-3348.585693359375', '-92.5439071655273437', '100', '0', '0'),
('21329', '05', '-6495.34667968750', '-3367.548828125000', '-89.0774002075195312', '100', '0', '0'),
('21329', '06', '-6493.24072265625', '-3390.718505859375', '-81.2351150512695312', '100', '0', '0'),
('21329', '07', '-6487.62353515625', '-3414.512451171875', '-73.0745925903320312', '100', '0', '0'),
('21329', '08', '-6479.15869140625', '-3423.182128906250', '-70.6095046997070312', '100', '0', '0'),
('21329', '09', '-6470.07617187500', '-3433.211669921875', '-69.9093093872070312', '100', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
('21301', '4131'), ('21301', '4133'),
('21314', '4131'), ('21314', '4133'),
('21317', '4131'), ('21317', '4133'),
('21318', '4131'), ('21318', '4133'),
('21323', '4131'), ('21323', '4133'),
('21324', '4131'), ('21324', '4133'),
('21325', '4131'), ('21325', '4133'),
('21327', '4133'),
('21329', '4133'),
('21330', '4131'), ('21330', '4133');

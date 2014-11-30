
SET @HEARTHSINGER := '10558';
SET @GUID := '2349';
SET @POOL := '25468';

-- ---------------------------------------------

DELETE FROM `creature` WHERE `id`=@HEARTHSINGER;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 00, @HEARTHSINGER, '329', '10482', '0', '3595.755', '-3509.928', '137.5008', '5.742133', '604800', '0', '0', '6960', '0', '0', '0'),
(@GUID + 01, @HEARTHSINGER, '329', '10482', '0', '3680.273', '-3512.372', '136.1522', '2.042035', '604800', '0', '0', '6960', '0', '0', '0'),
(@GUID + 02, @HEARTHSINGER, '329', '10482', '0', '3692.933', '-3363.162', '130.7527', '3.246312', '604800', '0', '0', '6960', '0', '0', '0'),
(@GUID + 03, @HEARTHSINGER, '329', '10482', '0', '3683.747', '-3334.066', '125.3195', '3.141593', '604800', '0', '0', '6960', '0', '0', '0');

DELETE FROM `pool_template` WHERE `entry`=@POOL;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(@POOL, '1', 'Stratholme - Hearthsinger Forresten');

DELETE FROM `pool_creature` WHERE `pool_entry`=@POOL;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@GUID + 00, @POOL, '25', 'Stratholme - Hearthsinger Forresten'),
(@GUID + 01, @POOL, '25', 'Stratholme - Hearthsinger Forresten'),
(@GUID + 02, @POOL, '25', 'Stratholme - Hearthsinger Forresten'),
(@GUID + 03, @POOL, '25', 'Stratholme - Hearthsinger Forresten');

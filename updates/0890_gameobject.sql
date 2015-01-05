
SET @GUID := '44726';

 -- -------------------

SET @SHARD := '179559';
SET @MAP := '429';
SET @RESPAWN := '-1' * ('7' * '24' * '60' * '60');

DELETE FROM `gameobject` WHERE `id`=@SHARD AND `guid` BETWEEN (@GUID + '00') AND (@GUID + '04');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID + '00', @SHARD, @MAP, '275.8198', '-424.0976', '-119.9618', '0', '0', '0', '-0.8241262', '0.56640610', @RESPAWN, '0', '1'),
(@GUID + '01', @SHARD, @MAP, '274.3399', '-424.0255', '-119.9618', '0', '0', '0', '0.30901620', '0.95105680', @RESPAWN, '0', '1'),
(@GUID + '02', @SHARD, @MAP, '275.1532', '-424.8906', '-119.9618', '0', '0', '0', '-0.6494474', '0.76040640', @RESPAWN, '0', '1'),
(@GUID + '03', @SHARD, @MAP, '275.2957', '-423.4662', '-119.9618', '0', '0', '0', '-0.9816265', '0.19081240', @RESPAWN, '0', '1'),
(@GUID + '04', @SHARD, @MAP, '275.3406', '-422.5365', '-119.9618', '0', '0', '0', '0.98325440', '0.18223800', @RESPAWN, '0', '1');

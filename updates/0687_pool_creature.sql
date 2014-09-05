
SET @PANZOR := '47642';
SET @MWGOLEM := '47777';

-- ------------------------

DELETE FROM `pool_creature` WHERE `pool_entry`='25467';
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@PANZOR, '25467', '20', 'BRD - Molten War Golem / Panzor the Invincible'),
(@MWGOLEM, '25467', '80', 'BRD - Molten War Golem / Panzor the Invincible');

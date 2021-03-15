
DELETE FROM `creature` WHERE (`guid` = '88606');

UPDATE `creature` SET `position_x` = '3191.487792968750', `position_y` = '-3579.523437500000', `position_z` = '287.166870117187500', `orientation` = '3.926990747451782226' WHERE (`guid` = '88541');
UPDATE `creature` SET `position_x` = '3208.423095703125', `position_y` = '-3595.834472656250', `position_z` = '287.172210693359375', `orientation` = '3.909537553787231445' WHERE (`guid` = '88542');

UPDATE `creature` SET `position_x` = '3149.306152343750', `position_y` = '-3641.844238281250', `position_z` = '287.164520263671875', `orientation` = '0.872664630413055419' WHERE (`guid` = '88543');
UPDATE `creature` SET `position_x` = '3186.419433593750', `position_y` = '-3650.817626953125', `position_z` = '287.160583496093750', `orientation` = '1.797689080238342285' WHERE (`guid` = '88544');

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('47300', '1', 'Naxxramas - Crypt Reaver (15978)'),
('47301', '1', 'Naxxramas - Crypt Reaver (15978)');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
('88541', '47300', '0', 'Naxxramas - Crypt Reaver (15978)'),
('88542', '47300', '0', 'Naxxramas - Crypt Reaver (15978)'),
('88543', '47301', '0', 'Naxxramas - Crypt Reaver (15978)'),
('88544', '47301', '0', 'Naxxramas - Crypt Reaver (15978)');

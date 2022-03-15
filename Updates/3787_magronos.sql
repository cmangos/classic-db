
DELETE FROM `creature` WHERE (`guid` = '134341');
DELETE FROM `creature` WHERE (`guid` = '134342');
DELETE FROM `creature` WHERE (`guid` = '134343');
DELETE FROM `creature` WHERE (`guid` = '134344');
DELETE FROM `creature` WHERE (`guid` = '134345');
DELETE FROM `creature` WHERE (`guid` = '134346');
DELETE FROM `creature` WHERE (`guid` = '134347');
DELETE FROM `creature` WHERE (`guid` = '134348');
DELETE FROM `creature` WHERE (`guid` = '134349');

DELETE FROM `pool_creature_template` WHERE (`id` = '8297');
DELETE FROM `pool_template` WHERE (`entry` = '1030');

UPDATE `creature` SET `MovementType` = '4' WHERE (`guid` = '38083');

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
('38083', '01', '-11579.6054687500', '-2833.903320312500', '4.883474349975585937', '100', '0', '0'),
('38083', '02', '-11550.3593750000', '-2818.743896484375', '3.901822566986083984', '100', '0', '0'),
('38083', '03', '-11519.5976562500', '-2820.782714843750', '2.195862293243408203', '100', '0', '0'),
('38083', '04', '-11488.6494140625', '-2845.113769531250', '3.290886163711547851', '100', '0', '0'),
('38083', '05', '-11481.3798828125', '-2874.058593750000', '6.846521854400634765', '100', '0', '0'),
('38083', '06', '-11471.1054687500', '-2905.290283203125', '9.251356124877929687', '100', '0', '0');

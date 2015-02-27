-- Fixed rewards of quest 8867 (Lunar Fireworks)
-- Author: @trulynullified
-- Thanks thetrueanimal for pointing. This closes #720 
DELETE FROM `item_loot_template` WHERE `entry` IN (21740, 21743);
INSERT INTO `item_loot_template` VALUES 
('21740', '21724', '0', '1', '1', '1', '0'),
('21740', '21725', '0', '1', '1', '1', '0'),
('21740', '21726', '0', '1', '1', '1', '0'),
('21743', '21733', '0', '1', '1', '1', '0'),
('21743', '21734', '0', '1', '1', '1', '0'),
('21743', '21735', '0', '1', '1', '1', '0');

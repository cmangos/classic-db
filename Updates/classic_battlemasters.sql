-- Horde Warbringer
-- Arathi Highlands
INSERT INTO `creature` VALUES (1007530, 15350, 0, 0, 15350, -832.362, -3512.62, 72.3318, 4.55531, 25, 25, 0, 0, 2148, 0, 0, 0);
-- Alterac Mountains, moved to sniff location
UPDATE `creature` SET `position_x` = '382.498', `position_y` = '-983.076', `position_z` = '109.979', `orientation` = '2.82743' WHERE `guid` = '151178';
-- Barrens, moved to sniff location
UPDATE `creature` SET `position_x` = '1026.33', `position_y` = '-2110.51', `position_z` = '123.1', `orientation` = '5.49779' WHERE `guid` = '151179';
-- Undercity, spawned based on pics
UPDATE `creature` SET `position_x` = '1251.3', `position_y` = '314.174', `position_z` = '-63.689', `orientation` = '0.208065' WHERE `guid` = '32075';
-- Orgrimmar, moved to sniff location
UPDATE `creature` SET `position_x` = '1988.5', `position_y` = '-4812.28', `position_z` = '56.8494', `orientation` = '1.5708' WHERE `guid` = '6505';

-- Alliance Brigadier General
-- Refuge Pointe, moved to sniff location
UPDATE `creature` SET `position_x` = '-1231.22', `position_y` = '-2510.21', `position_z` = '23.1758', `orientation` = '4.36332' WHERE `guid` = '151180';
-- Alterac Mountains
INSERT INTO `creature` VALUES (1007531, 15351, 0, 0, 0, -36.7805, -316.826, 130.69, 4.7822, 25, 25, 0, 0, 3857, 0, 0, 0);
-- Ashenvale
INSERT INTO `creature` VALUES (1007532, 15351, 1, 0, 0, 1450.77, -1872.06, 126.998, 0.436332, 25, 25, 0, 0, 3857, 0, 0, 0);
-- Stormwind
UPDATE `creature` SET `position_x` = '-8441.82', `position_y` = '311.616', `position_z` = '120.886', `orientation` = '1.45789' WHERE `guid` = '14740';
-- Ironforge, moved to sniff location
UPDATE `creature` SET `position_x` = '-5042.52', `position_y` = '-1265.13', `position_z` = '510.325', `orientation` = '4.6373' WHERE `guid` = '86263';

-- Battlemasters
-- Thunderbluff
-- Arathi Basin
UPDATE `creature` SET `position_x` = '-995.143', `position_y` = '217.173', `position_z` = '104.729', `orientation` = '4.46804' WHERE `id` = '12198';

-- Stormwind
-- Warsong Gulch
UPDATE `creature` SET `position_x` = '-8454.6', `position_y` = '318.918', `position_z` = '120.886', `orientation` = '0.65759' WHERE `id` = '14981';
-- Alterac Valley
UPDATE `creature` SET `position_x` = '-8424.55', `position_y` = '342.807', `position_z` = '120.886', `orientation` = '3.80942' WHERE `id` = '7410';
-- Arathi basin
UPDATE `creature` SET `position_x` = '-8420.48', `position_y` = '328.711', `position_z` = '120.886', `orientation` = '3.06638' WHERE `id` = '15008';

-- Darnassus
-- Alterac Valley
UPDATE `creature` SET `position_x` = '9923.77', `position_y` = '2323.84', `position_z` = '1330.87', `orientation` = '1.6057' WHERE `id` = '5118';
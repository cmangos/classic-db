-- Update positions for battlemasters and PvP quest NPCs
-- Closes #231


-- Stormwind Royal Guards in Stormwind Keep updated to vanilla locations
UPDATE creature SET position_x='-8444.23', position_y='346.977', position_z='121.169', orientation='4.99164' WHERE guid='10516';
UPDATE creature SET position_x='-8431.5', position_y='345.53', position_z='121.169', orientation='4.18879' WHERE guid='10518';
UPDATE creature SET position_x='-8423.43', position_y='335.506', position_z='121.169', orientation='3.40339' WHERE guid='51984';
UPDATE creature SET position_x='-8424.72', position_y='322.64', position_z='121.169', orientation='2.61799' WHERE guid='10519';
UPDATE creature SET position_x='-8434.85', position_y='314.422', position_z='121.169', orientation='1.85005' WHERE guid='10517';
UPDATE creature SET position_x='-8447.89', position_y='315.885', position_z='121.169', orientation='1.0821' WHERE guid='10515';
UPDATE creature SET position_x='-8456', position_y='326.151', position_z='121.169', orientation='0.296706' WHERE guid='10513';
UPDATE creature SET position_x='-8454.35', position_y='339.019', position_z='121.169', orientation='5.79449' WHERE guid='10514';
-- Update Stormwind Royal Guard position to sniff
UPDATE creature SET position_x='-8531.29', position_y='438.994', position_z='105.311', orientation='0.680678' WHERE guid='10508';

-- Horde Warbringer
-- Arathi Highlands
INSERT INTO creature VALUES (1007530, 15350, 0, 0, 15350, -832.362, -3512.62, 72.3318, 4.55531, 25, 25, 0, 0, 2148, 0, 0, 0);
-- Alterac Mountains, moved to sniff location
UPDATE creature SET position_x='382.498', position_y='-983.076', position_z='109.979', orientation='2.82743' WHERE guid='151178';
-- Barrens, moved to sniff location
UPDATE creature SET position_x='1026.33', position_y='-2110.51', position_z='123.1', orientation='5.49779' WHERE guid='151179';
-- Undercity, spawned based on pics
UPDATE creature SET position_x='1251.3', position_y='314.174', position_z='-63.689', orientation='0.208065' WHERE guid='32075';
-- Orgrimmar, moved to sniff location
UPDATE creature SET position_x='1988.5', position_y='-4812.28', position_z='56.8494', orientation='1.5708' WHERE guid='6505';

-- Alliance Brigadier General
-- Refuge Pointe, moved to sniff location
UPDATE creature SET position_x='-1231.22', position_y='-2510.21', position_z='23.1758', orientation='4.36332' WHERE guid='151180';
-- Alterac Mountains
INSERT INTO creature VALUES (1007531, 15351, 0, 0, 0, -36.7805, -316.826, 130.69, 4.7822, 25, 25, 0, 0, 3857, 0, 0, 0);
-- Ashenvale
INSERT INTO creature VALUES (1007532, 15351, 1, 0, 0, 1450.77, -1872.06, 126.998, 0.436332, 25, 25, 0, 0, 3857, 0, 0, 0);
-- Stormwind
UPDATE creature SET position_x='-8441.82', position_y='311.616', position_z='120.886', orientation='1.45789' WHERE guid='14740';
-- Ironforge, moved to sniff location
UPDATE creature SET position_x='-5042.52', position_y='-1265.13', position_z='510.325', orientation='4.6373' WHERE guid='86263';

-- Battlemasters
-- Thunderbluff
-- Arathi Basin
UPDATE creature SET position_x='-995.143', position_y='217.173', position_z='104.729', orientation='4.46804' WHERE id='12198';

-- Stormwind
-- Warsong Gulch
UPDATE creature SET position_x='-8454.6', position_y='318.918', position_z='120.886', orientation='0.65759' WHERE id='14981';
-- Alterac Valley
UPDATE creature SET position_x='-8424.55', position_y='342.807', position_z='120.886', orientation='3.80942' WHERE id='7410';
-- Arathi basin
UPDATE creature SET position_x='-8420.48', position_y='328.711', position_z='120.886', orientation='3.06638' WHERE id='15008';

-- Darnassus
-- Alterac Valley
UPDATE creature SET position_x='9923.77', position_y='2323.84', position_z='1330.87', orientation='1.6057' WHERE id='5118';

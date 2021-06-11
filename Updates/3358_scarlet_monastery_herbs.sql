SET @OGUID := 1890000; -- gameobjects
SET @PGUID := 46000; -- pools

DELETE FROM gameobject WHERE guid BETWEEN @OGUID+1 AND @OGUID+23;
DELETE FROM gameobject WHERE guid BETWEEN @OGUID+141 AND @OGUID+143;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(@OGUID+1, 1624, 189, 1776.21, 1224.47, 17.5028, 1.6057, 0, 0, 0.719339, 0.694659, 86400, 86400, 100, 1), -- Kingsblood
(@OGUID+2, 1624, 189, 1746.37, 1410.68, 22.1887, 0.226892, 0, 0, 0.113203, 0.993572, 86400, 86400, 100, 1), -- Kingsblood
(@OGUID+3, 1624, 189, 1739.89, 1377.57, 17.521, -1.06465, 0, 0, -0.507538, 0.861629, 86400, 86400, 100, 1), -- Kingsblood
(@OGUID+4, 1628, 189, 1756.58, 1345.03, 19.7123, 0.174533, 0, 0, 0.0871558, 0.996195, 86400, 86400, 100, 1), -- Grave Moss
(@OGUID+5, 1628, 189, 1796.03, 1417.5, 14.4893, -2.68781, 0, 0, -0.97437, 0.22495, 86400, 86400, 100, 1), -- Grave Moss (1624 too)
(@OGUID+6, 2041, 189, 997.603, 1402.26, 27.1362, 0.401426, 0, 0, 0.199368, 0.979925, 86400, 86400, 100, 1), -- Liferoot
(@OGUID+7, 2041, 189, 120.013, -263.813, 18.5465, -2.47837, 0, 0, -0.945519, 0.325567, 86400, 86400, 100, 1), -- Liferoot
(@OGUID+8, 2042, 189, 191.442, -254.219, 18.7887, 2.00713, 0, 0, 0.843392, 0.537299, 86400, 86400, 100, 1), -- Fadeleaf
(@OGUID+9, 2042, 189, 1651.94, -371.805, 18.0233, 0.453786, 0, 0, 0.224951, 0.97437, 86400, 86400, 100, 1), -- Fadeleaf
(@OGUID+10, 2042, 189, 1651.27, -346.265, 18.1489, -1.20428, 0, 0, -0.566407, 0.824125, 86400, 86400, 100, 1), -- Fadeleaf
(@OGUID+11, 2042, 189, 166.831, -253.104, 19.0757, -0.593412, 0, 0, -0.292372, 0.956305, 86400, 86400, 100, 1), -- Fadeleaf
(@OGUID+12, 2046, 189, 914.585, 1382.04, 18.0142, 0.645772, 0, 0, 0.317305, 0.948324, 86400, 86400, 100, 1), -- Goldthorn
(@OGUID+13, 2046, 189, 1003.95, 1362.73, 27.3063, 2.75762, 0, 0, 0.981627, 0.190809, 86400, 86400, 100, 1), -- Goldthorn
(@OGUID+14, 2046, 189, 944.069, 1421.18, 18.0233, 1.37881, 0, 0, 0.636078, 0.771625, 86400, 86400, 100, 1), -- Goldthorn
(@OGUID+15, 2046, 189, 1037.43, 1401.24, 27.3085, -0.261798, 0, 0, -0.130525, 0.991445, 86400, 86400, 100, 1), -- Goldthorn
(@OGUID+16, 1624, 189, 1775.33, 1288.49, 17.5497, 3.73501, 0, 0, -0.956305, 0.292372, 86400, 86400, 100, 1), -- Kingsblood
(@OGUID+17, 1624, 189, 1818.8, 1241, 17.5499, 3.90954, 0, 0, -0.927183, 0.374608, 86400, 86400, 100, 1), -- Kingsblood
(@OGUID+18, 1624, 189, 1836.24, 1408.23, 21.7179, 2.51327, 0, 0, 0.951056, 0.309017, 86400, 86400, 100, 1), -- Kingsblood
(@OGUID+19, 2041, 189, 938.935, 1398.88, 18.34, 2.42601, 0, 0, 0.936672, 0.350207, 86400, 86400, 100, 1), -- Liferoot
(@OGUID+20, 2042, 189, 187.977, -277.975, 18.7038, 5.34071, 0, 0, -0.45399, 0.891007, 86400, 86400, 100, 1), -- Fadeleaf
(@OGUID+21, 2046, 189, 1034.54, 1368.88, 27.3046, 2.23402, 0, 0, 0.898793, 0.438373, 86400, 86400, 100, 1), -- Goldthorn
(@OGUID+22, 2046, 189, 937.827, 1377.36, 18.0233, 4.71239, 0, 0, -0.707107, 0.707107, 86400, 86400, 100, 1), -- Goldthorn
(@OGUID+23, 2046, 189, 1034.61, 1432.18, 27.3034, 6.10865, 0, 0, -0.0871553, 0.996195, 86400, 86400, 100, 1), -- Goldthorn
(@OGUID+24, 19283, 189, 277.481, -425.391, 20.0659, -1.69297, 0, 0, 0.748956, -0.66262, 300, 300, 100, 1), -- Compendium of the Fallen
(@OGUID+25, 19284, 189, 281.39, -352.262, 20.4047, -0.610865, 0, 0, 0.300706, -0.953717, 50, 50, 100, 1), -- Mythology of the Titans
(@OGUID+26, 20726, 189, 238.548, -307.686, 21.4263, 2.67035, 0, 0, 0.97237, 0.233445, 300, 300, 100, 1), -- Beginnings of the Undead Threat
(@OGUID+27, 21581, 189, 280.905, -354.204, 20.4015, 2.93215, 0, 0, 0.994522, 0.104528, 7200, 7200, 100, 1), -- Aftermath of the Second War
(@OGUID+28, 21582, 189, 244.774, -423.123, 19.8917, 2.1293, 0, 0, 0.87462, 0.48481, 7200, 7200, 100, 1), -- Beyond the Dark Portal
(@OGUID+141, 2046, 189, 1008.59, 1436.93, 27.3057, 4.62512, 0, 0, -0.737277, 0.675591, 86400, 86400, 100, 1), -- Goldthorn
(@OGUID+142, 2046, 189, 916.203, 1420.49, 17.9942, 0.244346, 0, 0, 0.121869, 0.992546, 86400, 86400, 100, 1), -- Goldthorn
(@OGUID+143, 2046, 189, 914.922, 1401.31, 18.0233, 1.15192, 0, 0, 0.544639, 0.838671, 86400, 86400, 100, 1); -- Goldthorn

DELETE FROM pool_template WHERE entry IN (@PGUID+51, @PGUID+52, @PGUID+53, @PGUID+54);
INSERT INTO pool_template (entry, max_limit, description) VALUES
(@PGUID+51, 3, 'Scarlet Monastery Graveyard - Master Herb Pool'), -- gameobject
(@PGUID+52, 1, 'Scarlet Monastery Library - Master Herb Pool'),
(@PGUID+53, 1, 'Scarlet Monastery Armory - Master Herb Pool'),
(@PGUID+54, 3, 'Scarlet Monastery Cathedral - Master Herb Pool');

DELETE FROM pool_gameobject WHERE guid BETWEEN @OGUID+1 AND @OGUID+23;
DELETE FROM pool_gameobject WHERE guid BETWEEN @OGUID+141 AND @OGUID+143;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(@OGUID+1, @PGUID+51, 0, 'Scarlet Monastery Graveyard - Kingsblood (1624)'),
(@OGUID+2, @PGUID+51, 0, 'Scarlet Monastery Graveyard - Kingsblood (1624)'),
(@OGUID+3, @PGUID+51, 0, 'Scarlet Monastery Graveyard - Kingsblood (1624)'),
(@OGUID+4, @PGUID+51, 0, 'Scarlet Monastery Graveyard - Grave Moss (1628)'),
(@OGUID+5, @PGUID+51, 0, 'Scarlet Monastery Graveyard - Grave Moss (1628)'),
(@OGUID+16, @PGUID+51, 0, 'Scarlet Monastery Graveyard - Kingsblood (1624)'),
(@OGUID+17, @PGUID+51, 0, 'Scarlet Monastery Graveyard - Kingsblood (1624)'),
(@OGUID+18, @PGUID+51, 0, 'Scarlet Monastery Graveyard - Kingsblood (1624)'),

(@OGUID+7, @PGUID+52, 0, 'Scarlet Monastery Library - Liferoot (2041)'),
(@OGUID+8, @PGUID+52, 0, 'Scarlet Monastery Library - Fadeleaf (2042)'),
(@OGUID+11, @PGUID+52, 0, 'Scarlet Monastery Library - Fadeleaf (2042)'),
(@OGUID+20, @PGUID+52, 0, 'Scarlet Monastery Library - Fadeleaf (2042)'),

(@OGUID+9, @PGUID+53, 0, 'Scarlet Monastery Armory - Fadeleaf (2042)'),
(@OGUID+10, @PGUID+53, 0, 'Scarlet Monastery Armory - Fadeleaf (2042)'),

(@OGUID+6, @PGUID+54, 0, 'Scarlet Monastery Cathedral - Liferoot (2041)'),
(@OGUID+12, @PGUID+54, 0, 'Scarlet Monastery Cathedral - Goldthorn (2046)'),
(@OGUID+13, @PGUID+54, 0, 'Scarlet Monastery Cathedral - Goldthorn (2046)'),
(@OGUID+14, @PGUID+54, 0, 'Scarlet Monastery Cathedral - Goldthorn (2046)'),
(@OGUID+15, @PGUID+54, 0, 'Scarlet Monastery Cathedral - Goldthorn (2046)'),
(@OGUID+19, @PGUID+54, 0, 'Scarlet Monastery Cathedral - Liferoot (2041)'),
(@OGUID+21, @PGUID+54, 0, 'Scarlet Monastery Cathedral - Goldthorn (2046)'),
(@OGUID+22, @PGUID+54, 0, 'Scarlet Monastery Cathedral - Goldthorn (2046)'),
(@OGUID+23, @PGUID+54, 0, 'Scarlet Monastery Cathedral - Goldthorn (2046)'),
(@OGUID+141, @PGUID+54, 0, 'Scarlet Monastery Cathedral - Goldthorn (2046)'),
(@OGUID+142, @PGUID+54, 0, 'Scarlet Monastery Cathedral - Goldthorn (2046)'),
(@OGUID+143, @PGUID+54, 0, 'Scarlet Monastery Cathedral - Goldthorn (2046)');

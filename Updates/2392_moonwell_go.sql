-- Updates to Moonwell spellfocus GO

SET @GUID := 66337;

-- Add missing spawns (source: SDB, Classic database from 2006)
DELETE FROM gameobject WHERE guid BETWEEN @GUID AND @GUID + 12;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3) VALUES 
-- Dire Maul
(@GUID, 177272, 1, -4447.88, 1409.79, 129.364, 1.64934, 0, 0, 0.734322, 0.678801),
(@GUID + 1, 177272, 1, -4446.78, 1422.18, 129.333, 1.29591, 0, 0, 0.603556, 0.797321),
(@GUID + 2, 177272, 1, -4434.14, 1432.94, 129.343, 0.518362, 0, 0, 0.256289, 0.9666),
(@GUID + 3, 177272, 1, -4433.71, 1393.45, 129.328, 3.06934, 0, 0, 0.999347, 0.0361207),
(@GUID + 4, 177272, 1, -4419.84, 1394.43, 129.34, 3.88222, 0, 0, 0.932213, -0.361909),
(@GUID + 5, 177272, 1, -4419.48, 1431.52, 129.328, 5.76718, 0, 0, 0.255151, -0.966901),
(@GUID + 6, 177272, 1, -4409.8, 1420.48, 129.333, 5.17577, 0, 0, 0.525843, -0.850581),
(@GUID + 7, 177272, 1, -4408.93, 1406.13, 129.327, 4.2333, 0, 0, 0.854685, -0.519146),
-- Feathermoon Stronghold
(@GUID + 8, 177272, 1, -4401.16, 3178.66, 17.1414, 4.11391, 0, 0, 0.884133, -0.467235),
-- Ashenvale
(@GUID + 9, 177272, 1, 1870.44, -1771.93, 62.0935, 4.2121, 0, 0, 0.860139, -0.510059),
(@GUID + 10, 177272, 1, 1870.73, -1771.51, 62.0804, 4.22781, 0, 0, 0.856107, -0.516798),
(@GUID + 11, 177272, 1, 2711.06, -1879.41, 192.855, 5.97061, 0, 0, 0.155654, -0.987812),
(@GUID + 12, 177272, 1, 2711.59, -1879.38, 192.824, 0.656589, 0, 0, 0.322429, 0.946594);

-- Homogeneise spawn time and state
UPDATE gameobject SET spawntimesecsmin=900, spawntimesecsmax=900, animprogress=100, state=1 WHERE id IN (177272, 177273, 177274, 177275, 177276, 177277, 177278, 177279, 177280, 177281);

-- Remove Moonwell spellfocus GO from Temple of Elune in Darnassus as there should not be one there (this is a sacred place, for Elune's sake!)
DELETE FROM gameobject WHERE guid=55523;

-- Make Moonwell spellfocus GOs invisible to standard players (they use easter eggs models)
UPDATE gameobject_template SET data3=1 WHERE entry IN (177272, 177273, 177274, 177275, 177276, 177277, 177278, 177279, 177280, 177281);

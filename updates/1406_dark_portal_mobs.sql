-- Added missing spawns of elite NPCs near the Dark Portal
-- Those were removed in TBC
-- This closes #8717
-- Source: http://wowwiki.wikia.com/wiki/Dark_Portal?oldid=2801382
-- Data from SDB

SET @GUID := 105971;
DELETE FROM creature WHERE guid BETWEEN @GUID + 1 AND @GUID + 25;
INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, curhealth, curmana, MovementType)
VALUES
(@GUID + 1, 8718, 0, -11891,-3199,-14, 0.175, 6300, 0, 47563,0, 0), -- Manahound
(@GUID + 2, 8717, 0, -11891,-3196,-14, 0.04,  6300, 0, 55230,0, 0), -- Felguard Elite
(@GUID + 3, 8718, 0, -11889,-3214,-14, 0.176, 6300, 0, 47563,0, 0), -- Manahound
(@GUID + 4, 8717, 0, -11888,-3216,-14, 0.304, 6300, 0, 55230,0, 0), -- Felguard Elite
(@GUID + 5, 8717, 0, -11876,-3187,-15, 0.114, 6300, 0, 55230,0, 0), -- Felguard Elite
(@GUID + 6, 8717, 0, -11871,-3222,-15, 0.134, 6300, 0, 55230,0, 0), -- Felguard Elite
(@GUID + 7, 8717, 0, -11848,-3192,-29, 0.005, 6300, 0, 55230,0, 0), -- Felguard Elite
(@GUID + 8, 8718, 0, -11848,-3186,-29, 0.092, 6300, 0, 47563,0, 0), -- Manahound
(@GUID + 9, 8717, 0, -11846,-3210,-29, 0.146, 6300, 0, 55230,0, 0), -- Felguard Elite
(@GUID + 10, 8718, 0, -11845,-3216,-29, 0.103, 6300, 0, 47563,0, 0), -- Manahound
(@GUID + 11, 8717, 0, -11830,-3226,-30, 3.899, 6300, 9, 55230,0, 1), -- Felguard Elite
(@GUID + 12, 8717, 0, -11837,-3256,-26, 1.352, 6300, 0, 55230,0, 0), -- Felguard Elite
(@GUID + 13, 8717, 0, -11813,-3186,-31, 2.646, 6300, 9, 55230,0, 1), -- Felguard Elite
(@GUID + 14, 8717, 0, -11809,-3235,-30, 1.333, 6300, 0, 55230,0, 0), -- Felguard Elite
(@GUID + 15, 8717, 0, -11819,-3144,-26, 5.63,  6300, 7, 55230,0, 1), -- Felguard Elite
(@GUID + 16, 12396,0, -11804,-3233,-30, 1.56,  6300, 0, 34350,0, 0), -- Doomguard Commander
(@GUID + 17, 8717, 0, -11799,-3237,-30, 1.756, 6300, 0, 55230,0, 0), -- Felguard Elite
(@GUID + 18, 8717, 0, -11804,-3146,-26, 4.828, 6300, 0, 55230,0, 0), -- Felguard Elite
(@GUID + 19, 12396,0, -11800,-3150,-26, 4.596, 6300, 0, 34350,0, 0), -- Doomguard Commander
(@GUID + 20, 8717, 0, -11789,-3222,-30, 4.636, 6300, 9, 55230,0, 1), -- Felguard Elite
(@GUID + 21, 8718, 0, -11791,-3168,-29, 0.462, 6300, 9, 47563,0, 1), -- Manahound
(@GUID + 22, 8717, 0, -11792,-3149,-26, 4.427, 6300, 0, 55230,0, 0), -- Felguard Elite
(@GUID + 23, 8717, 0, -11778,-3182,-29, 4.439, 6300, 9, 55230,0, 1), -- Felguard Elite
(@GUID + 24, 8718, 0, -11763,-3199,-24, 5.08,  6300, 9, 47563,0, 1), -- Manahound
(@GUID + 25, 8717, 0, -11766,-3159,-22, 0.683, 6300, 9, 55230,0, 1); -- Felguard Elite

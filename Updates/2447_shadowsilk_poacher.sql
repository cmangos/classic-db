-- Add Pathing for Shadowsilk Poacher 8442
SET @GUID := 5771;
SET @ENTRY := 8442;
UPDATE creature SET spawndist=0,MovementType=2 WHERE guid= @GUID AND id=@ENTRY;
DELETE FROM creature_movement_template WHERE entry=@ENTRY;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(@ENTRY, 1, -6468.846, -1635.523, 301.2275, 100, 0, 0),
(@ENTRY, 2, -6489.119, -1636.143, 298.4775, 100, 0, 0),
(@ENTRY, 3, -6518.35, -1653.155, 291.5102, 100, 0, 0),
(@ENTRY, 4, -6545.55, -1661.769, 285.125, 100, 0, 0),
(@ENTRY, 5, -6551.932, -1671.176, 284.117, 100, 0, 0),
(@ENTRY, 6, -6562.293, -1677.003, 280.2366, 100, 0, 0),
(@ENTRY, 7, -6578.22, -1684.93, 267.86, 100, 0, 0), -- guessed
(@ENTRY, 8, -6596.02, -1695.83, 253.79, 100, 0, 0), -- guessed
(@ENTRY, 9, -6602.05, -1709.91, 244.31, 100, 0, 0), -- guessed
(@ENTRY, 10, -6615.11, -1695.71, 244.41, 100, 0, 0), -- guessed
(@ENTRY, 11, -6619.321, -1643.252, 244.5187, 100, 0, 0),
(@ENTRY, 12, -6636.972, -1610.041, 244.5028, 100, 0, 0),
(@ENTRY, 13, -6650.8, -1566.247, 244.3535, 100, 0, 0),
(@ENTRY, 14, -6673.956, -1504.708, 242.171, 100, 0, 0),
(@ENTRY, 15, -6676.40, -1453.70, 242.63, 100, 0, 0), -- guessed
(@ENTRY, 16, -6653.335, -1414.158, 245.4394, 100, 0, 0),
(@ENTRY, 17, -6641.283, -1426.145, 251.5644, 100, 0, 0),
(@ENTRY, 18, -6617.33, -1446.81, 265.78, 100, 0, 0), -- guessed
(@ENTRY, 19, -6605.85, -1506.32, 271.12, 100, 0, 0), -- guessed
(@ENTRY, 20, -6595.96, -1566.50, 273.15, 100, 0, 0), -- guessed
(@ENTRY, 21, -6579.83, -1603.69, 276.54, 100, 0, 0), -- guessed
(@ENTRY, 22, -6565.22, -1618.90, 286.30, 100, 0, 0), -- guessed
(@ENTRY, 23, -6566.691, -1637.322, 286.6019, 100, 0, 0),
(@ENTRY, 24, -6567.835, -1645.899, 284.4769, 100, 0, 0),
(@ENTRY, 25, -6545.55, -1661.769, 285.125, 100, 0, 0),
(@ENTRY, 26, -6518.35, -1653.155, 291.5102, 100, 0, 0),
(@ENTRY, 27, -6489.119, -1636.143, 298.4775, 100, 0, 0);
-- 0xF1300020FA00B226 .go xyz -6468.846, -1635.523, 301.2275

-- Shadowsilk Poacher 8442
UPDATE creature SET modelid=0 WHERE id=8442;

DELETE FROM creature_linking WHERE master_guid=5771;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(5768, 5771, 515),
(5769, 5771, 515),
(5770, 5771, 515),
(5772, 5771, 515);

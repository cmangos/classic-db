-- Add support for C'Thun's stomach update in core

-- Add missing trigger NPC (World Trigger 15384) from sniff values
SET @GUID := 5310491;

DELETE FROM creature WHERE guid IN (@GUID, @GUID + 1);
INSERT INTO creature VALUES
(@GUID, 15384, 531, 0, 0, -8546.25, 1987.52, -96.4368, 0.331613, 604800, 604800, 0, 0, 56, 0, 0, 0),
(@GUID + 1, 15384, 531, 0, 0, -8577.317, 1988.1116, 101.22037, 0.471239, 604800, 604800, 0, 0, 56, 0, 0, 2);

DELETE FROM creature_movement WHERE id=@GUID + 1;
INSERT INTO creature_movement VALUES
(@GUID + 1, 1, -8577.909, 1985.8699, 101.47037, 0, 0, 0, NULL),
(@GUID + 1, 2, -8577.409, 1984.8699, 101.47037, 0, 0, 0, NULL),
(@GUID + 1, 3, -8576.409, 1984.3699, 101.47037, 0, 0, 0, NULL),
(@GUID + 1, 4, -8575.159, 1984.8699, 101.47037, 0, 0, 0, NULL),
(@GUID + 1, 5, -8574.409, 1985.6199, 101.47037, 0, 0, 0, NULL),
(@GUID + 1, 6, -8573.909, 1986.8699, 101.47037, 0, 0, 0, NULL),
(@GUID + 1, 7, -8574.659, 1987.6199, 101.47037, 0, 0, 0, NULL),
(@GUID + 1, 8, -8575.909, 1988.3699, 101.47037, 0, 0, 0, NULL);

-- Update template for NPC 15800 (Exit Trigger)
UPDATE creature_template SET MinLevel=60, MaxLevel=60, Faction=16, MinLevelHealth=2203, MaxLevelHealth=2203, UnitFlags=33554432 WHERE Entry=15800;

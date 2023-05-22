
DELETE FROM `creature` WHERE (`guid` IN (3911, 3937, 3939, 3940, 3941, 3942, 3943, 3944)); -- there should be 15 spawns in TBC+
DELETE FROM `creature_addon` WHERE (`guid` = 3940); -- no idea why this one exists

SET @CGUID := 140310;
SET @SGUID := 268;

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID + 000, 0, 0, 1, -11183.5703125000, -3348.032226562500, 8.228083610534667968, 1.326243877410888671, 300, 300, 45, 1), -- Blasted Lands - Redstone Basilisk | Ashmane Boar(1) Wandering 000
(@CGUID + 001, 0, 0, 1, -11186.9052734375, -3282.049804687500, 8.313661575317382812, 2.164485454559326171, 300, 300, 45, 1), -- Blasted Lands - Redstone Basilisk | Ashmane Boar(1) Wandering 001
(@CGUID + 002, 0, 0, 1, -11150.5908203125, -3315.790283203125, 4.748173713684082031, 2.364883899688720703, 300, 300, 45, 1), -- Blasted Lands - Redstone Basilisk | Ashmane Boar(1) Wandering 002
(@CGUID + 003, 0, 0, 1, -11213.4003906250, -3313.360351562500, 8.598316192626953125, 5.308971405029296875, 300, 300, 45, 1), -- Blasted Lands - Redstone Basilisk | Ashmane Boar(1) Wandering 003
(@CGUID + 004, 0, 0, 1, -11247.1171875000, -3289.826904296875, 25.29104232788085937, 5.709574222564697265, 300, 300, 45, 1), -- Blasted Lands - Redstone Basilisk | Ashmane Boar(1) Wandering 004
(@CGUID + 005, 0, 0, 1, -11250.0576171875, -3148.635986328125, 3.736725330352783203, 5.460514545440673828, 300, 300, 45, 1), -- Blasted Lands - Redstone Basilisk | Ashmane Boar(1) Wandering 005
(@CGUID + 006, 0, 0, 1, -11184.6845703125, -3216.660156250000, 9.319871902465820312, 3.200205326080322265, 300, 300, 45, 1), -- Blasted Lands - Redstone Basilisk | Ashmane Boar(1) Wandering 006
(@CGUID + 007, 0, 0, 1, -11217.0703125000, -3182.307861328125, 8.219674110412597656, 1.753100991249084472, 300, 300, 45, 1), -- Blasted Lands - Redstone Basilisk | Ashmane Boar(1) Wandering 007
(@CGUID + 008, 0, 0, 1, -11251.3134765625, -3083.353027343750, 3.612272262573242187, 3.967054367065429687, 300, 300, 45, 1), -- Blasted Lands - Redstone Basilisk | Ashmane Boar(1) Wandering 008
(@CGUID + 009, 0, 0, 1, -11216.6201171875, -3117.091552734375, 4.671710491180419921, 4.392993450164794921, 300, 300, 45, 1), -- Blasted Lands - Redstone Basilisk | Ashmane Boar(1) Wandering 009
(@CGUID + 010, 0, 0, 1, -11282.8662109375, -3115.085205078125, 3.991223335266113281, 0.944668114185333251, 300, 300, 45, 1), -- Blasted Lands - Redstone Basilisk | Ashmane Boar(1) Wandering 010
(@CGUID + 011, 0, 0, 1, -11314.9101562500, -3147.677246093750, 5.831459522247314453, 4.251431465148925781, 300, 300, 45, 1), -- Blasted Lands - Redstone Basilisk | Ashmane Boar(1) Wandering 011
(@CGUID + 012, 0, 0, 1, -11348.6835937500, -3182.680175781250, 10.31614112854003906, 3.896257877349853515, 300, 300, 45, 1); -- Blasted Lands - Redstone Basilisk | Ashmane Boar(1) Wandering 012

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(@SGUID + 000, 'Blasted Lands - Redstone Basilisk | Ashmane Boar (1) Wandering 000', 0, 0, 0, 0, 0),
(@SGUID + 001, 'Blasted Lands - Redstone Basilisk | Ashmane Boar (1) Wandering 001', 0, 0, 0, 0, 0),
(@SGUID + 002, 'Blasted Lands - Redstone Basilisk | Ashmane Boar (1) Wandering 002', 0, 0, 0, 0, 0),
(@SGUID + 003, 'Blasted Lands - Redstone Basilisk | Ashmane Boar (1) Wandering 003', 0, 0, 0, 0, 0),
(@SGUID + 004, 'Blasted Lands - Redstone Basilisk | Ashmane Boar (1) Wandering 004', 0, 0, 0, 0, 0),
(@SGUID + 005, 'Blasted Lands - Redstone Basilisk | Ashmane Boar (1) Wandering 005', 0, 0, 0, 0, 0),
(@SGUID + 006, 'Blasted Lands - Redstone Basilisk | Ashmane Boar (1) Wandering 006', 0, 0, 0, 0, 0),
(@SGUID + 007, 'Blasted Lands - Redstone Basilisk | Ashmane Boar (1) Wandering 007', 0, 0, 0, 0, 0),
(@SGUID + 008, 'Blasted Lands - Redstone Basilisk | Ashmane Boar (1) Wandering 008', 0, 0, 0, 0, 0),
(@SGUID + 009, 'Blasted Lands - Redstone Basilisk | Ashmane Boar (1) Wandering 009', 0, 0, 0, 0, 0),
(@SGUID + 010, 'Blasted Lands - Redstone Basilisk | Ashmane Boar (1) Wandering 010', 0, 0, 0, 0, 0),
(@SGUID + 011, 'Blasted Lands - Redstone Basilisk | Ashmane Boar (1) Wandering 011', 0, 0, 0, 0, 0),
(@SGUID + 012, 'Blasted Lands - Redstone Basilisk | Ashmane Boar (1) Wandering 012', 0, 0, 0, 0, 0);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@SGUID + 000, @CGUID + 000, 0, 0),
(@SGUID + 001, @CGUID + 001, 0, 0),
(@SGUID + 002, @CGUID + 002, 0, 0),
(@SGUID + 003, @CGUID + 003, 0, 0),
(@SGUID + 004, @CGUID + 004, 0, 0),
(@SGUID + 005, @CGUID + 005, 0, 0),
(@SGUID + 006, @CGUID + 006, 0, 0),
(@SGUID + 007, @CGUID + 007, 0, 0),
(@SGUID + 008, @CGUID + 008, 0, 0),
(@SGUID + 009, @CGUID + 009, 0, 0),
(@SGUID + 010, @CGUID + 010, 0, 0),
(@SGUID + 011, @CGUID + 011, 0, 0),
(@SGUID + 012, @CGUID + 012, 0, 0);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 000, 5990, 0, 0, 0), (@SGUID + 000, 5992, 0, 0, 0),
(@SGUID + 001, 5990, 0, 0, 0), (@SGUID + 001, 5992, 0, 0, 0),
(@SGUID + 002, 5990, 0, 0, 0), (@SGUID + 002, 5992, 0, 0, 0),
(@SGUID + 003, 5990, 0, 0, 0), (@SGUID + 003, 5992, 0, 0, 0),
(@SGUID + 004, 5990, 0, 0, 0), (@SGUID + 004, 5992, 0, 0, 0),
(@SGUID + 005, 5990, 0, 0, 0), (@SGUID + 005, 5992, 0, 0, 0),
(@SGUID + 006, 5990, 0, 0, 0), (@SGUID + 006, 5992, 0, 0, 0),
(@SGUID + 007, 5990, 0, 0, 0), (@SGUID + 007, 5992, 0, 0, 0),
(@SGUID + 008, 5990, 0, 0, 0), (@SGUID + 008, 5992, 0, 0, 0),
(@SGUID + 009, 5990, 0, 0, 0), (@SGUID + 009, 5992, 0, 0, 0),
(@SGUID + 010, 5990, 0, 0, 0), (@SGUID + 010, 5992, 0, 0, 0),
(@SGUID + 011, 5990, 0, 0, 0), (@SGUID + 011, 5992, 0, 0, 0),
(@SGUID + 012, 5990, 0, 0, 0), (@SGUID + 012, 5992, 0, 0, 0);
